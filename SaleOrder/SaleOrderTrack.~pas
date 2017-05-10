unit SaleOrderTrack;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxSSheet, ComCtrls;

type
  TfrmSaleOrderTrack = class(TForm)
    cxSpreadSheet1: TcxSpreadSheet;
    MonthCalendar1: TMonthCalendar;
    procedure MonthCalendar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaleOrderTrack: TfrmSaleOrderTrack;

implementation

{$R *.dfm}

procedure TfrmSaleOrderTrack.MonthCalendar1Click(Sender: TObject);
begin
   cxSpreadSheet1.LoadFromFile('saleOrderTrack.xls');
end;

end.
