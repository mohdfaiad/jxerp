unit ReceiptBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataBrowse, DB, StdCtrls, Buttons, ExtCtrls, Grids,
  Wwdbigrd, Wwdbgrid, fcStatusBar,dialogutils, Menus, cxPC, cxControls;

type
  TReceiptBrowseForm = class(TAbstractDataBrowseForm)
    mReportQuery: TMemo;
    btReceiptWizard: TButton;
    cxPageControl1: TcxPageControl;
    cxTabSheetReceipt: TcxTabSheet;
    cxTabSheetInvoice: TcxTabSheet;
    wwDBGridInvoice: TwwDBGrid;
    DataSourceInvoice: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure cxPageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure doEditAction(Sender:TObject);override;
    procedure doNewAction(Sender:TObject); override;
    procedure doPostAction(Sender:TObject);override;
    procedure doDeleteAction(Sender:TObject);override;
    procedure setupDataSets;   override ;
    procedure doReportFilter(SENDER:TOBJECT);override;
  end;

var
  ReceiptBrowseForm: TReceiptBrowseForm;

implementation
uses AccountReceiveDataModule,receiptEntry,runtimecontroller,
  ReportDataModule;

{$R *.dfm}


procedure TReceiptBrowseForm.setupDataSets;
begin
  datasource.dataset:=  AccountReceiveDM.qryUnpostReceipt;
  datasourceInvoice.DataSet :=      AccountReceiveDM.qryOutstandingInvoice;
  datasourceInvoice.DataSet.Open;
end;


procedure TReceiptBrowseForm.doEditAction(Sender:TObject);
begin
  ReceiptForm := TReceiptForm.create(SELF,fSelectedObject,'DOC_NO',1);
  ReceiptForm.reportId:=reportID;
  ReceiptForm.queryString :=queryString;
  ReceiptForm.frxReport :=ReportDM.frxReport;
  ReceiptForm.show;
 // ReceiptForm.Free;
 // self.Handle
 //
end;
procedure TReceiptBrowseForm.doNewAction(Sender:TObject);
begin
   ReceiptForm := TReceiptForm.create(SELF,fSelectedObject,'DOC_NO',0);
   ReceiptForm.reportId:=reportID;
   ReceiptForm.queryString :=queryString;
   ReceiptForm.frxReport :=ReportDM.frxReport;
   ReceiptForm.Show;

end;
procedure TReceiptBrowseForm.doPostAction(Sender:TObject);

begin
   with datasource.DataSet do
   begin
   fsuccess :=  AccountReceiveDM.postarreceipt(fieldbyname('doc_no').asstring,
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
procedure TReceiptBrowseForm.doDeleteAction(Sender:TObject);
begin
//
end;



procedure TReceiptBrowseForm.doReportFilter(SENDER:TOBJECT);
begin
   designable :=true;
   reportdm.JXQuery.close;
   reportdm.JXNativeQuery.Close;
   reportdm.JXNativeQuery.SQL.Clear;
   reportdm.JXNativeQuery.SQL.Text:=queryString; //assign
   reportdm.JXNativeQuery.Prepare   ;
   Reportdm.JXNativeQuery.ParamByName('PDOCNO').Value :=fSelectedObject;
   reportdm.JXNativeQuery.Open;
   reportdm.JXQuery.open;
   showReport(reportdm.frxReport);

end;


procedure TReceiptBrowseForm.FormCreate(Sender: TObject);
begin
  inherited;
  btPrint.Visible :=TRUE;
  designable :=true;
  Grid.Parent :=cxTabSheetReceipt;
  Grid.Top :=    cxTabSheetReceipt.Top;
  Grid.Align :=alClient;
  cxPageControl1.ActivePage := cxTabSheetReceipt;
end;

procedure TReceiptBrowseForm.cxPageControl1Change(Sender: TObject);
begin
   //enable wizard button when user start to match invoice to Receipt
   if (cxPageControl1.ActivePage = cxTabSheetInvoice) then
      btReceiptWizard.Enabled := true
      else      btReceiptWizard.enabled := false;
end;

end.
