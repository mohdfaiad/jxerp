unit ARLedgerInquiry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, fcStatusBar,menulogic,dialogutils;

type
  TfrmDebtorLedgerInquiry = class(TBaseUIForm)
  private
    { Private declarations }
  public
    { Public declarations }
    
    constructor create(Aowner:TComponent;mmenu:TMatchedMenuItem);overload;
  end;

var
  frmDebtorLedgerInquiry: TfrmDebtorLedgerInquiry;

implementation


constructor TfrmDebtorLedgerInquiry.create(Aowner:TComponent;mmenu:TMatchedMenuItem);

begin
  inherited create(Aowner);
end;

{$R *.dfm}

end.
