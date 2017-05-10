unit APInvoiceForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseCXMasterDetail, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  fcStatusBar, ComCtrls, ToolWin, ExtCtrls, StdCtrls;

type
  TfrmAPInvoice = class(TBaseCXUIMasterDetailForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAPInvoice: TfrmAPInvoice;

implementation

{$R *.dfm}

end.
