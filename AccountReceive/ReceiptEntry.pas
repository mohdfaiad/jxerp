Unit ReceiptEntry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMasterDetail, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,
  fcStatusBar, wwdblook, Wwdbdlg, wwdbdatetimepicker, StdCtrls, Mask,
  wwdbedit, wwSpeedButton, wwDBNavigator, wwclearpanel, DBCtrls, Buttons,
  cxControls, cxContainer, cxEdit, cxCheckBox, cxDBEdit, ComCtrls, wwriched;

type
  TReceiptForm = class(TBaseUIMasterDetailForm)
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1First: TwwNavButton;
    wwDBNavigator1PriorPage: TwwNavButton;
    wwDBNavigator1Prior: TwwNavButton;
    wwDBNavigator1Next: TwwNavButton;
    wwDBNavigator1NextPage: TwwNavButton;
    wwDBNavigator1Last: TwwNavButton;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    wwDBNavigator1Cancel: TwwNavButton;
    wwDBNavigator1Refresh: TwwNavButton;
    wwDBNavigator1SaveBookmark: TwwNavButton;
    wwDBNavigator1RestoreBookmark: TwwNavButton;
    plNavigatorDetail: TPanel;
    wwDBNavigator2: TwwDBNavigator;
    wwDBNavigator2First: TwwNavButton;
    wwDBNavigator2Next: TwwNavButton;
    wwDBNavigator2Last: TwwNavButton;
    wwDBNavigator2Insert: TwwNavButton;
    wwDBNavigator2Delete: TwwNavButton;
    wwDBNavigator2Edit: TwwNavButton;
    wwDBNavigator2Post: TwwNavButton;
    wwDBNavigator2Cancel: TwwNavButton;
    wwDBNavigator2Refresh: TwwNavButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edDocNo: TwwDBEdit;
    edDocDate: TwwDBDateTimePicker;
    edDesc: TwwDBEdit;
    dlgDebtor: TwwDBLookupComboDlg;
    dlgBank: TwwDBLookupComboDlg;
    edDebtorName: TwwDBEdit;
    edBankName: TwwDBEdit;
    edChequeNo: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    dlgInvoice: TwwDBLookupComboDlg;
    dlgTrxType: TwwDBLookupCombo;
    DBText1: TDBText;
    Label9: TLabel;
    sbtPrint: TSpeedButton;
    mReportQuery: TMemo;
    cxDBCheckBox1: TcxDBCheckBox;
    wwDBRichEdit1: TwwDBRichEdit;
    Label10: TLabel;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure sbtPrintClick(Sender: TObject);
    procedure dsDetailDataChange(Sender: TObject; Field: TField);
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
  private
    requireReference:boolean;
    { Private declarations }
    procedure repaintGrid;
  public
    { Public declarations }
     procedure filterTransactionType;
     procedure initComponents;override;
     procedure setupdatasets;override;
     procedure doReportFilter(sender:TObject);override;
  end;

var
  ReceiptForm: TReceiptForm;

implementation
uses AccountReceiveDataModule, ReportDataModule;

{$R *.dfm}

procedure TReceiptForm.setupdatasets;
begin
   dsMaster.DataSet :=AccountReceiveDM.tbReceiptHD;
   dsDetail.DataSet :=AccountReceiveDM.tbReceiptDT;
end;

procedure TReceiptForm.FormCreate(Sender: TObject);
begin
  inherited;
  activeControl:=edDocNo;
  dlgInvoice.lookuptable :=AccountReceiveDM.qryUnmatchedInvoice;
  dlgInvoice.lookuptable.Open;
end;

procedure TReceiptForm.filterTransactionType;
begin
    dlgTrxType.LookupTable.FilterED:=false;
    dlgTrxType.LookupTable.Filter:='Default_Module='+QuotedStr(DEFAULT_MODULE)+ ' AND MODE='+QuotedStr(RECEIPT_MODE);
    dlgTrxType.LookupTable.FilterED:=true;
end;

procedure  TReceiptForm.initComponents;
begin
  filterTransactionType;
end;

procedure TReceiptForm.wwDBGrid1Enter(Sender: TObject);
begin
  inherited;
  dlgInvoice.lookuptable.close;
  dlgInvoice.lookuptable.open;
end;

procedure TReceiptForm.sbtPrintClick(Sender: TObject);
begin
  inherited;
  doPrintPreview(sender);
end;

procedure TReceiptForm.doReportFilter(sender:TObject);
begin
   reportdm.JXQuery.close;
   reportdm.JXNativeQuery.Close;
   reportdm.JXNativeQuery.SQL.Clear;
   reportdm.JXNativeQuery.SQL.Text:=queryString; //assign
   reportdm.JXNativeQuery.Prepare   ;
   Reportdm.JXNativeQuery.ParamByName('PDOCNO').Value :=dsMaster.dataset.FieldByName('doc_no').AsString;
   reportdm.JXNativeQuery.Open;
   reportdm.JXQuery.open;
end;

procedure TReceiptForm.dsDetailDataChange(Sender: TObject; Field: TField);
begin
  if (dsMaster.DataSet.FieldByName('REQUIRE_REFERENCE').AsString ='N') then
  begin
  //  wwDBGrid1.ColumnByName('INV_NO').
  //end else
  //begin
  end;

end;
procedure TReceiptForm.repaintGrid;
begin

  if (dtsMaster.Active ) and (requireReference = false) then
  begin
    // dlgLookupIndirectSaleItem.Visible :=true;
     //lookupDeliveryOrderItem.Visible:=false;
     wwDBGrid1.SetControlType('INV_NO',fctNone,''); //set null control
    // wwDBGrid1.SetControlType('ORDER_NO',fctCustom,'dlgInvoice;F');
    end
  else
  begin
    wwDBGrid1.SetControlType('INV_NO',fctCustom,'dlgInvoice;F');
  end;
end;
procedure TReceiptForm.dsMasterDataChange(Sender: TObject; Field: TField);
begin
   requireReference := (dsMaster.DataSet.FieldByName('REQUIRE_REFERENCE').AsString='Y');
   repaintGrid;
end;

end.
