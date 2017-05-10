inherited ReceiptBrowseForm: TReceiptBrowseForm
  Left = 275
  Top = 179
  Width = 905
  Height = 519
  Caption = 'ReceiptBrowseForm'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl [0]
    Left = 0
    Top = 0
    Width = 889
    Height = 421
    ActivePage = cxTabSheetReceipt
    Align = alClient
    TabOrder = 4
    OnChange = cxPageControl1Change
    ClientRectBottom = 421
    ClientRectRight = 889
    ClientRectTop = 24
    object cxTabSheetReceipt: TcxTabSheet
      Caption = 'Receipt'
      ImageIndex = 0
    end
    object cxTabSheetInvoice: TcxTabSheet
      Caption = 'Outstanding Invoice'
      ImageIndex = 1
      object wwDBGridInvoice: TwwDBGrid
        Left = 0
        Top = 0
        Width = 889
        Height = 397
        DisableThemes = False
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = DataSourceInvoice
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 461
    Width = 889
  end
  inherited Grid: TwwDBGrid
    Top = 80
    Width = 745
    Height = 341
    Selected.Strings = (
      'DOC_NO'#9'17'#9'Receipt No'#9#9
      'DOC_DATE'#9'18'#9'Receipt Date'#9#9
      'DESCS'#9'45'#9'Description'#9'F'#9
      'NAME'#9'60'#9'NAME'#9'F'#9
      'UPDATE_USER'#9'10'#9'Update User'#9#9)
    Align = alNone
  end
  inherited Panel1: TPanel
    Top = 421
    Width = 889
    object btReceiptWizard: TButton
      Left = 616
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Wizard'
      TabOrder = 5
    end
  end
  object mReportQuery: TMemo [4]
    Left = 93
    Top = 176
    Width = 569
    Height = 89
    Lines.Strings = (
      'SELECT'
      'AR_RECEIPT_DT.DOC_NO,'
      'AR_RECEIPT_DT.DOC_DATE,'
      'AR_INVOICE_HD.DUE_DATE,'
      'AR_INVOICE_HD.CREDIT_TERM, '
      'AR_INVOICE_HD.DESCS,'
      'AR_INVOICE_HD.currency_code,'
      'AR_INVOICE_DT.DESCS AS ITEM_REMARK, '
      'ROUND(AR_INVOICE_DT.TAX_AMT,2) AS TAX_AMT,'
      'ROUND(AR_INVOICE_DT.DOC_AMT,2) AS DOC_AMT,'
      'ROUND(AR_INVOICE_DT.BASE_AMT,2) AS BASE_AMT,'
      'AR_INVOICE_DT.ITEM_CODE,'
      'AR_INVOICE_DT.ITEM_DESCS,'
      'AR_INVOICE_DT.QTY,'
      'AR_INVOICE_DT.UNIT_COST,'
      'AR_INVOICE_DT.ORDER_NO,'
      'AR_INVOICE_DT.ORDER_DATE,'
      'AR_INVOICE_DT.TAX_RATE AS TAX_RATE,'
      'AR_INVOICE_DT.PURCHASE_NO,'
      'AR_INVOICE_DT.PURCHASE_DATE,'
      'AR_INVOICE_DT.DELIVERY_NO,'
      'AR_INVOICE_DT.DELIVERY_DATE,'
      'AR_RECEIPT_HD.BATHTEXT,'
      'AR_RECEIPT_HD.remarks,'
      'ar_receipt_dt.line_no,'
      'AR_RECEIPT_DT.inv_no,'
      'AR_RECEIPT_DT.inv_date,'
      'AR_RECEIPT_DT.wh_amount,'
      'AR_RECEIPT_DT.wh_RATE,'
      'AR_RECEIPT_DT.base_amount,'
      'AR_RECEIPT_DT.tax_amount,'
      'AR_RECEIPT_DT.trx_amount,'
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
      'so_sales_item_hd ,'
      'AR_RECEIPT_DT    ,'
      'AR_RECEIPT_HD'
      'WHERE '
      '   ('
      '      (AR_INVOICE_DT.DOC_NO = AR_INVOICE_HD.DOC_NO)'
      '   and '
      '      (AR_INVOICE_HD.STATUS = '#39'X'#39')'
      '   and '
      '      (AR_INVOICE_HD.DEBTOR_ACCT =  AR_DEBTOR.DEBTOR_ACCT)'
      '   AND'
      '     (so_sales_item_hd.item_code = ar_invoice_dt.item_code)'
      '   and'
      '     (so_sales_item_hd.cust_code = ar_invoice_dt.debtor_acct)'
      '   and'
      '    (AR_RECEIPT_DT.inv_no = ar_invoice_hd.DOC_NO)'
      '   AND'
      '        (AR_RECEIPT_DT.debtor_acct = AR_INVOICE_HD.debtor_acct)'
      '   AND'
      '    (AR_RECEIPT_DT.debtor_acct = AR_RECEIPT_HD.debtor_acct)'
      '   AND'
      '    (AR_RECEIPT_DT.DOC_NO = AR_RECEIPT_HD.DOC_NO)'
      '   AND'
      '    (AR_RECEIPT_DT.DOC_DATE = AR_RECEIPT_HD.DOC_DATE)'
      '   AND'
      '    (AR_RECEIPT_DT.DOC_NO =:pDocNo)'
      '   )'
      'ORDER BY   ar_receipt_dt.line_no')
    TabOrder = 3
    Visible = False
  end
  inherited datasource: TDataSource
    DataSet = AccountReceiveDM.qryUnpostReceipt
    Left = 800
    Top = 40
  end
  object DataSourceInvoice: TDataSource
    Left = 840
    Top = 40
  end
end
