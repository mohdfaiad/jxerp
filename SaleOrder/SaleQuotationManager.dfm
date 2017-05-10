inherited frmCXSaleQuotaionManager: TfrmCXSaleQuotaionManager
  Left = 302
  Top = 260
  Width = 983
  Height = 517
  Caption = 'Sale Quotaion Management'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 967
    Caption = 
      'If you can not findy your recent document please press F5 to ref' +
      'resh. Document must be approved before print.'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 459
    Width = 967
  end
  inherited Panel1: TPanel
    Top = 419
    Width = 967
    inherited postButton: TBitBtn
      Left = 208
      Caption = 'Approve'
    end
    inherited cancelButton: TBitBtn
      Left = 296
    end
    inherited btPrint: TButton
      Left = 512
      Visible = True
    end
    object btDesign: TButton
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Design'
      TabOrder = 5
      OnClick = btDesignClick
    end
    object btToInvoice: TButton
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = 'To Invoice'
      TabOrder = 6
      OnClick = btToInvoiceClick
    end
  end
  inherited cxGrid: TcxGrid
    Width = 967
    Height = 405
    Font.Name = 'Tahoma'
    inherited cxGridDBTableView: TcxGridDBTableView
      OnSelectionChanged = cxGridDBTableViewSelectionChanged
      DataController.DetailKeyFieldNames = 'DOC_NO'
      object cxGridDBTableViewDOC_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_NO'
        Width = 61
      end
      object cxGridDBTableViewDOC_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DOC_DATE'
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableViewDESCS: TcxGridDBColumn
        DataBinding.FieldName = 'DESCS'
        Width = 116
      end
      object cxGridDBTableViewFAX_TO: TcxGridDBColumn
        DataBinding.FieldName = 'FAX_TO'
        Width = 51
      end
      object cxGridDBTableViewCC_TO: TcxGridDBColumn
        DataBinding.FieldName = 'CC_TO'
        Width = 89
      end
      object cxGridDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 109
      end
      object cxGridDBTableViewTERM_OF_PAYMENT: TcxGridDBColumn
        DataBinding.FieldName = 'TERM_OF_PAYMENT'
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView [1]
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsQuoteItem
      DataController.DetailKeyFieldNames = 'DOC_NO'
      DataController.KeyFieldNames = 'DOC_NO'
      DataController.MasterKeyFieldNames = 'DOC_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      object cxGridDBTableView1ITEM_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_CODE'
      end
      object cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn
        DataBinding.FieldName = 'ITEM_DESCS'
      end
      object cxGridDBTableView1QTY: TcxGridDBColumn
        DataBinding.FieldName = 'QTY'
      end
      object cxGridDBTableView1UNIT_COST: TcxGridDBColumn
        DataBinding.FieldName = 'UNIT_COST'
      end
    end
    inherited cxGridLevel: TcxGridLevel
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object mReportQuery: TMemo [5]
    Left = 24
    Top = 208
    Width = 361
    Height = 89
    Lines.Strings = (
      'select '
      '    so_quotation_hd.doc_no,'
      '    so_quotation_hd.doc_date,'
      '    so_quotation_hd.ref_no,'
      '    so_quotation_hd.ref_date,'
      '    so_quotation_hd.cust_code,'
      '    so_quotation_hd.doc_amt,'
      '    so_quotation_hd.status,'
      '    so_quotation_hd.validity,'
      '    so_quotation_hd.prepare_person,'
      '    so_quotation_hd.delivery_date,'
      '    so_quotation_hd.remarks,'
      '    so_quotation_hd.fax_to,'
      '    so_quotation_hd.cc_to,'
      '    so_quotation_hd.currency_cd,'
      '    '
      'so_quotation_hd.currency_descs,'
      '    so_quotation_hd.address1,'
      '    so_quotation_hd.address2,'
      '    so_quotation_hd.address3,'
      '    so_quotation_hd.name,'
      '  so_quotation_hd.term_of_payment,'
      '    so_quotation_dt.item_code,'
      '    so_quotation_dt.item_descs,'
      '    so_quotation_dt.unit_cost,'
      '    so_quotation_dt.qty,'
      '    so_quotation_dt.total_amt,'
      '    so_quotation_dt.remarks,'
      '    so_quotation_dt.discs_amt,'
      '    so_quotation_dt.tax_amt,'
      '    so_quotation_dt.base_amt,'
      '    so_quotation_dt.tax_cd,'
      '    so_quotation_dt.discs_cd,'
      '    so_quotation_dt.tax_rate,'
      '    so_quotation_dt.line_no,'
      '    so_sales_item_hd.remarks,'
      '    so_sales_item_hd.sale_price,'
      '    so_sales_item_hd.unit_cost,'
      '    so_sales_item_hd.uom_cd,'
      '    so_sales_item_hd.descs'
      'from so_quotation_hd'
      '   inner join so_quotation_dt on '
      '(so_quotation_hd.doc_no = '
      'so_quotation_dt.doc_no) and '
      '(so_quotation_hd.doc_date = '
      'so_quotation_dt.doc_date) and '
      '(so_quotation_hd.cust_code = '
      'so_quotation_dt.cust_code)'
      '   inner join so_sales_item_hd on '
      '(so_quotation_dt.item_code = '
      'so_sales_item_hd.item_code) and '
      '(so_quotation_dt.cust_code = '
      'so_sales_item_hd.cust_code)'
      'where '
      '   ('
      '      (so_quotation_hd.doc_no = :pdocno)'
      ')')
    TabOrder = 8
    Visible = False
  end
  inherited PopupMenu1: TPopupMenu
    object N2: TMenuItem
      Caption = '-'
    end
    object oInvoice1: TMenuItem
      Caption = 'To Invoice'
      Hint = 'Generate Quotation To Sale Invoice'
      OnClick = btToInvoiceClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object CloneQuotation1: TMenuItem
      Caption = 'Clone Quotation'
      OnClick = CloneQuotation1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
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
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
  end
  object dsQuoteItem: TDataSource
    DataSet = SaleOrderDataManager.tbSaleQuoteDTView
    Left = 512
    Top = 152
  end
end
