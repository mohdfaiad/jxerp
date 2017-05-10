inherited frmAPPaymentManager: TfrmAPPaymentManager
  Width = 961
  Height = 454
  Caption = 'Payment Entry'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 945
  end
  inherited StatusBar1: TfcStatusBar
    Top = 396
    Width = 945
  end
  inherited Panel1: TPanel
    Top = 356
    Width = 945
    inherited btPrint: TButton
      Width = 110
      Visible = True
    end
  end
  inherited cxGrid: TcxGrid
    Width = 945
    Height = 342
    inherited cxGridDBTableView: TcxGridDBTableView
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '#,###.00'
          Kind = skSum
          FieldName = 'BASE_AMOUNT'
          Column = cxGridDBTableViewColumn1
          DisplayText = 'Total Base Amount'
        end
        item
          Format = '#,###.00'
          Kind = skSum
          FieldName = 'WHTAX_AMOUNT'
          Column = cxGridDBTableViewColumn2
          DisplayText = 'Witholding Tax'
        end
        item
          Format = '#,###.00'
          Kind = skSum
          FieldName = 'NetAmount'
          Column = cxGridDBTableViewColumn3
          DisplayText = 'Net Amount'
        end>
      OptionsView.Footer = True
      OptionsView.GroupFooterMultiSummaries = True
      Styles.ContentEven = SystemMenuDM.cxStyle232
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
        Width = 102
      end
      object cxGridDBTableViewTRX_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'TRX_TYPE'
        Width = 84
      end
      object cxGridDBTableViewCREDITOR_ACCT: TcxGridDBColumn
        DataBinding.FieldName = 'CREDITOR_ACCT'
        Width = 133
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
        Width = 125
      end
      object cxGridDBTableViewREF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
        Width = 117
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 385
      end
      object cxGridDBTableViewColumn1: TcxGridDBColumn
        Caption = 'Base_Amount'
        DataBinding.FieldName = 'BASE_AMOUNT'
      end
      object cxGridDBTableViewColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'WHTAX_AMOUNT'
      end
      object cxGridDBTableViewColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'TAX_AMOUNT'
      end
    end
  end
  object mReportQuery: TMemo [5]
    Left = 67
    Top = 46
    Width = 465
    Height = 160
    Lines.Strings = (
      'select '
      '    ap_creditor.creditor_acct,'
      '    ap_creditor.creditor_type,'
      '    ap_creditor.address1,'
      '    ap_creditor.address2,'
      '    ap_creditor.address3,'
      '    ap_creditor.short_name,'
      '    ap_creditor.credit_term,'
      '    ap_creditor.tax_registed_no,'
      '    ap_creditor.province,'
      '    ap_creditor.postcode,'
      '    ap_creditor.th_addr1,'
      '    ap_creditor.th_addr2,'
      '    ap_creditor.th_addr3,'
      '    ap_creditor.th_name,'
      '    ap_payment_hd.doc_no,'
      '    ap_payment_hd.doc_date,'
      '    ap_payment_hd.trx_type,'
      '    ap_payment_hd.ref_no,'
      '    ap_payment_hd.ref_date,'
      '    ap_payment_hd.descs,'
      '    ap_payment_hd.remark,'
      '    ap_payment_hd.bank_code,'
      '    ap_payment_hd.currency_code,'
      '    ap_payment_hd.bathtext,'
      '    ap_payment_hd.status,'
      '    ap_payment_dt.line_no,'
      '    ap_payment_dt.invoice_no,'
      '    ap_payment_dt.invoice_date,'
      '    ap_payment_dt.line_descs,'
      '    ap_payment_dt.line_remark,'
      '    ap_payment_dt.tax_code,'
      '    ap_payment_dt.tax_rate,'
      '    ap_payment_dt.tax_amount,'
      '    ap_payment_dt.whtax_code,'
      '    ap_payment_dt.whtax_rate,'
      '    ap_payment_dt.whtax_amount,'
      '    ap_payment_dt.base_amount,'
      '    ap_payment_dt.total_amount'
      'from ap_payment_dt'
      
        '   inner join ap_payment_hd on (ap_payment_dt.doc_no = ap_paymen' +
        't_hd.doc_no) and '
      
        '(ap_payment_dt.doc_date = ap_payment_hd.doc_date) and (ap_paymen' +
        't_dt.trx_type = '
      
        'ap_payment_hd.trx_type) and (ap_payment_dt.creditor_acct = ap_pa' +
        'yment_hd.creditor_acct)'
      
        '   inner join ap_creditor on (ap_payment_hd.creditor_acct = ap_c' +
        'reditor.creditor_acct)'
      '   WHERE (AP_PAYMENT_HD.DOC_NO =:PDOCNO  )')
    TabOrder = 8
    Visible = False
  end
  inherited datasource: TDataSource
    DataSet = AccountPayableDM.spPostPayment
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
