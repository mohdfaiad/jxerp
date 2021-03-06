unit StockEnquiry;
 {
 
 }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, StdCtrls, ExtCtrls, ComCtrls, Grids,
  Wwdbigrd, Wwdbgrid, DB, Buttons, ActnList, XPStyleActnCtrls, ActnMan,IBQuery,
  Mask, wwdbedit, Wwdotdot, wwdblook, ImgList, ToolWin;


type TQUERYTHREAD = class (TTHREAD)
   private
     FQueryForm:TForm;
     fbysupplier,fbyStockCode,fbyStockDes,fbyLotNo:boolean ;
     fquery:String;
     procedure executeQuery;
   protected
    procedure Execute; override;
   public

    // constructor Create(AQueryForm: TForm);overload;
     constructor Create(AQueryForm: TForm;bysupplier,byStockCode,byStockDes,byLotNo:boolean);overload;
 END;

type
  TStockEnquiryForm = class(TBaseUIForm)
    PageControl1: TPageControl;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label1: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edStockDescs: TEdit;
    Label2: TLabel;
    edLotNo: TEdit;
    Label3: TLabel;
    PurchaseGrid: TwwDBGrid;
    ReceiveGrid: TwwDBGrid;
    TabSheet4: TTabSheet;
    reservedGrid: TwwDBGrid;
    dsPO: TDataSource;
    dsGRN: TDataSource;
    TabSheet5: TTabSheet;
    dsReserved: TDataSource;
    dsOnhand: TDataSource;
    OnhandGrid: TwwDBGrid;
    Panel2: TPanel;
    Bevel2: TBevel;
    Splitter1: TSplitter;
    StockGrid: TwwDBGrid;
    dsPurchaseHeader: TDataSource;
    GroupBox1: TGroupBox;
    edSupplier: TEdit;
    ActionManager1: TActionManager;
    actQueryExecute: TAction;
    Memo1: TMemo;
    edStockCode: TMaskEdit;
    cbSupplierEnable: TCheckBox;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Bevel3: TBevel;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    btSelectSupplier: TSpeedButton;
    ImageList1: TImageList;
    procedure FormDestroy(Sender: TObject);
    procedure actQueryExecuteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure StockGridAfterDrawCell(Sender: TwwCustomDBGrid;
      DrawCellInfo: TwwCustomDrawGridCellInfo);
    procedure edStockCodeExit(Sender: TObject);
    procedure btSelectSupplierClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    QueryThread:TQUERYTHREAD;
    fdateDate:TDateTime;
    fstockCode,fstockDecs,flotNo,fSupplier,fActivePO:String;
    function inputValidate:boolean;
    procedure ActiveDataSets(active:boolean);
    procedure initComponents;
  public

    { Public declarations }
  end;



var
  StockEnquiryForm: TStockEnquiryForm;

implementation
uses StockEnquiryDM,selectCustomer;


{$R *.dfm}


constructor TQueryThread.Create(AQueryForm: TForm;bysupplier,byStockCode,byStockDes,byLotNo:boolean);
begin

   FQueryForm :=  AQueryForm;
   FreeOnTerminate := True;
   Suspended :=false;
   fbysupplier:=bysupplier;
   fbyStockCode:=byStockCode;
   fbyStockDes:=byStockDes;
   fbyLotNo:=byLotNo;
   inherited Create(False);
   Resume;

end;

procedure TStockEnquiryForm.initComponents;
begin
   // edLotDate.DateTime :=Now - 30; //set defaul date to last 30 days
    PageControl1.ActivePage :=TabSheet1;//set active page to order informaton
    statusBar1.Panels[0].Width:='250';

    //init grid options
   // StockGrid.Options:=[dgRowSelect];
    //ReceiveGrid.Options:=[dgRowSelect];
    //OnhandGrid.Options:=[dgRowSelect];
    //reservedGrid.Options:=[dgRowSelect];
end;
procedure  TStockEnquiryForm.ActiveDataSets(active:boolean);
var i:integer;
begin
 for i:=0 to ComponentCount -1 do
 begin
   if (components[i] is TDataSource) then
   begin
       IF ( TDataSource(components[i]).DataSet <>nil) then
         TDataSource(components[i]).DataSet.active:=active;
   end;
 end;

