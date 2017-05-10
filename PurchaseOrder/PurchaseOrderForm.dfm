inherited frmPurchaseOrder: TfrmPurchaseOrder
  Left = 394
  Top = 172
  Width = 840
  Height = 613
  Caption = 'Purchase Order Transaction'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 223
    Width = 824
  end
  inherited StatusBar1: TfcStatusBar
    Top = 555
    Width = 824
  end
  inherited panel1: TPanel
    Top = 226
    Width = 824
    Height = 329
    inherited wwDBGrid1: TwwDBGrid
      Top = 31
      Width = 822
      Height = 196
      ControlType.Strings = (
        'ITEM_CODE;CustomEdit;dlgOrderItem;F'
        'DISCS_CD;CustomEdit;dlgDiscount;F')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'LINE_NO'#9'F'#9
        'ITEM_CODE'#9'15'#9'ITEM'#9'F'#9
        'ITEM_DESCS'#9'60'#9'Description'#9'F'#9
        'MARKUP'#9'10'#9'MARKUP(%)'#9'F'#9
        'QTY'#9'10'#9'QTY'#9#9
        'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
        'DISCS_CD'#9'2'#9'Discount%'#9'F'#9
        'DISCS_RATE'#9'10'#9'DISCS_RATE'#9'T'#9
        'DISCS_AMT'#9'10'#9'Discount'#9'F'#9
        'BASE_AMT'#9'10'#9'Base Amount'#9'T'#9
        'TAX_RATE'#9'10'#9'TAX_RATE'#9'F'#9
        'TAX_AMT'#9'10'#9'Tax Amount'#9'T'#9
        'TOTAL_AMT'#9'10'#9'TOTAL_AMT'#9'T'#9
        'REMARKS'#9'60'#9'REMARKS'#9'F')
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      OnUpdateFooter = wwDBGrid1UpdateFooter
      FooterHeight = 25
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 822
      Height = 30
      Align = alTop
      TabOrder = 1
      object wwDBNavigator2: TwwDBNavigator
        Left = 2
        Top = 3
        Width = 350
        Height = 25
        DataSource = dsDetail
        RepeatInterval.InitialDelay = 500
        RepeatInterval.Interval = 100
        object wwDBNavigator2First: TwwNavButton
          Left = 0
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to first record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2First'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 0
          Style = nbsFirst
        end
        object wwDBNavigator2PriorPage: TwwNavButton
          Left = 25
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move backward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2PriorPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 1
          Style = nbsPriorPage
        end
        object wwDBNavigator2Prior: TwwNavButton
          Left = 50
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to prior record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Prior'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 2
          Style = nbsPrior
        end
        object wwDBNavigator2Next: TwwNavButton
          Left = 75
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to next record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Next'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 3
          Style = nbsNext
        end
        object wwDBNavigator2NextPage: TwwNavButton
          Left = 100
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move forward 10 records'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2NextPage'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 4
          Style = nbsNextPage
        end
        object wwDBNavigator2Last: TwwNavButton
          Left = 125
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Move to last record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Last'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 5
          Style = nbsLast
        end
        object wwDBNavigator2Insert: TwwNavButton
          Left = 150
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Insert new record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Insert'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 6
          Style = nbsInsert
        end
        object wwDBNavigator2Delete: TwwNavButton
          Left = 175
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Delete current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Delete'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 7
          Style = nbsDelete
        end
        object wwDBNavigator2Edit: TwwNavButton
          Left = 200
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Edit current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Edit'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 8
          Style = nbsEdit
        end
        object wwDBNavigator2Post: TwwNavButton
          Left = 225
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Post changes of current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Post'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 9
          Style = nbsPost
        end
        object wwDBNavigator2Cancel: TwwNavButton
          Left = 250
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Cancel changes made to current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Cancel'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 10
          Style = nbsCancel
        end
        object wwDBNavigator2Refresh: TwwNavButton
          Left = 275
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Refresh the contents of the dataset'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2Refresh'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 11
          Style = nbsRefresh
        end
        object wwDBNavigator2SaveBookmark: TwwNavButton
          Left = 300
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Bookmark current record'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2SaveBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 12
          Style = nbsSaveBookmark
        end
        object wwDBNavigator2RestoreBookmark: TwwNavButton
          Left = 325
          Top = 0
          Width = 25
          Height = 25
          Hint = 'Go back to saved bookmark'
          ImageIndex = -1
          NumGlyphs = 2
          Spacing = 4
          Transparent = False
          Caption = 'wwDBNavigator2RestoreBookmark'
          Enabled = False
          DisabledTextColors.ShadeColor = clGray
          DisabledTextColors.HighlightColor = clBtnHighlight
          Index = 13
          Style = nbsRestoreBookmark
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 227
      Width = 822
      Height = 101
      Align = alBottom
      BevelOuter = bvLowered
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 501
        Top = 12
        Width = 63
        Height = 13
        Caption = 'Base Amount'
      end
      object Label13: TLabel
        Left = 506
        Top = 34
        Width = 58
        Height = 13
        Caption = 'Tax Amount'
      end
      object Label14: TLabel
        Left = 483
        Top = 56
        Width = 81
        Height = 13
        Caption = 'Discount Amount'
      end
      object Label15: TLabel
        Left = 500
        Top = 77
        Width = 64
        Height = 13
        Caption = 'Total Amount'
      end
      object wwDBEdit7: TwwDBEdit
        Left = 587
        Top = 8
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'BASE_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit8: TwwDBEdit
        Left = 587
        Top = 29
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'TAX_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit9: TwwDBEdit
        Left = 587
        Top = 50
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'DIS_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBEdit10: TwwDBEdit
        Left = 587
        Top = 71
        Width = 145
        Height = 21
        Color = clActiveBorder
        DataField = 'TOTAL_AMOUNT'
        DataSource = dsPurchaseSummary
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dlgOrderItem: TwwDBLookupComboDlg
      Left = 176
      Top = 88
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Order Item'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'STOCK_CD'#9'15'#9'STOCK_CD'#9#9
        'EN_DESCS'#9'150'#9'EN_DESCS'#9#9
        'TH_DESCS'#9'150'#9'TH_DESCS'#9'F'
        'UNIT_COST'#9'10'#9'UNIT_COST'#9'F'#9)
      DataField = 'ITEM_CODE'
      DataSource = dsDetail
      LookupTable = PurchaseOrderDM.qryOrderItemLookkup
      LookupField = 'STOCK_CD'
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dlgDiscount: TwwDBLookupComboDlg
      Left = 424
      Top = 88
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Discount'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'DISCS_CD'#9'2'#9'Code'#9#9
        'DISCS_RATE'#9'10'#9'Rate'#9#9
        'DESCS'#9'18'#9'DESCS'#9#9)
      DataField = 'DISCS_CD'
      DataSource = dsDetail
      LookupTable = PurchaseOrderDM.qryDiscount
      LookupField = 'DISCS_CD'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object mReportQuery: TMemo
      Left = 8
      Top = 234
      Width = 481
      Height = 89
      Lines.Strings = (
        'SElect H.Supp_code, H.status,H.order_no,'
        ' H.order_date,H.ref_no,H.ref_date,h.validity,'
        'h.fax_to,h.cc_to,H.Delivery_Date,H.REMARKS,H.markup,'
        'D.Item_Code,D.Line_no,D.UOM,D.DISCS_CD,D.DISCS_AMT,'
        'D.Item_Descs,D.Unit_cost,D.Total_amt,D.qty,'
        'D.tax_amt , d.base_amt,'
        'D.Remarks AS REMARK1,'
        
          'S.Name,S.Address1,S.Address2,S.Address3,S.Telephone,S.Fax_no,S.P' +
          'ostCode,S.Province,'
        'c.credit_term, C.TH_name, C.TH_ADDR1,C.TH_ADDR2, C.TH_ADDR3, '
        'c.CURRENCY_CODE, currency.descs as curr_descs,'
        'substr(IC_MAT_STK_HD.EN_DESCS,1,40),substr'
        
          '(IC_MAT_STK_HD.EN_DESCS,41,80),substr(IC_MAT_STK_HD.EN_DESCS,81,' +
          '120),'
        'substr(IC_MAT_STK_HD.TH_DESCS,1,40),'
        'substr(IC_MAT_STK_HD.TH_DESCS,41,80),'
        'substr(IC_MAT_STK_HD.TH_DESCS,81,120)'
        
          'From PO_Order_hd H, PO_Order_DT D, PO_Supplier S,ap_creditor c ,' +
          ' '
        'IC_MAT_STK_HD , currency'
        'Where D.Supp_code = H.Supp_code'
        'and D.Order_no = H.Order_no'
        'and D.Order_date = H.Order_date'
        'and S.Supplier_cd = H.Supp_Code'
        'and s.creditor_ACCT = c.creditor_acct'
        'and c.creditor_acct = h.supp_code'
        'and c.currency_code = currency.currency_code'
        'and ic_mat_stk_hd.stock_cd = D.item_code'
        'AND  h.ORDER_NO= :PDOCNO'
        'AND h.STATUS ='#39'N'#39
        '')
      TabOrder = 5
      Visible = False
    end
  end
  inherited plHeader: TPanel
    Width = 824
    Height = 190
    object Label1: TLabel
      Left = 4
      Top = 24
      Width = 44
      Height = 13
      Caption = 'Order No'
    end
    object Label2: TLabel
      Left = 183
      Top = 24
      Width = 54
      Height = 13
      Caption = 'Order Date'
    end
    object Label3: TLabel
      Left = 376
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Ref No'
    end
    object Label4: TLabel
      Left = 548
      Top = 24
      Width = 43
      Height = 13
      Caption = 'Ref Date'
    end
    object Label5: TLabel
      Left = 9
      Top = 70
      Width = 39
      Height = 13
      Caption = 'Mark Up'
    end
    object Label6: TLabel
      Left = 168
      Top = 72
      Width = 65
      Height = 13
      Caption = 'Delivery Date'
    end
    object Label7: TLabel
      Left = 10
      Top = 46
      Width = 38
      Height = 13
      Caption = 'Supplier'
    end
    object Label8: TLabel
      Left = 614
      Top = 45
      Width = 56
      Height = 13
      Caption = 'Credit Term'
    end
    object Label9: TLabel
      Left = 8
      Top = 88
      Width = 36
      Height = 13
      Caption = 'Remark'
    end
    object Bevel1: TBevel
      Left = 128
      Top = 41
      Width = 473
      Height = 22
    end
    object DBText1: TDBText
      Left = 137
      Top = 44
      Width = 456
      Height = 17
      DataField = 'Name'
      DataSource = dsMaster
    end
    object wwDBEdit1: TwwDBEdit
      Left = 52
      Top = 16
      Width = 121
      Height = 21
      DataField = 'ORDER_NO'
      DataSource = dsMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 241
      Top = 16
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ORDER_DATE'
      DataSource = dsMaster
      Date = 37966.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
    end
    object wwDBEdit2: TwwDBEdit
      Left = 417
      Top = 16
      Width = 121
      Height = 21
      DataField = 'REF_NO'
      DataSource = dsMaster
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker2: TwwDBDateTimePicker
      Left = 599
      Top = 16
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'REF_DATE'
      DataSource = dsMaster
      Date = 37966.000000000000000000
      Epoch = 1950
      Time = 0.612418981480004700
      ShowButton = True
      TabOrder = 3
    end
    object wwDBLookupComboDlg1: TwwDBLookupComboDlg
      Left = 52
      Top = 41
      Width = 76
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Supplier'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'NAME'#9'60'#9'NAME'#9#9
        'SUPPLIER_CD'#9'10'#9'SUPPLIER_CD'#9#9)
      DataField = 'SUPP_CODE'
      DataSource = dsMaster
      LookupTable = PurchaseOrderDM.tbSupplier
      LookupField = 'SUPPLIER_CD'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 675
      Top = 40
      Width = 43
      Height = 21
      DataField = 'TERM_OF_PAYMENT'
      DataSource = dsMaster
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 52
      Top = 64
      Width = 72
      Height = 21
      DataField = 'MARKUP'
      DataSource = dsMaster
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBDateTimePicker3: TwwDBDateTimePicker
      Left = 240
      Top = 64
      Width = 121
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'DELIVERY_DATE'
      DataSource = dsMaster
      Date = 37972.000000000000000000
      Epoch = 1950
      ShowButton = True
      TabOrder = 7
    end
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 52
      Top = 88
      Width = 309
      Height = 89
      AutoURLDetect = False
      DataField = 'REMARKS'
      DataSource = dsMaster
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PrintJobName = 'Delphi 7'
      TabOrder = 8
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
    object cxGroupBox2: TcxGroupBox
      Left = 368
      Top = 64
      Cursor = crHandPoint
      Hint = 'Click Here to mange contract'
      Caption = 'Fax / Attend:'
      ParentShowHint = False
      ShowHint = True
      Style.Shadow = True
      TabOrder = 9
      OnDblClick = cxGroupBox2DblClick
      Height = 110
      Width = 353
      object CBFAXTO: TcxDBLookupComboBox
        Left = 8
        Top = 24
        DataBinding.DataField = 'FAX_TO'
        DataBinding.DataSource = dsMaster
        ParentFont = False
        Properties.KeyFieldNames = 'CONTRACT_PERSON1'
        Properties.ListColumns = <
          item
            FieldName = 'CONTRACT_PERSON1'
          end>
        Properties.ListSource = dsFax
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 313
      end
      object CBCCTO: TcxDBLookupComboBox
        Left = 8
        Top = 59
        DataBinding.DataField = 'CC_TO'
        DataBinding.DataSource = dsMaster
        ParentFont = False
        Properties.KeyFieldNames = 'CONTRACT_PERSON2'
        Properties.ListColumns = <
          item
            FieldName = 'CONTRACT_PERSON2'
          end>
        Properties.ListSource = dsAttend
        Style.Font.Charset = THAI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.Shadow = True
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 313
      end
    end
  end
  inherited plToolBar: TPanel
    Width = 824
    object sbtPrint: TSpeedButton
      Left = 592
      Top = -1
      Width = 41
      Height = 26
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
    object wwDBNavigator1: TwwDBNavigator
      Left = 3
      Top = 1
      Width = 350
      Height = 25
      DataSource = dsMaster
      RepeatInterval.InitialDelay = 500
      RepeatInterval.Interval = 100
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
      object wwDBNavigator1PriorPage: TwwNavButton
        Left = 25
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move backward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1PriorPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 1
        Style = nbsPriorPage
      end
      object wwDBNavigator1Prior: TwwNavButton
        Left = 50
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
        Index = 2
        Style = nbsPrior
      end
      object wwDBNavigator1Next: TwwNavButton
        Left = 75
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
        Index = 3
        Style = nbsNext
      end
      object wwDBNavigator1NextPage: TwwNavButton
        Left = 100
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Move forward 10 records'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1NextPage'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 4
        Style = nbsNextPage
      end
      object wwDBNavigator1Last: TwwNavButton
        Left = 125
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
        Index = 5
        Style = nbsLast
      end
      object wwDBNavigator1Insert: TwwNavButton
        Left = 150
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
        Index = 6
        Style = nbsInsert
      end
      object wwDBNavigator1Delete: TwwNavButton
        Left = 175
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
        Index = 7
        Style = nbsDelete
      end
      object wwDBNavigator1Edit: TwwNavButton
        Left = 200
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
        Index = 8
        Style = nbsEdit
      end
      object wwDBNavigator1Post: TwwNavButton
        Left = 225
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
        Index = 9
        Style = nbsPost
      end
      object wwDBNavigator1Cancel: TwwNavButton
        Left = 250
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
        Index = 10
        Style = nbsCancel
      end
      object wwDBNavigator1Refresh: TwwNavButton
        Left = 275
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
        Index = 11
        Style = nbsRefresh
      end
      object wwDBNavigator1SaveBookmark: TwwNavButton
        Left = 300
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Bookmark current record'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1SaveBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 12
        Style = nbsSaveBookmark
      end
      object wwDBNavigator1RestoreBookmark: TwwNavButton
        Left = 325
        Top = 0
        Width = 25
        Height = 25
        Hint = 'Go back to saved bookmark'
        ImageIndex = -1
        NumGlyphs = 2
        Spacing = 4
        Transparent = False
        Caption = 'wwDBNavigator1RestoreBookmark'
        Enabled = False
        DisabledTextColors.ShadeColor = clGray
        DisabledTextColors.HighlightColor = clBtnHighlight
        Index = 13
        Style = nbsRestoreBookmark
      end
    end
  end
  inherited dsMaster: TDataSource
    DataSet = PurchaseOrderDM.tbPurchaseOrderHeader
  end
  inherited dsDetail: TDataSource
    DataSet = PurchaseOrderDM.tbPurchaseOrderDetail
  end
  object dsPurchaseSummary: TDataSource
    DataSet = PurchaseOrderDM.qryOrderSummary
    Left = 417
    Top = 472
  end
  object dsFax: TDataSource
    DataSet = PurchaseOrderDM.tbContract
    Left = 448
    Top = 180
  end
  object dsAttend: TDataSource
    DataSet = PurchaseOrderDM.tbContract
    Left = 490
    Top = 180
  end
end
