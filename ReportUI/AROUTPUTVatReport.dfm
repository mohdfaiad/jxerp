inherited frmAROutputVatReport: TfrmAROutputVatReport
  Left = 416
  Top = 166
  Width = 516
  Height = 449
  Caption = 'AR Output Vat Report'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbTooltop: TLabel
    Width = 500
    Caption = 'AR Output Vat Report.Spacific start date and end date'
  end
  object Label1: TLabel [1]
    Left = 72
    Top = 32
    Width = 54
    Height = 13
    Caption = 'From Date:'
  end
  object Label2: TLabel [2]
    Left = 72
    Top = 72
    Width = 42
    Height = 13
    Caption = 'To Date:'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 391
    Width = 500
  end
  inherited Panel1: TPanel
    Top = 350
    Width = 500
    TabOrder = 3
    inherited btDesignPreview: TBitBtn
      Left = 88
    end
    inherited btCancel: TBitBtn
      Left = 200
    end
    object cbNativeQuery: TCheckBox
      Left = 320
      Top = 16
      Width = 97
      Height = 17
      Hint = 
        'if this checked. it will by pass param and using pure query inst' +
        'ead.'
      Caption = 'Ignore Param'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object DateTimePicker1: TDateTimePicker
    Left = 160
    Top = 32
    Width = 121
    Height = 21
    Date = 41529.453186099530000000
    Time = 41529.453186099530000000
    TabOrder = 1
  end
  object DateTimePicker2: TDateTimePicker
    Left = 160
    Top = 64
    Width = 121
    Height = 21
    Date = 41529.453232685180000000
    Time = 41529.453232685180000000
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 0
    Top = 249
    Width = 500
    Height = 101
    Align = alBottom
    Lines.Strings = (
      '')
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 99
    Width = 500
    Height = 150
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ReportDM.JXNativeQuery
    Left = 360
    Top = 96
  end
end
