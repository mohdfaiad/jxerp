inherited frmCreditor: TfrmCreditor
  Left = 300
  Top = 197
  Width = 868
  Height = 485
  Caption = 'AP Creditor/PO Supplier Setup'
  PixelsPerInch = 120
  TextHeight = 16
  object Label2: TLabel [0]
    Left = 23
    Top = 35
    Width = 93
    Height = 16
    Caption = 'Creditor Code:'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 423
    Width = 860
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
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
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited ToolBar: TToolBar
    Width = 860
  end
  inherited mainPanel: TPanel
    Width = 860
    Height = 394
    Font.Name = 'Tahoma'
    object Label1: TLabel
      Left = 14
      Top = 15
      Width = 79
      Height = 16
      Caption = 'Creditor Acct:'
    end
    object Label3: TLabel
      Left = 14
      Top = 37
      Width = 38
      Height = 16
      Caption = 'Name:'
    end
    object Label4: TLabel
      Left = 207
      Top = 13
      Width = 41
      Height = 16
      Caption = 'CType:'
    end
    object Label5: TLabel
      Left = 14
      Top = 102
      Width = 62
      Height = 16
      Caption = 'Address 1:'
    end
    object Label6: TLabel
      Left = 14
      Top = 134
      Width = 62
      Height = 16
      Caption = 'Address 2:'
    end
    object Label7: TLabel
      Left = 14
      Top = 163
      Width = 62
      Height = 16
      Caption = 'Address 3:'
    end
    object Label8: TLabel
      Left = 14
      Top = 208
      Width = 65
      Height = 16
      Caption = 'Telephone:'
    end
    object Label9: TLabel
      Left = 259
      Top = 210
      Width = 29
      Height = 16
      Caption = 'Fax :'
    end
    object Label10: TLabel
      Left = 14
      Top = 73
      Width = 73
      Height = 16
      Caption = 'Short Name:'
    end
    object Label11: TLabel
      Left = 275
      Top = 70
      Width = 56
      Height = 16
      Caption = 'CR Term:'
    end
    object Label12: TLabel
      Left = 443
      Top = 45
      Width = 103
      Height = 16
      Caption = 'Tax Registred No:'
    end
    object Label13: TLabel
      Left = 655
      Top = 13
      Width = 60
      Height = 16
      Caption = 'Currency :'
    end
    object Label17: TLabel
      Left = 14
      Top = 182
      Width = 53
      Height = 16
      Caption = 'Province:'
    end
    object Label18: TLabel
      Left = 258
      Top = 182
      Width = 58
      Height = 16
      Caption = 'PostCode:'
    end
    object Label19: TLabel
      Left = 14
      Top = 239
      Width = 71
      Height = 16
      Caption = 'Local Name:'
    end
    object Label20: TLabel
      Left = 14
      Top = 268
      Width = 91
      Height = 16
      Caption = 'Local Address1:'
    end
    object Label21: TLabel
      Left = 14
      Top = 299
      Width = 91
      Height = 16
      Caption = 'Local Address2:'
    end
    object Label22: TLabel
      Left = 14
      Top = 330
      Width = 91
      Height = 16
      Caption = 'Local Address3:'
    end
    object Label23: TLabel
      Left = 443
      Top = 15
      Width = 56
      Height = 16
      Caption = 'Tax Rate:'
    end
    object edAccountCode: TcxDBTextEdit
      Left = 110
      Top = 11
      DataBinding.DataField = 'CREDITOR_ACCT'
      DataBinding.DataSource = dataSource
      TabOrder = 0
      Width = 89
    end
    object cbType: TcxDBLookupComboBox
      Left = 258
      Top = 11
      DataBinding.DataField = 'CREDITOR_TYPE'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'CREDITOR_TYPE'
      Properties.ListColumns = <
        item
          FieldName = 'CREDITOR_TYPE'
        end
        item
          FieldName = 'DESCS'
        end>
      Properties.ListSource = dsCreditorTypeLookup
      TabOrder = 1
      Width = 179
    end
    object cbTax: TcxDBLookupComboBox
      Left = 522
      Top = 11
      DataBinding.DataField = 'TAX_CD'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'TAX_CD'
      Properties.ListColumns = <
        item
          FieldName = 'TAX_CD'
        end
        item
          FieldName = 'TAX_RATE'
        end>
      Properties.ListSource = dsTaxLookup
      TabOrder = 2
      Width = 89
    end
    object edCRTerm: TcxDBTextEdit
      Left = 362
      Top = 64
      DataBinding.DataField = 'CREDIT_TERM'
      DataBinding.DataSource = dataSource
      TabOrder = 3
      Width = 41
    end
    object edProvince: TcxDBTextEdit
      Left = 110
      Top = 176
      DataBinding.DataField = 'PROVINCE'
      DataBinding.DataSource = dataSource
      TabOrder = 4
      Width = 147
    end
    object cbCurrency: TcxDBLookupComboBox
      Left = 720
      Top = 11
      DataBinding.DataField = 'CURRENCY_CODE'
      DataBinding.DataSource = dataSource
      Properties.KeyFieldNames = 'CURRENCY_CODE'
      Properties.ListColumns = <
        item
          FieldName = 'CURRENCY_CODE'
        end
        item
          FieldName = 'BASE_RATE'
        end>
      Properties.ListSource = dsCurrencyLookup
      TabOrder = 5
      Width = 70
    end
    object edPostCode: TcxDBTextEdit
      Left = 335
      Top = 176
      DataBinding.DataField = 'POSTCODE'
      DataBinding.DataSource = dataSource
      TabOrder = 6
      Width = 106
    end
    object edTel: TcxDBTextEdit
      Left = 110
      Top = 202
      DataBinding.DataField = 'TELPHONE'
      DataBinding.DataSource = dataSource
      TabOrder = 7
      Width = 147
    end
    object edFax: TcxDBTextEdit
      Left = 295
      Top = 202
      DataBinding.DataField = 'FAX_NO'
      DataBinding.DataSource = dataSource
      TabOrder = 8
      Width = 146
    end
    object edTaxReg: TcxDBTextEdit
      Left = 651
      Top = 41
      DataBinding.DataField = 'TAX_REGISTED_NO'
      DataBinding.DataSource = dataSource
      TabOrder = 9
      Width = 139
    end
    object cxGroupBox1: TcxGroupBox
      Left = 446
      Top = 69
      Caption = 'Letter Head Preview:'
      ParentColor = False
      Style.BorderColor = clWhite
      Style.Color = clWhite
      TabOrder = 10
      Height = 277
      Width = 343
      object Label14: TLabel
        Left = 19
        Top = 30
        Width = 67
        Height = 16
        Caption = 'Customer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 19
        Top = 98
        Width = 59
        Height = 16
        Caption = 'Address:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 30
        Top = 49
        Width = 247
        Height = 21
        DataField = 'NAME'
        DataSource = dataSource
      end
      object DBText2: TDBText
        Left = 30
        Top = 69
        Width = 247
        Height = 21
        DataField = 'TH_NAME'
        DataSource = dataSource
      end
      object DBText3: TDBText
        Left = 30
        Top = 118
        Width = 247
        Height = 21
        DataField = 'ADDRESS1'
        DataSource = dataSource
      end
      object DBText4: TDBText
        Left = 30
        Top = 138
        Width = 237
        Height = 21
        DataField = 'ADDRESS2'
        DataSource = dataSource
      end
      object DBText5: TDBText
        Left = 30
        Top = 158
        Width = 237
        Height = 20
        DataField = 'ADDRESS3'
        DataSource = dataSource
      end
      object DBText6: TDBText
        Left = 30
        Top = 177
        Width = 80
        Height = 21
        DataField = 'PROVINCE'
        DataSource = dataSource
      end
      object DBText7: TDBText
        Left = 128
        Top = 177
        Width = 149
        Height = 21
        DataField = 'POSTCODE'
        DataSource = dataSource
      end
    end
    object edName: TcxDBTextEdit
      Left = 110
      Top = 38
      DataBinding.DataField = 'NAME'
      DataBinding.DataSource = dataSource
      TabOrder = 15
      Width = 331
    end
    object edShortName: TcxDBTextEdit
      Left = 110
      Top = 64
      DataBinding.DataField = 'SHORT_NAME'
      DataBinding.DataSource = dataSource
      TabOrder = 14
      Width = 159
    end
    object edAddr1: TcxDBTextEdit
      Left = 110
      Top = 90
      DataBinding.DataField = 'ADDRESS1'
      DataBinding.DataSource = dataSource
      TabOrder = 13
      Width = 333
    end
    object edAddr2: TcxDBTextEdit
      Left = 110
      Top = 119
      DataBinding.DataField = 'ADDRESS2'
      DataBinding.DataSource = dataSource
      TabOrder = 12
      Width = 333
    end
    object edAddr3: TcxDBTextEdit
      Left = 110
      Top = 147
      DataBinding.DataField = 'ADDRESS3'
      DataBinding.DataSource = dataSource
      TabOrder = 11
      Width = 333
    end
    object edLocalName: TcxDBTextEdit
      Left = 110
      Top = 235
      DataBinding.DataField = 'TH_NAME'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 333
    end
    object edLAddr1: TcxDBTextEdit
      Left = 110
      Top = 264
      DataBinding.DataField = 'TH_ADDR1'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 17
      Width = 333
    end
    object edLAddr2: TcxDBTextEdit
      Left = 110
      Top = 292
      DataBinding.DataField = 'TH_ADDR2'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 333
    end
    object edLAddr3: TcxDBTextEdit
      Left = 110
      Top = 321
      DataBinding.DataField = 'TH_ADDR3'
      DataBinding.DataSource = dataSource
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'BrowalliaUPC'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 333
    end
  end
  inherited ImageIconList: TImageList
    Left = 376
    Top = 16
  end
  inherited dataSource: TDataSource
    DataSet = MasterSetupDM.tbAPCreditor
  end
  object dsCurrencyLookup: TDataSource
    DataSet = MasterSetupDM.tbCurrency
    Left = 288
    Top = 32
  end
  object dsCreditorTypeLookup: TDataSource
    DataSet = MasterSetupDM.tbApCreditorType
    Left = 352
    Top = 16
  end
  object dsTaxLookup: TDataSource
    DataSet = MasterSetupDM.tbTax
    Left = 416
    Top = 8
  end
end
