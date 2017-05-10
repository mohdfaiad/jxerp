object frmSaleOrderTrack: TfrmSaleOrderTrack
  Left = 232
  Top = 177
  Width = 964
  Height = 481
  Caption = 'Sale Order Tracking Window'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxSpreadSheet1: TcxSpreadSheet
    Left = 191
    Top = 0
    Width = 757
    Height = 443
    Align = alClient
    DefaultStyle.Font.Name = 'MS Sans Serif'
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clWindowText
    HeaderFont.Height = -11
    HeaderFont.Name = 'MS Sans Serif'
    HeaderFont.Style = []
  end
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 191
    Height = 443
    Align = alLeft
    Date = 41285.538272847230000000
    TabOrder = 1
    OnClick = MonthCalendar1Click
  end
end
