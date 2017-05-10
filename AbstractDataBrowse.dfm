inherited AbstractDataBrowseForm: TAbstractDataBrowseForm
  Left = 453
  Top = 298
  Width = 679
  Height = 396
  Caption = 'Abstract Databrowse Form'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 338
    Width = 663
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  object Grid: TwwDBGrid
    Left = 0
    Top = 0
    Width = 663
    Height = 298
    DisableThemes = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = GridRowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = datasource
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnKeyPress = GridKeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 663
    Height = 40
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnDblClick = Panel1DblClick
    object newButton: TBitBtn
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = 'New'
      TabOrder = 0
    end
    object editButton: TBitBtn
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 1
    end
    object postButton: TBitBtn
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Post'
      TabOrder = 2
    end
    object cancelButton: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 3
    end
    object btPrint: TButton
      Left = 496
      Top = 8
      Width = 91
      Height = 25
      Caption = 'Print'
      TabOrder = 4
      Visible = False
      OnClick = btPrintClick
    end
  end
  object datasource: TDataSource
    OnDataChange = datasourceDataChange
    Left = 504
    Top = 32
  end
  object PopupMenu1: TPopupMenu
    Left = 304
    Top = 104
    object Refresh1: TMenuItem
      Caption = 'Refresh'
      ShortCut = 116
      OnClick = Refresh1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Search1: TMenuItem
      Caption = 'Search'
      ShortCut = 113
    end
  end
end
