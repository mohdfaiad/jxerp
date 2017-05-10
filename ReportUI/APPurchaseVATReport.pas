unit APPurchaseVATReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AROUTPUTVatReport, DB, Grids, DBGrids, StdCtrls, ComCtrls,
  Buttons, ExtCtrls, fcStatusBar;

type
  TfrmAPPurchaseVatReport = class(TfrmAROutputVatReport)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAPPurchaseVatReport: TfrmAPPurchaseVatReport;

implementation

{$R *.dfm}

end.
