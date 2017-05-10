inherited InvoiceBrowseForm: TInvoiceBrowseForm
  Left = 288
  Top = 204
  Width = 870
  Height = 393
  Caption = 'AR Invoice Post/Edit)'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 335
    Width = 854
  end
  inherited Grid: TwwDBGrid
    Width = 854
    Height = 295
    Selected.Strings = (
      'DOC_NO'#9'15'#9'Invoice No'#9#9
      'DOC_DATE'#9'18'#9'Invoice Date'#9#9
      'DESCS'#9'24'#9'DESCS'#9#9
      'DEBT_NAME'#9'31'#9'DEBTOR  NAME'#9#9
      'CREDIT_TERM'#9'12'#9'CREDIT TERM'#9#9
      'DUE_DATE'#9'12'#9'DUE DATE'#9#9
      'UPDATE_USER'#9'12'#9'UPDATE USER'#9#9)
  end
  inherited Panel1: TPanel
    Top = 295
    Width = 854
    inherited postButton: TBitBtn
      Left = 624
    end
    inherited cancelButton: TBitBtn
      Left = 712
    end
  end
  object mReportQuery: TMemo [3]
    Left = 40
    Top = 184
    Width = 569
    Height = 89
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
    TabOrder = 3
    Visible = False
  end
  object cxGrid: TcxGrid [4]
    Left = 0
    Top = 0
    Width = 854
    Height = 295
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    object cxGridDBTableView: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = GridDblClick
      NavigatorButtons.ConfirmDelete = False
      FilterBox.CustomizeDialog = False
      DataController.DataSource = datasource
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      DataController.OnDataChanged = GridRowChanged
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentOdd = SystemMenuDM.cxStyle232
      Styles.Header = SystemMenuDM.cxStyle153
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 233
      end
      object cxGridDBTableViewDEBT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'DEBT_NAME'
      end
      object cxGridDBTableViewCREDIT_TERM: TcxGridDBColumn
        DataBinding.FieldName = 'CREDIT_TERM'
      end
      object cxGridDBTableViewDUE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DUE_DATE'
      end
      object cxGridDBTableViewUPDATE_USER: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_USER'
      end
      object cxGridDBTableViewDEBTOR_ACCT: TcxGridDBColumn
        DataBinding.FieldName = 'DEBTOR_ACCT'
        Visible = False
      end
      object cxGridDBTableViewTRX_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TRX_TYPE'
        Visible = False
      end
      object cxGridDBTableViewTAX_INV_NO: TcxGridDBColumn
        DataBinding.FieldName = 'TAX_INV_NO'
        Visible = False
      end
      object cxGridDBTableViewTAX_INV_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'TAX_INV_DATE'
        Visible = False
      end
      object cxGridDBTableViewREMARK: TcxGridDBColumn
        DataBinding.FieldName = 'REMARK'
        Visible = False
      end
      object cxGridDBTableViewSTATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
      object cxGridDBTableViewRECEIPT_STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'RECEIPT_STATUS'
        Visible = False
      end
      object cxGridDBTableViewNO_OF_PRINT: TcxGridDBColumn
        DataBinding.FieldName = 'NO_OF_PRINT'
        Visible = False
      end
      object cxGridDBTableViewUPDATE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'UPDATE_DATE'
        Visible = False
      end
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridDBTableView
    end
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 616
    Top = 56
  end
end
