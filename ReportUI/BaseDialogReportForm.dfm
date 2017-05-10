inherited BaseReportDialog: TBaseReportDialog
  Left = 301
  Top = 242
  Width = 535
  Height = 338
  Caption = 'Base Report Dialog'
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 13
  object lbTooltop: TLabel [0]
    Left = 0
    Top = 0
    Width = 519
    Height = 13
    Align = alTop
    Caption = 'Tooltip text'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clInfoText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  inherited StatusBar1: TfcStatusBar
    Top = 280
    Width = 519
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        Text = 'Report ID:'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        Text = 'Query Params'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
        OnDblClick = StatusBar1Panels1DblClick
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 239
    Width = 519
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object btDesignPreview: TBitBtn
      Left = 8
      Top = 8
      Width = 91
      Height = 25
      TabOrder = 0
      OnClick = btDesignPreviewClick
      Kind = bkOK
    end
    object btCancel: TBitBtn
      Left = 160
      Top = 8
      Width = 81
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
