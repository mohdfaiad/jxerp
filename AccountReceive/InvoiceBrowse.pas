unit InvoiceBrowse;
                                                     { TODO 5 -otinnarat -cAR Invoie Manager : --Add function Gen invoie to receipt }
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,dialogutils, Menus, frxDCtrl, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TInvoiceBrowseForm = class(TAbstractDataBrowseForm)
    mReportQuery: TMemo;
    frxDialogControls1: TfrxDialogControls;
    cxGrid: TcxGrid;
    cxGridDBTableView: TcxGridDBTableView;
    cxGridLevel: TcxGridLevel;
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    cxGridDBTableViewDEBT_NAME: TcxGridDBColumn;
    cxGridDBTableViewCREDIT_TERM: TcxGridDBColumn;
    cxGridDBTableViewDUE_DATE: TcxGridDBColumn;
    cxGridDBTableViewUPDATE_USER: TcxGridDBColumn;
    cxGridDBTableViewDEBTOR_ACCT: TcxGridDBColumn;
    cxGridDBTableViewTRX_TYPE: TcxGridDBColumn;
    cxGridDBTableViewTAX_INV_NO: TcxGridDBColumn;
    cxGridDBTableViewTAX_INV_DATE: TcxGridDBColumn;
    cxGridDBTableViewREMARK: TcxGridDBColumn;
    cxGridDBTableViewSTATUS: TcxGridDBColumn;
    cxGridDBTableViewRECEIPT_STATUS: TcxGridDBColumn;
    cxGridDBTableViewNO_OF_PRINT: TcxGridDBColumn;
    cxGridDBTableViewUPDATE_DATE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupDataSets;  override;
    procedure doReportFilter(Sender:TObject);override;
  end;

var
  InvoiceBrowseForm: TInvoiceBrowseForm;

implementation
uses AccountReceiveDataModule,invoiceEntry,runtimecontroller,
  ReportDataModule;

{$R *.dfm}
procedure TInvoiceBrowseForm.setupDataSets;
begin
  datasource.dataset:=  AccountReceiveDM.qryUnpostInvoice;
end;


procedure TInvoiceBrowseForm.doEditAction(Sender:TObject);
begin
  InvoiceForm := TInvoiceForm.create(SELF,fSelectedObject,'DOC_NO',1);
  InvoiceForm.reportId :=reportID;
  InvoiceForm.queryString :=queryString   ;
  InvoiceForm.frxReport :=reportdm.frxReport;
  InvoiceForm.Show;
 // InvoiceForm.Free;
 // self.Handle
 //
end;
procedure TInvoiceBrowseForm.doNewAction(Sender:TObject);
begin
  InvoiceForm := TInvoiceForm.create(SELF,fSelectedObject,'DOC_NO',0);
  InvoiceForm.reportId :=reportID;
  InvoiceForm.queryString :=queryString   ;
  InvoiceForm.frxReport :=reportdm.frxReport;
  InvoiceForm.Show;
  doRefreshAction(sender);
end;
procedure TInvoiceBrowseForm.doPostAction(Sender:TObject);

begin
   with datasource.DataSet do
   begin
   fsuccess :=  AccountReceiveDM.postArInvoice(fieldbyname('doc_no').asstring,
   fieldbyname('doc_date').asDateTime,
   fieldbyname('debtor_acct').asstring);

    if (fsuccess) then
    BEGIN
     info('successful posted '+vartostr(fSelectedObject)+' Press F5 TO refresh window') ;
     RController.commit;
    END
  else
    warning('failed to post '+vartostr(fSelectedObject));
 end;
end;
procedure TInvoiceBrowseForm.doDeleteAction(Sender:TObject);
begin
//
end;

procedure TInvoiceBrowseForm.FormCreate(Sender: TObject);
begin
  inherited;
  printable:=true;
  designable :=true;
  btPrint.visible:= printable;
 // tPrint.visible:= printable;
end;



procedure TInvoiceBrowseForm.doReportFilter(SENDER:TOBJECT);
begin
   reportdm.JXQuery.close;
   reportdm.JXNativeQuery.Close;
   reportdm.JXNativeQuery.SQL.Clear;
   reportdm.JXNativeQuery.SQL.Text:=queryString;
   reportdm.JXNativeQuery.Prepare   ;
   Reportdm.JXNativeQuery.ParamByName('PDOCNO').Value :=fSelectedObject;
   reportdm.JXNativeQuery.Open;
   reportdm.JXQuery.open;
   showReport(reportdm.frxReport);

end;

end.
