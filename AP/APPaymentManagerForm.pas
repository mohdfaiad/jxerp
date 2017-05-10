unit APPaymentManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles,  cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  StdCtrls, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxBar, Menus, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid,  fcStatusBar,dialogutils;

type
  TfrmAPPaymentManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewTRX_TYPE: TcxGridDBColumn;
    cxGridDBTableViewCREDITOR_ACCT: TcxGridDBColumn;
    cxGridDBTableViewREF_NO: TcxGridDBColumn;
    cxGridDBTableViewREF_DATE: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    mReportQuery: TMemo;
    cxGridDBTableViewColumn1: TcxGridDBColumn;
    cxGridDBTableViewColumn2: TcxGridDBColumn;
    cxGridDBTableViewColumn3: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure setupdatasets ;override;
    PROCEDURE doReportFilter(SENDER:TOBJECT);override;

    procedure doNewAction(sender:TObject);override;
    procedure doEditAction(sender:TObject);override;
    procedure doPostAction(sender:TObject);override;



    procedure initcomponent;

  end;

var
  frmAPPaymentManager: TfrmAPPaymentManager;

implementation

USES AccountPayableDataModule,reportdatamodule,APPAYMENTFORM,
  AbstractDataBrowse;


{$R *.dfm}

procedure  TfrmAPPaymentManager.initcomponent;
begin
     btPrint.Visible :=true;
      designable:=TRUE;
end;

procedure TfrmAPPaymentManager.setupdatasets;
begin
   datasource.dataset := AccountPayableDM.qryUnpostAPPayment;

end;


procedure TfrmAPPaymentManager.doReportFilter(SENDER:TOBJECT);
begin
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


procedure TfrmAPPaymentManager.doNewAction(sender:TObject);
begin
    frmAPPayment := TFrmAPPayment.create(self,fselectedObject,'DOC_NO',0);
    frmAPPayment.reportId := reportID;
    frmAPPayment.queryString:=querysTRING;
    frmAPPayment.Show;
end;

procedure TfrmAPPaymentManager.doEditAction(sender:TObject);
begin
    frmAPPayment := TFrmAPPayment.create(self,fselectedObject,'DOC_NO',1);
    frmAPPayment.reportId := reportID;
    frmAPPayment.queryString:=querysTRING;
    frmAPPayment.queryString := queryString;
    frmAPPayment.Show;
end;

procedure TfrmAPPaymentManager.doPostAction(SENDER:TObject);
begin
   fsuccess := AccountPayableDM.postPayment(datasource.DataSet.FieldByName('DOC_NO').AsString,
   datasource.DataSet.Fieldbyname('doc_date').asDateTime);
   if (fsuccess) then begin
    info('Successful posted'+fSelectedObject);
     doRefreshAction(sender);

   end;
end;

procedure TfrmAPPaymentManager.FormCreate(Sender: TObject);
begin
  inherited;
  initcomponent;
end;

end.