end;
function TStockEnquiryForm.inputValidate:boolean;
begin
   if (edLotNo.text='') and (edStockCode.text='') and (edStockDescs.Text='')  then
    begin
         MessageDlg('Invalide input supplied',mtWarning,[mbCancel],0);
         result:=false;
    end
    else
    begin
    if (edLotNo.Text ='') then
    begin
      if (edStockCode.text<>'') or (edStockDescs.Text<>'') then
      begin
          result:=true;
      end
      else if  (edSupplier.Text='') then
      begin
          if (edStockCode.text='') and (edStockDescs.Text='') then
          begin
              MessageDlg('Specify supplier infor must specify also stock information',mtWarning,[mbCancel],0);
              result:=false;
          end
          else result:=true;
      end;
    end ;

    result:=true;
  end;



end;




{retrieve by supplier must spacify lotDate/itemCode or itemDescs}
procedure TQUERYTHREAD. executeQuery;
var dataSet:TIBQuery;
begin

      StockEnquiryForm.StatusBar1.Panels[1].Text :='Exeucting Query....Please wait';
      Screen.Cursor:=crSQLWait;
      dataSet := StockEnquriyDM.qryPurchaseHeader;

      dataSet.active:=false;
      //commit pending
      StockEnquriyDM.COMMIT;
      dataSet.SQL.Text:=fquery;
    try
      dataSet.active:=true;
    except on e:EOSError do
       MessageDlg('Failed:execute query '+#13+fquery+#13+'Message=['+e.Message+']',mtError,[mbCancel],0);
    end;
   // except on e:EOSError do
     //  MessageDlg('OS Error '+e.Message,mtError,[mbCancel],0);
    //end;
    //Only when master has record then active childs else warning
    if (dataSet.RecordCount >0) then
    begin
      TStockEnquiryForm(FQueryForm).ActiveDataSets(TRUE);
    end
    else
    begin
      MessageDlg('No record found.',mtWarning,[mbCancel],0);
      
    end;
    StockEnquiryForm.StatusBar1.Panels[1].Text :='READY';
   Screen.Cursor:=crDefault;

end;
procedure TQUERYTHREAD.execute;
var mainQuery:String;
   lotNo,stockCode,supplier,stockDescs:String;
   purchaseDate:TDateTime;
begin
  mainQuery:=''; //init text
  fquery:='';
 try
   screen.Cursor :=crSQLWait;

 if (fbyLotNo) then
 begin
      lotNo:=TStockEnquiryForm(FQueryForm).edLotNo.Text;
    //  purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.Date;
     mainQuery := 'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and po_order_dt.order_no = '+QuotedStr(lotNo) +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');

 end
 else if (fbysupplier ) then
 begin
       supplier:= TStockEnquiryForm(FQueryForm).edSupplier.Text;
    //   purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.DateTime;
       mainQuery :=  'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and po_supplier.name LIKE '+QuotedStr('%'+supplier+'%') +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');

    if (fbyStockDes) then
       begin
        stockDescs:=TStockEnquiryForm(FQueryForm).edStockDescs.Text;
       // purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.DateTime;
         mainQuery :=  'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and ic_mat_stk_hd.en_descs like '+QuotedStr('%'+stockDescs+'%') +#13+
        ' and po_supplier.name LIKE '+QuotedStr('%'+supplier+'%') +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');
   end
   else if (fbyStockCode) then
   begin
       stockCode:=TStockEnquiryForm(FQueryForm).edStockCode.Text;
       // purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.DateTime;
         mainQuery :=  'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and ic_mat_stk_hd.Stock_cd like '+QuotedStr(stockCode) +#13+
        ' and po_supplier.name LIKE '+QuotedStr('%'+supplier+'%') +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');

   end;


   end
   else   if (fbyStockDes) then
       begin
        stockDescs:=TStockEnquiryForm(FQueryForm).edStockDescs.Text;
       // purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.DateTime;
         mainQuery :=  'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and ic_mat_stk_hd.en_descs like '+QuotedStr('%'+stockDescs+'%') +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');
   end
   else if (fbyStockCode) then
   begin
       stockCode:=TStockEnquiryForm(FQueryForm).edStockCode.Text;
       // purchaseDate:= TStockEnquiryForm(FQueryForm).edLotDate.DateTime;
         mainQuery :=  'select po_order_hd.order_no, '+ #13+
        'po_order_hd.order_date,po_order_hd.delivery_date,po_order_hd.supp_code,name ,ic_mat_stk_dt_link.onhand_qty,'+
        ' ic_mat_stk_dt_link.reserved_qty,ic_mat_stk_dt_link.UNIT_COST  ,ic_mat_stk_hd.en_descs as item_descs'+#13+
        ' from PO_ORDER_HD ,PO_SUPPLIER    , po_order_dt ,ic_mat_stk_hd   , ic_mat_stk_dt_link '+#13+
        'WHERE PO_ORDER_HD.supp_code = PO_SUPPLIER.supplier_cd '+#13+
        ' AND PO_ORDER_HD.status<>'+quotedStr('C')+#13+
        ' and po_order_dt.order_no = po_order_hd.order_no '+#13+
        ' and po_order_dt.supp_code = po_supplier.supplier_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_hd.stock_cd '+#13+
        ' and po_order_dt.item_code = ic_mat_stk_dt_link.stock_cd' +#13+
        ' and po_order_dt.order_date = ic_mat_stk_dt_link.purchase_date '+#13+
        ' and po_order_dt.order_no = ic_mat_stk_dt_link.lot_cd '+#13+
        ' and ic_mat_stk_dt_link.onhand_qty>0 ' +#13+
        ' and ic_mat_stk_hd.Stock_cd like '+QuotedStr(stockCode) +#13+
        ' and po_order_HD.order_DATE >= '+QuotedStr('1/1/2006');

   end;

 if (mainQuery<>'') then
 begin
   fquery :=mainQuery;
  //memo1.lines.
  //StockEnquiryForm.Memo1.Lines.Clear;
 // StockEnquiryForm.Memo1.Lines.Text:=mainQuery;
  //StockEnquiryForm.Update;
 // showMessage(mainQuery);
  Synchronize(executeQuery);
 end;
 finally

    screen.Cursor:=crDefault;

 end;

end;

procedure TStockEnquiryForm.FormDestroy(Sender: TObject);
begin
if (QueryThread <> nil) then
begin
   QueryThread.Terminate;
   QueryThread.Free;
end;

end;

procedure TStockEnquiryForm.actQueryExecuteExecute(Sender: TObject);
var isUsedStockCode, isUsedStockDescs,
    isUsedSup,isUsedLot:boolean;
begin
 if (TRUE) then
 begin
  ActiveDataSets(FALSE);
  isUsedStockCode:=(edStockCode.Text<>'') ;
  isUsedStockDescs:=(edStockDescs.Text<>'');
  isUsedSup:=(edSupplier.Text<>'') and (cbSupplierEnable.Checked);
  isUsedLot:=(edLotNo.text<>'');
  //Create(AQueryForm: TForm;bysupplier,byStockCode,byStockDes,byLotNo:boolean);
  TQUERYTHREAD.Create(StockEnquiryForm,isUsedSup,isUsedStockCode,isUsedStockDescs,isUsedLot);
  //queryThread.Resume; //run thread
 end
 else
 begin
   showmessage('invalid input');
 end;


end;

procedure TStockEnquiryForm.FormCreate(Sender: TObject);
begin
  inherited;
  initComponents;
end;

procedure TStockEnquiryForm.PageControl1Change(Sender: TObject);
var pageText:String;

begin
 // index :=
  case PageControl1.TabIndex of
    // purchase detail
       0: pageText :='Purchase Order Detail';
       1: pageText :='Goods Received Detail';
       2: pageText :='Stock Reserved Detail';
       3: pageText :='Onhand Detail';

       else pageText:='No default active view';
  end;
 statusBar1.Panels[1].Text:=  pageText;
end;

procedure TStockEnquiryForm.StockGridAfterDrawCell(Sender: TwwCustomDBGrid;
  DrawCellInfo: TwwCustomDrawGridCellInfo);
begin
  fActivePO:= dsPurchaseHeader.DataSet.FieldByName('order_no').AsString;
  statusBar1.Panels[0].Text:='Current Purchase No:['+ fActivePO +']';

end;

procedure TStockEnquiryForm.edStockCodeExit(Sender: TObject);
var validText:String;
begin
   if (edStockCode.Text<>'') then
   begin
     validText := edStockCode.Text;
    
   end;
end;

procedure TStockEnquiryForm.btSelectSupplierClick(Sender: TObject);
begin
   try
      SelectSupplierForm :=TSelectSupplierForm.Create(self);
      SelectSupplierForm.ShowModal;
   finally
      edSupplier.text :=  SelectSupplierForm.getSelectedSupplier;
      SelectSupplierForm.Free;
   end;

end;

procedure TStockEnquiryForm.ToolButton3Click(Sender: TObject);
begin
  inherited;
  close;
end;

end.
