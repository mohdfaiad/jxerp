unit APPaymentForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls, cxMemo, cxDBEdit,
  wwdblook, Wwdbdlg, cxMaskEdit, cxDropDownEdit, cxCalendar, cxControls,
  cxContainer, cxEdit, cxTextEdit, wwriched, DBCtrls;

type
  TfrmAPPayment = class(TBaseCXUIMasterDetailForm)
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    wwDBLookupComboDlg2: TwwDBLookupComboDlg;
    cxDBTextEdit4: TcxDBTextEdit;
    wwDBLookupComboDlg3: TwwDBLookupComboDlg;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    dlgTaxLookup: TwwDBLookupComboDlg;
    dlgWHTaxLookup: TwwDBLookupComboDlg;
    wwDBRichEdit1: TwwDBRichEdit;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure setupdatasets;override;
  end;

var
  frmAPPayment: TfrmAPPayment;

implementation

uses AccountPayableDatamodule,commonShareDataModule;
{$R *.dfm}



procedure TfrmAPPayment.setupdatasets;
begin
   dsMaster.DataSet := AccountPayableDM.tbPaymentHD;
   dsDetail.DataSet := AccountPayableDM.tbPaymentDT;
   CommonShareDM.TransactionType.Filter:='DEFAULT_MODULE='+QuotedStr('AP');
   CommonShareDM.TransactionType.Filtered:=true;

end;


end.
