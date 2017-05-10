inherited frmAROutstandingReport: TfrmAROutstandingReport
  Left = 320
  Top = 177
  Width = 673
  Height = 377
  Caption = 'AR Outstanding Report'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbTooltop: TLabel
    Width = 817
    Align = alNone
    Caption = 'Specify Month/Year of VAT/ Option(0--only vat, 1 for all)'
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 817
    Height = 33
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 272
      Height = 13
      Caption = 'Specify Month/Year of VAT/ Option(0--only vat, 1 for all)'
    end
    object cxSpinMonth: TcxSpinEdit
      Left = 304
      Top = 8
      Properties.MaxValue = 12.000000000000000000
      Properties.MinValue = 1.000000000000000000
      TabOrder = 0
      Value = 1
      Width = 65
    end
    object cxSpinYear: TcxSpinEdit
      Left = 376
      Top = 8
      Properties.MaxValue = 2099.000000000000000000
      Properties.MinValue = 2013.000000000000000000
      TabOrder = 1
      Value = 2013
      Width = 65
    end
    object cxSpinFlag: TcxSpinEdit
      Left = 448
      Top = 8
      Properties.MaxValue = 1.000000000000000000
      TabOrder = 2
      Width = 65
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 302
    Width = 817
  end
  inherited Panel1: TPanel
    Top = 193
    Width = 817
    Height = 109
    object Memo1: TMemo
      Left = 248
      Top = 8
      Width = 153
      Height = 41
      Lines.Strings = (
        'User ID:30347090170000'
        'Password: 86120990')
      TabOrder = 2
    end
    object cxHyperLinkEdit1: TcxHyperLinkEdit
      Left = 408
      Top = 8
      Properties.UsePrefix = upNever
      TabOrder = 3
      Text = 'https://rdserver.rd.go.th/publish/sub_index.php?page=01&login=30'
      Width = 217
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 817
    Height = 160
    DisableThemes = False
    Selected.Strings = (
      'PURCHASETAX_AMOUNT'#9'10'#9'PURCHASETAX_AMOUNT'#9#9
      'PURCHASEBASE_AMOUNT'#9'10'#9'PURCHASEBASE_AMOUNT'#9#9
      'SALETAX_AMOUNT'#9'10'#9'SALETAX_AMOUNT'#9#9
      'SALEBASE_AMOUNT'#9'10'#9'SALEBASE_AMOUNT'#9#9
      'REVENUE_AMOUNT'#9'10'#9'REVENUE_AMOUNT'#9#9
      'TAXDIFF_AMOUNT'#9'10'#9'TAXDIFF_AMOUNT'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSource
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object DataSource: TDataSource
    DataSet = AccountReceiveDM.qryRevenue
    Left = 312
    Top = 64
  end
end
