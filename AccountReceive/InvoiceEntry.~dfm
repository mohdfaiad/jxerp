inherited InvoiceForm: TInvoiceForm
  Left = 339
  Top = 224
  Width = 852
  Height = 613
  Caption = 'Account Receive Invoice'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 313
    Width = 836
  end
  inherited StatusBar1: TfcStatusBar
    Top = 555
    Width = 836
    Font.Charset = THAI_CHARSET
    Font.Name = 'Tahoma'
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
        Width = '200'
      end
      item
        Component = DBText1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Style = psControl
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    ParentFont = False
    object DBText1: TDBText
      Left = 203
      Top = 3
      Width = 614
      Height = 16
      DataField = 'BATHTEXT'
      DataSource = dsMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'BrowalliaUPC'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited panel1: TPanel
    Top = 316
    Width = 836
    Height = 239
    inherited wwDBGrid1: TwwDBGrid
      Top = 33
      Width = 834
      Height = 205
      ControlType.Strings = (
        'DELIVERY_NO;CustomEdit;lookupDeliveryOrder;T'
        'ORDER_NO;CustomEdit;lookupDeliveryOrderItem;T')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'#No'#9#9
        'DELIVERY_NO'#9'13'#9'DELIVERY NO'#9#9
        'DELIVERY_DATE'#9'10'#9'DELIVERY DATE'#9#9
        'PURCHASE_NO'#9'13'#9'PURCHASE NO'#9#9
        'PURCHASE_DATE'#9'14'#9'PURCHASE DATE'#9#9
        'ORDER_NO'#9'11'#9'ORDER NO'#9#9
        'ORDER_DATE'#9'10'#9'ORDER DATE'#9#9
        'ITEM_CODE'#9'4'#9'Alloy'#9#9
        'ITEM_DESCS'#9'15'#9'Alloy Spec.'#9#9
        'DESCS'#9'18'#9'Remark'#9#9
        'QTY'#9'10'#9'Deliverd Qty'#9#9
        'UNIT_COST'#9'10'#9'UNIT COST'#9#9
        'BASE_AMT'#9'10'#9'BASE AMT'#9#9
        'TAX_RATE'#9'10'#9'TAX RATE'#9#9
        'TAX_AMT'#9'10'#9'TAX_AMT'#9#9
        'DOC_AMT'#9'15'#9'DOC AMT'#9#9)
      Font.Charset = THAI_CHARSET
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnDblClick = wwDBGrid1DblClick
      OnUpdateFooter = wwDBGrid1UpdateFooter
      OnBeforePaint = wwDBGrid1BeforePaint
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 834
      Height = 32
      Align = alTop
      BevelInner = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object wwDBNavigator1: TwwDBNavigator
        Left = 2
        Top = 2
        Width = 250
        Height = 28
        DataSource = dsDetail
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        Align = alLeft
        object wwDBNavigator1First: TwwNavButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwDBNavigator1Prior: TwwNavButton
          Left = 25
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPrior
        end
        object wwDBNavigator1Next: TwwNavButton
          Left = 50
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsNext
        end
        object wwDBNavigator1Last: TwwNavButton
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsLast
        end
        object wwDBNavigator1Insert: TwwNavButton
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsInsert
        end
        object wwDBNavigator1Delete: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsDelete
        end
        object wwDBNavigator1Edit: TwwNavButton
          Left = 150
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsEdit
        end
        object wwDBNavigator1Post: TwwNavButton
          Left = 175
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsPost
        end
        object wwDBNavigator1Cancel: TwwNavButton
          Left = 200
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsCancel
        end
        object wwDBNavigator1Refresh: TwwNavButton
          Left = 225
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator1Refresh'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsRefresh
        end
      end
      object ToolBar1: TToolBar
        Left = 257
        Top = -1
        Width = 77
        Height = 29
        Align = alNone
        ButtonHeight = 25
        ButtonWidth = 25
        Caption = 'ToolBar1'
        Images = ImageList1
        TabOrder = 1
        object ToolButton1: TToolButton
          Left = 0
          Top = 2
          Hint = 'Detail Edit'
          Caption = 'ToolButton1'
          ImageIndex = 0
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton1Click
        end
        object ToolButton3: TToolButton
          Left = 25
          Top = 2
          Width = 8
          Caption = 'ToolButton3'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object ToolButton2: TToolButton
          Left = 33
          Top = 2
          Hint = 'Show Calculator'
          Caption = 'ToolButton2'
          ImageIndex = 1
          ParentShowHint = False
          ShowHint = True
          OnClick = ToolButton2Click
        end
      end
    end
    object lookupDeliveryOrder: TwwDBLookupComboDlg
      Tag = -1
      Left = 640
      Top = 8
      Width = 17
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DELIVERY_NO'#9'15'#9'DELIVERY_NO'#9#9
        'DELIVERY_DATE'#9'18'#9'DELIVERY_DATE'#9#9)
      DataField = 'DELIVERY_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryUnmatchedDeliveryOrder
      LookupField = 'DELIVERY_NO'
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object lookupDeliveryOrderItem: TwwDBLookupComboDlg
      Tag = -1
      Left = 616
      Top = 8
      Width = 17
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
        'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9)
      DataField = 'ORDER_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryDeliveryOrderItem
      LookupField = 'ORDER_NO'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object dlgLookupIndirectSaleItem: TwwDBLookupComboDlg
      Tag = -1
      Left = 664
      Top = 8
      Width = 17
      Height = 21
      TabStop = False
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Indirect Sale Items'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'ORDER_NO'#9'15'#9'ORDER_NO'#9#9
        'ORDER_DATE'#9'18'#9'ORDER_DATE'#9#9
        'REF_NO'#9'15'#9'REF_NO'#9'F'#9
        'REF_DATE'#9'18'#9'REF_DATE'#9'F'#9
        'ITEM_CODE'#9'15'#9'ITEM_CODE'#9'F'#9
        'ITEM_DESCS'#9'60'#9'ITEM_DESCS'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'QTY'#9'10'#9'QTY'#9#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9'F'#9)
      DataField = 'ORDER_NO'
      DataSource = dsDetail
      LookupTable = AccountReceiveDM.qryIndirectSaleOrderItem
      LookupField = 'ORDER_NO'
      Color = clWhite
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      UseTFields = False
    end
  end
  inherited plHeader: TPanel
    Width = 836
    Height = 280
    object Label1: TLabel
      Left = 16
      Top = 22
      Width = 55
      Height = 13
      Caption = 'Invoice No:'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 65
      Height = 13
      Cursor = crHandPoint
      Caption = 'Invoice Date:'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnDblClick = Label2DblClick
    end
    object Label3: TLabel
      Left = 34
      Top = 116
      Width = 37
      Height = 13
      Caption = 'Debtor:'
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = Label3Click
    end
    object Label4: TLabel
      Left = 40
      Top = 139
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label5: TLabel
      Left = 22
      Top = 162
      Width = 49
      Height = 13
      Caption = 'CR/TERM:'
    end
    object Label6: TLabel
      Left = 132
      Top = 127
      Width = 32
      Height = 13
      Caption = '(Days)'
    end
    object Label7: TLabel
      Left = 224
      Top = 128
      Width = 49
      Height = 13
      Caption = 'Due Date:'
    end
    object Label8: TLabel
      Left = 14
      Top = 90
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label10: TLabel
      Left = 23
      Top = 185
      Width = 48
      Height = 13
      Caption = 'Currency:'
    end
    object Label11: TLabel
      Left = 246
      Top = 148
      Width = 27
      Height = 13
      Caption = 'Rate:'
    end
    object Label12: TLabel
      Left = 5
      Top = 69
      Width = 66
      Height = 13
      Caption = 'Invoice Type:'
    end
    object Label9: TLabel
      Left = 31
      Top = 204
      Width = 40
      Height = 13
      Caption = 'Remark:'
    end
    object Label13: TLabel
      Left = 32
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Ref No:'
    end
    object Label14: TLabel
      Left = 216
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Ref Date:'
    end
    object dlgDebtor: TwwDBLookupComboDlg
      Left = 80
      Top = 108
      Width = 120
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Debtor'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'NAME'#9'60'#9'NAME'#9#9
        'DEBTOR_ACCT'#9'10'#9'DEBTOR ACCT'#9#9)
      DataField = 'DEBTOR_ACCT'
      DataSource = dsMaster
      LookupTable = AccountReceiveDM.qryDebtor
      LookupField = 'DEBTOR_ACCT'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit1: TwwDBEdit
      Left = 80
      Top = 131
      Width = 310
      Height = 21
      Color = clBtnFace
      DataField = 'DEBT_NAME'
      DataSource = dsMaster
      Enabled = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edDocNo: TwwDBEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 21
      DataField = 'DOC_NO'
      DataSource = dsMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edDocDate: TwwDBDateTimePicker
      Left = 280
      Top = 16
      Width = 112
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DOC_DATE'
      DataSource = dsMaster
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object wwDBEdit3: TwwDBEdit
      Left = 80
      Top = 154
      Width = 50
      Height = 21
      Color = clBtnFace
      DataField = 'CREDIT_TERM'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 280
      Top = 154
      Width = 111
      Height = 21
      Color = clBtnFace
      DataField = 'DUE_DATE'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object deDescs: TwwDBEdit
      Left = 80
      Top = 85
      Width = 311
      Height = 21
      DataField = 'DESCS'
      DataSource = dsMaster
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 80
      Top = 177
      Width = 51
      Height = 21
      Color = clBtnFace
      DataField = 'CURRENCY_CODE'
      DataSource = dsMaster
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edCurrRate: TwwDBEdit
      Left = 280
      Top = 177
      Width = 111
      Height = 21
      DataField = 'CURRENCY_RATE'
      DataSource = dsMaster
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dlgTrxType: TwwDBLookupCombo
      Left = 80
      Top = 63
      Width = 121
      Height = 21
      DisableThemes = False
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TRX_TYPE'#9'2'#9'Trx Type'#9'F'
        'DESCRIPTION'#9'60'#9'Description'#9'F')
      DataField = 'TRX_TYPE'
      DataSource = dsMaster
      LookupTable = AccountReceiveDM.tbTransactionType
      LookupField = 'TRX_TYPE'
      Navigator = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
    end
    object mReportQuery: TMemo
      Left = 432
      Top = 7
      Width = 401
      Height = 266
      Lines.Strings = (
        'SELECT'
        'AR_INVOICE_HD.DOC_NO,'
        'AR_INVOICE_HD.DOC_DATE,'
        'AR_INVOICE_HD.REMARK, '
        'AR_INVOICE_HD.DUE_DATE,'
        'AR_INVOICE_HD.CREDIT_TERM, '
        'AR_INVOICE_HD.DESCS,'
        'AR_INVOICE_HD.currency_code,'
        'AR_INVOICE_HD.BATHTEXT,'
        'AR_INVOICE_DT.DESCS AS ITEM_REMARK, '
        'AR_INVOICE_DT.TAX_AMT AS TAX_AMT,'
        'AR_INVOICE_DT.DOC_AMT AS DOC_AMT,'
        'ar_invoice_dt.line_no,'
        'AR_INVOICE_DT.BASE_AMT as BASE_AMT,'
        'AR_INVOICE_DT.ITEM_CODE,'
        'AR_INVOICE_DT.ITEM_DESCS AS ITEM_DESCS,'
        'AR_INVOICE_DT.QTY,'
        'AR_INVOICE_DT.UNIT_COST,'
        'AR_INVOICE_DT.ORDER_NO,'
        'AR_INVOICE_DT.ORDER_DATE,'
        'AR_INVOICE_DT.TAX_RATE AS TAX_RATE,'
        'AR_INVOICE_DT.PURCHASE_NO,'
        'AR_INVOICE_DT.PURCHASE_DATE,'
        'AR_INVOICE_DT.DELIVERY_NO,'
        'AR_INVOICE_DT.DELIVERY_DATE,'
        'AR_DEBTOR.NAME,'
        'AR_DEBTOR.TH_NAME,'
        'AR_DEBTOR.ADDRESS1,'
        'AR_DEBTOR.th_addr1,'
        'AR_DEBTOR.ADDRESS2,'
        'AR_DEBTOR.th_addr2,'
        'AR_DEBTOR.DEBTOR_ACCT,'
        'AR_DEBTOR.ADDRESS3,'
        'AR_DEBTOR.th_addr3,'
        'AR_DEBTOR.TELPHONE,'
        'AR_DEBTOR.FAX_NO,'
        'AR_DEBTOR.POSTCODE,'
        'AR_DEBTOR.PROVINCE     ,'
        'so_sales_item_hd.uom_cd'
        'FROM AR_DEBTOR,'
        'AR_INVOICE_DT,'
        'AR_INVOICE_HD  ,'
        'so_sales_item_hd'
        'WHERE '
        '   ('
        '      (AR_INVOICE_DT.DOC_NO = AR_INVOICE_HD.DOC_NO)'
        '   and '
        '      (AR_INVOICE_HD.STATUS = '#39'N'#39')'
        '   and '
        '      (AR_INVOICE_HD.DEBTOR_ACCT = AR_DEBTOR.DEBTOR_ACCT)'
        '   AND'
        '     (so_sales_item_hd.item_code = ar_invoice_dt.item_code)'
        '     and'
        '     (so_sales_item_hd.cust_code = ar_invoice_dt.debtor_acct)'
        '   and'
        ''
        '     (AR_INVOICE_HD.DOC_NO =:PDOCNO)'
        '   )')
      TabOrder = 10
      Visible = False
    end
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 80
      Top = 200
      Width = 313
      Height = 73
      AutoURLDetect = False
      DataField = 'REMARK'
      DataSource = dsMaster
      PrintJobName = 'Delphi 7'
      TabOrder = 11
      EditorCaption = 'Edit Rich Text'
      EditorPosition.Left = 0
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 0
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      RichEditVersion = 2
      Data = {
        850000007B5C727466315C616E73695C616E73696370673837345C6465666630
        5C6465666C616E67313035347B5C666F6E7474626C7B5C66305C666E696C5C66
        63686172736574323232205461686F6D613B7D7D0D0A5C766965776B696E6434
        5C7563315C706172645C66305C6673313620777744425269636845646974315C
        7061720D0A7D0D0A00}
    end
  end
  inherited plToolBar: TPanel
    Width = 836
    Font.Name = 'Tahoma'
    ParentFont = False
    object sbtPrint: TSpeedButton
      Left = 592
      Top = 1
      Width = 41
      Height = 28
      Glyph.Data = {
        161A0000424D161A00000000000036000000280000002F0000002E0000000100
        180000000000E019000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000F4F4F4C5C5C59B9B9B7A7A7A5656564646464F31234F312346
        46465656567A7A7A9B9B9BC5C5C5F4F4F4000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000D2D6D29B9B9B5656564F31234F3123
        4F31234F31234646464F31234F31234F31234F31234F31234F31234F31235656
        56939393D0D0D000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000000000000000000000000000000000DCDBDC9B9B
        9B56565646464646464656565656565662656262656262656262656262656262
        65625656564646464646464F31234F31234F31234646468C8C8CD2D6D2000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000BABABA7077705656565656566265627077707A7A7A8C8C8C
        9393939B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9393938087807A7A7A6265625656
        564F31234F31234F3123565656ABABAB00000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000000000000000EDEDEDABABAB6265626265627077
        708087809393939B9B9BABABABB1B1B1BABABABABABABABABABABABABABABABA
        BABABABABAB1B1B1ABABAB9B9B9B8C8C8C7077705656564F31234F31234F3123
        8C8C8CEDEDED000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000000000ED
        EDEDA1A1A1707770707770808780939393A1A1A1B1B1B1BABABABABABABFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAB1B1
        B1A1A1A18C8C8C6265624646464F31234F31237A7A7AE2E4E200000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000F4F4F4ABABAB7A7A7A808780939393A1A1A1B1B1
        B1BABABABABABABFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAB1B1B19B9B9B7A7A7A565656
        4F31234F31237A7A7AEDEDED000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000BABABA80
        87808C8C8C9B9B9BABABABB1B1B1BABABABFBFBFBFBFBFBFBFBF000000000000
        BFBFBFA1A1A1909790000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBABABAB1B1B1A1A1A18087805656564F31234F31238C8C8C00000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000D0D0D08C8C8C939393A1A1A1B1B1B1BABABABABABABFBF
        BFBFBFBF000000000000CEC9CEBFBFBFB1B1B1A1A1A1A1A1A1A1A1A190979000
        0000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB1B1B1A1A1A1
        8087805656564F31234F3123ABABAB000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000EDEDEDABABAB9B9B9BAB
        ABABB1B1B1BABABABFBFBFBFBFBF000000000000D2D6D2CEC9CECEC9CEBFBFBF
        808780000000000000A1A1A1A1A1A1909790808780000000000000BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFB1B1B1A1A1A17A7A7A5656564F3123565656D2
        D6D2000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000C9C9C9A1A1A1ABABABB1B1B1BABABABFBFBF000000000000E2E4
        E2DCDBDCD2D6D2BFBFBF808780808780BFBFBFA1A1A1A1A1A1000000000000A1
        A1A1909790909790808780000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        B1B1B19B9B9B7077704646464F31238C8C8C000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000EDEDEDB1B1B1B1B1B1BABABABA
        BABA000000000000E2E4E2E2E4E2E2E4E2BFBFBF808780808780BFBFBF909790
        D2D6D2A1A1A19097909097909097900000000000009097909097908087807077
        70000000000000BFBFBFBFBFBFBFBFBFBABABAB1B1B19393936265624F312346
        4646D0D0D0000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000DCDBDCB1B1B1BABABABFBFBF000000F0F7F0EDEDEDE2E4E2BFBFBF8087
        80808780CEC9CECEC9CEBFBFBF909790D2D6D2A1A1A190979090979090979090
        9790808780000000000000808780808780808780707770000000000000BFBFBF
        BFBFBFBABABAABABAB7A7A7A4646464F3123939393000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000FBFBFBC9C9C9BFBFBFBFBFBFBFBFBF90
        9790EDEDEDBFBFBF808780808780D2D6D2CEC9CECEC9CECEC9CEBFBFBF909790
        D2D6D2A1A1A1909790A1A1A19097908087809097908087809097900000000000
        00808780707770707770707770000000BFBFBFBFBFBFB1B1B193939362656246
        4646565656F4F4F4000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        EDEDEDC2C2C2C2C2C2C2C2C2BFBFBF909790808780808780D2D6D2D2D6D2CEC9
        CECEC9CECEC9CECEC9CECEC9CE909790D2D6D2909790A1A1A190979090979090
        9790808780909790808780808780707770000000000000707770707770000000
        BFBFBFBFBFBFBABABAA1A1A17A7A7A4646464F3123C5C5C5000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000E2E4E2C5C5C5C5C5C5C2C2C290979090
        9790E2E4E2909790D2D6D2D2D6D2D2D6D2D2D6D2CEC9CECEC9CECEC9CE909790
        D2D6D2A1A1A1909790A1A1A19097908087809097908087808087807077708087
        80707770707770000000000000000000BFBFBFBFBFBFBFBFBFB1B1B18C8C8C56
        56564646469B9B9B000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        DCDBDCC5C5C5C5C5C5C2C2C2909790F0F7F0E2E4E2909790D2D6D2D2D6D2D2D6
        D2D2D6D2D2D6D2CEC9CECEC9CE909790F0F7F0909790A1A1A190979080878090
        9790808780808780707770808780707770808780707770707770707770000000
        000000BFBFBFBFBFBFB1B1B19393936265624646467A7A7A000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000D2D6D2C9C9C9C9C9C9C5C5C5909790F0
        F7F0E2E4E2909790DCDBDCD2D6D2D2D6D2D2D6D2CEC9CECEC9CEF0F7F0909790
        808780BFBFBFBFBFBF8087809097908087808087808087808087807077708087
        80707770707770707770707770626562000000000000BFBFBFBABABAA1A1A170
        7770565656626562000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        D0D0D0C9C9C9C9C9C9C5C5C5909790F0F7F0E2E4E2909790D2D6D2D2D6D2CEC9
        CECEC9CEF0F7F0F0F7F0BFBFBFBFBFBFCEC9CE707770808780BFBFBFBFBFBF80
        8780808780808780707770808780707770707770707770707770626562626562
        000000808780000000BABABAABABAB7A7A7A565656565656000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000D0D0D0D0D0D0C9C9C9C5C5C5909790F0
        F7F0E2E4E2909790CEC9CECEC9CEF0F7F0F0F7F0BFBFBFBFBFBFCEC9CECEC9CE
        CEC9CECEC9CEBFBFBF808780808780BFBFBFBFBFBF7077708087807077707077
        70707770707770626562707770626562000000909790808780000000ABABAB80
        8780626562464646000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        D0D0D0D0D0D0CEC9CEC5C5C5909790F0F7F0E2E4E2909790F0F7F0F0F7F0BFBF
        BFBFBFBFCEC9CE1800E71800E7CEC9CED2D6D2707770808780BFBFBFBFBFBF70
        7770808780BFBFBFB1B1B1707770707770707770626562707770626562626562
        000000BFBFBF808780808780ABABAB8C8C8C626562565656000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000D2D6D2D0D0D0D0D0D0C5C5C5909790F0
        F7F0F0F7F0909790808780BFBFBFCEC9CE00CB3000CB30BFBFBFB1B1B1808780
        707770D2D6D2CEC9CEBFBFBFBFBFBFBFBFBF000000808780707770BFBFBFBFBF
        BF707770707770626562626562626562000000808780BFBFBFBFBFBFABABAB8C
        8C8C707770626562000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        DCDBDCD2D6D2D0D0D0C9C9C9909790909790F0F7F0D2D6D2BFBFBF8087807077
        70BFBFBFB1B1B1808780808780DCDBDCD2D6D2D2D6D2CEC9CECEC9CE00000000
        0000B1B1B1B1B1B1000000808780808780BFBFBFB1B1B1626562626562626562
        000000BFBFBFBFBFBFBFBFBFABABAB8C8C8C7077707A7A7A000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000E2E4E2D2D6D2D0D0D0C9C9C9C2C2C2BF
        BFBF909790909790F0F7F0D2D6D2BFBFBF808780808780707770BFBFBFDCDBDC
        D2D6D2D2D6D2000000000000B1B1B1DCDBDCDCDBDCB1B1B1000000BFBFBFBFBF
        BF808780808780BFBFBFB1B1B1626562000000BFBFBFBFBFBFBABABAABABAB8C
        8C8C7077709B9B9B000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        EDEDEDD2D6D2D2D6D2D0D0D0C5C5C5BFBFBFBFBFBFBFBFBF909790909790F0F7
        F0D2D6D2BFBFBF808780707770808780000000000000B1B1B1DCDBDCDCDBDC4F
        31234F3123E2E4E2BFBFBF000000707770BFBFBFB1B1B1808780808780BFBFBF
        BFBFBFBFBFBFBFBFBFBABABAABABAB8C8C8C707770BABABA000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000F4F4F4DCDBDCDCDBDCD0D0D0C9C9C9C2
        C2C2BFBFBFBFBFBFBFBFBFBFBFBF909790909790F0F7F0D2D6D2BFBFBF808780
        707770B1B1B1E2E4E24F31234F3123E2E4E2E2E4E2E2E4E2E2E4E20000008087
        80808780808780BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBABABAABABAB8C
        8C8C7A7A7AD2D6D2000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        FBFBFBE2E4E2DCDBDCD2D6D2CEC9CEC2C2C2BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF909790909790F0F7F0D2D6D2BFBFBF808780E2E4E2E2E4E2E2E4E2ED
        EDED4F31234F3123E2E4E2BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBABABAA1A1A18C8C8C939393F4F4F4000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000EDEDEDDCDBDCDCDBDCD0D0D0C9
        C9C9C2C2C2BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909790909790
        F0F7F0808780E2E4E2E2E4E24F31234F3123E2E4E2E2E4E2E2E4E2E2E4E2BFBF
        BF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB1B1B1A1A1A18C
        8C8CBFBFBF000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000FBFBFBE2E4E2DCDBDCD2D6D2D0D0D0C5C5C5BFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF909790909790808780E2E4E2E2E4E2E2
        E4E2EDEDED4F31234F3123E2E4E2E2E4E2BFBFBF000000BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFB1B1B1A1A1A19B9B9BE2E4E2000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000EDEDEDE2E4E2DCDBDCD2
        D6D2C9C9C9C2C2C2BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBF808780E2E4E2F0F7F04F31234F3123F0F7F0F0F7F0EDEDEDEDED
        EDEDEDEDBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBABABAB1B1B1A1A1A1C5
        C5C5000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000FBFBFBEDEDEDE2E4E2DCDBDCD0D0D0C9C9C9C2C2C2BFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF808780F0F7F0F0
        F7F0F0F7F0F0F7F0EDEDED4F31234F3123EDEDEDEDEDEDBFBFBF000000000000
        C2C2C2BFBFBFBABABAB1B1B1B1B1B1EDEDED000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000F4F4F4E2E4E2E2
        E4E2DCDBDCD0D0D0C9C9C9C2C2C2BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF808780F0F7F0F0F7F04F31234F3123F0F7F0F0F7
        F0F0F7F0F0F7F0EDEDED808780808780C2C2C2C2C2C2BABABAB1B1B1DCDBDC00
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000F4F4F4E2E4E2E2E4E2DCDBDCD0D0D0C9C9C9C2C2
        C2BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF80
        8780F0F7F0F0F7F0F0F7F0F0F7F0F0F7F0F0F7F0808780808780C2C2C2C2C2C2
        C5C5C5C2C2C2BABABAD2D6D2000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF000000000000000000000000000000000000000000FBFBFBED
        EDEDE2E4E2E2E4E2DCDBDCD2D6D2C9C9C9C5C5C5C2C2C2BFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF808780F0F7F0F0F7F0F0F7F08087
        80808780C2C2C2C2C2C2C5C5C5C5C5C5C5C5C5C2C2C2D2D6D2FBFBFB00000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000000000FBFBFBF4F4F4E2E4E2E2E4E2DCDBDCD2D6
        D2D0D0D0C9C9C9C5C5C5C2C2C2BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF808780808780808780C2C2C2C5C5C5C5C5C5C9C9C9C9C9C9C9C9C9
        C5C5C5DCDBDCF4F4F4000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000FBFBFBF4F4F4EDEDEDE2E4E2E2E4E2DCDBDCD2D6D2D0D0D0C9C9C9C5C5C5
        C5C5C5C2C2C2C2C2C2BFBFBFBFBFBFBFBFBFC2C2C2C2C2C2C5C5C5C5C5C5C9C9
        C9C9C9C9CEC9CED0D0D0CEC9CEC9C9C9E2E4E2FBFBFB00000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000000000000000000000000000F4F4F4EDEDEDEDED
        EDE2E4E2E2E4E2DCDBDCDCDBDCD2D6D2D0D0D0D0D0D0C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9CEC9CED0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D2D6D2EDEDED
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000FBFBFBF4F4F4EDEDEDE2E4E2E2E4E2E2E4E2DCDBDC
        DCDBDCDCDBDCDCDBDCD2D6D2D2D6D2D2D6D2D2D6D2D2D6D2D2D6D2D2D6D2D2D6
        D2D2D6D2D2D6D2E2E4E2F4F4F400000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00FBFBFBF4F4F4EDEDEDE2E4E2E2E4E2E2E4E2E2E4E2E2E4E2DCDBDCDCDBDCDC
        DBDCDCDBDCDCDBDCDCDBDCDCDBDCDCDBDCEDEDEDF4F4F4000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FBFBFBFBFBFBF4F4F4
        EDEDEDEDEDEDE2E4E2E2E4E2E2E4E2E2E4E2E2E4E2EDEDEDEDEDEDF4F4F4FBFB
        FB00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FFFFFFFFFFFFFFFFFF000000}
      OnClick = sbtPrintClick
    end
    object wwDBNavigator2: TwwDBNavigator
      Left = 1
      Top = 1
      Width = 175
      Height = 31
      DataSource = dsMaster
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
      Align = alLeft
      object wwNavButton7: TwwNavButton
        Left = 0
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Insert new record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Insert'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 0
        Style = nbsInsert
      end
      object wwNavButton8: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Delete current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Delete'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsDelete
      end
      object wwNavButton9: TwwNavButton
        Left = 50
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Edit current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Edit'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 2
        Style = nbsEdit
      end
      object wwNavButton10: TwwNavButton
        Left = 75
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Post changes of current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Post'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 3
        Style = nbsPost
      end
      object wwNavButton11: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Cancel changes made to current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Cancel'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsCancel
      end
      object wwNavButton12: TwwNavButton
        Left = 125
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Refresh the contents of the dataset'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1Refresh'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 5
        Style = nbsRefresh
      end
      object wwDBNavigator2Button: TwwNavButton
        Left = 150
        Top = 0
        Width = 25
        Height = 25
        ImageIndex = 6
        NumGlyphs = 1
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator2Button'
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 6
        Style = nbsCustom
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = AccountReceiveDM.tbInvoiceHD
    OnDataChange = dsMasterDataChange
    Left = 640
    Top = 1
  end
  inherited dsDetail: TDataSource
    AutoEdit = False
    DataSet = AccountReceiveDM.tbInvoiceDT
    OnDataChange = dsDetailDataChange
    Left = 672
    Top = 1
  end
  object ImageList1: TImageList
    Left = 673
    Top = 229
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C000C0C0C000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080000000000080808000808080008080800080808000808080008080
      800080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000C0C0C000C0C0C00080808000000000000000000000000000000000000000
      000080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C0000000
      0000808080008080800000000000FFFFFF00C0C0C00000000000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0080808000808080008080
      8000808080008080800080808000C0C0C000C0C0C00000000000808080008080
      800080808000000000000000000000000000FFFF000080800000C0C0C0008080
      0000C0C0C00080800000C0C0C00080800000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000FFFFFF0000000000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FFFF000000000000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000000000000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000000000000000000000000000FFFF000080800000808000008080
      0000808000008080000080800000808000008080000080800000800000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF001F00000000FFFF001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F000000000003001F000000000003001F00000000
      0003001F000000000003001F0000000000000000000000000000000000000000
      000000000000}
  end
end
