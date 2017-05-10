unit APInvoiceManagerForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar;

type
  TfrmAPInvoiceManager = class(TcxAbstractDataBrowse)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAPInvoiceManager: TfrmAPInvoiceManager;

implementation

{$R *.dfm}

end.
