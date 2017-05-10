unit AROUTPUTVatReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar, ComCtrls, Grids, DBGrids, DB, StdCtrls,baseDialogReportForm,
  Buttons, ExtCtrls;

type
  TfrmAROutputVatReport = class(TBaseReportDialog)
    DataSource1: TDataSource;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    cbNativeQuery: TCheckBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure doReportFilter(Sender:TObject);override;
  end;

var
  frmAROutputVatReport: TfrmAROutputVatReport;

implementation
uses reportDatamodule;

{$R *.dfm}

procedure TfrmAROutputVatReport.FormCreate(Sender: TObject);
begin
  inherited;
  datasource1.DataSet := ReportDM.JXNativeQuery;
  DateTimePicker2.DateTime :=now;
  memo1.Lines.Text := queryString;
end;

procedure TfrmAROutputVatReport.doReportFilter(Sender:TObject);
var dateStr:string;
begin

  try
     frxReport := reportDM.frxReport; //set report instance
     reportdm.JXNativeQuery.Close;
     reportdm.JXNativeQuery.SQL.Text :='';
     //by
     if (cbNativeQuery.Checked) then
      reportdm.JXNativeQuery.SQL.Text :=memo1.Lines.Text
     else
     begin
       reportdm.JXNativeQuery.SQL.Text := queryString;
       //Try to assign value to param.asDate  instead of param.AsDateTime :
       reportdm.JXNativeQuery.ParamByName('pFromDate').AsDate:= DateTimePicker1.Date;
       reportdm.JXNativeQuery.ParamByName('pToDate').asDate  :=DateTimePicker2.Date;
     end;
     reportdm.JXNativeQuery.open;
 except on e:exception do
       ShowMessage(e.Message);
  end;
end;

end.
