unit AROutstandingReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialogReportForm, StdCtrls, Buttons, ExtCtrls, fcStatusBar,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, DB,
  Grids, Wwdbigrd, Wwdbgrid,dialogutils, cxHyperLinkEdit;

type
  TfrmAROutstandingReport = class(TBaseReportDialog)
    wwDBGrid1: TwwDBGrid;
    DataSource: TDataSource;
    Panel2: TPanel;
    cxSpinMonth: TcxSpinEdit;
    cxSpinYear: TcxSpinEdit;
    cxSpinFlag: TcxSpinEdit;
    Label1: TLabel;
    Memo1: TMemo;
    cxHyperLinkEdit1: TcxHyperLinkEdit;
    procedure btDesignPreviewClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAROutstandingReport: TfrmAROutstandingReport;

implementation
uses accountReceiveDataModule;

{$R *.dfm}

procedure TfrmAROutstandingReport.btDesignPreviewClick(Sender: TObject);
begin
  //inherited;   \
    try
     AccountReceiveDM.qryRevenue.close;
     AccountReceiveDM.qryRevenue.ParamByName('pyear').value :=cxSpinYear.Value;
     AccountReceiveDM.qryRevenue.ParamByName('pmonth').value :=cxSpinMonth.Value;
     AccountReceiveDM.qryRevenue.ParamByName('pflag').value :=cxSpinFlag.Value;
     AccountReceiveDM.qryRevenue.Open;
    except on e:exception do
       errorEx('Query Error'+e.Message) ;
    end;
end;

procedure TfrmAROutstandingReport.FormCreate(Sender: TObject);
begin
  inherited;
  datasource.DataSet := AccountReceiveDM.qryRevenue;
end;

procedure TfrmAROutstandingReport.FormShow(Sender: TObject);
begin
  inherited;
   self.Refresh;
end;

end.
