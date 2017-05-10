inherited frmPurchaseOrderBrowse: TfrmPurchaseOrderBrowse
  Left = 247
  Top = 204
  Width = 778
  Height = 389
  Caption = 'Purchase Order Transaction'
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 331
    Width = 762
  end
  inherited Grid: TwwDBGrid
    Width = 505
    Height = 161
    Selected.Strings = (
      'ORDER_NO'#9'15'#9'Order No'#9'F'#9
      'ORDER_DATE'#9'18'#9'Order Date'#9'F'#9
      'REF_NO'#9'15'#9'Ref No'#9'F'#9
      'REF_DATE'#9'18'#9'Ref Date'#9'F'#9
      'UPDATE_USER'#9'10'#9'issue by'#9'F'#9
      'UPDATE_DATE'#9'18'#9'issue date'#9'F'#9
      'REMARKS'#9'1500'#9'REMARKS'#9#9)
    Align = alNone
    Visible = False
  end
  inherited Panel1: TPanel
    Top = 291
    Width = 762
    inherited postButton: TBitBtn
      Caption = 'Approve'
    end
    inherited cancelButton: TBitBtn
      Caption = 'Quit'
    end
    inherited btPrint: TButton
      Visible = True
    end
  end
  object cxGrid: TcxGrid [3]
    Left = 0
    Top = 0
    Width = 762
    Height = 291
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    object cxGridDBTableView: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = cxGridDBTableViewDblClick
      NavigatorButtons.ConfirmDelete = False
      FilterBox.CustomizeDialog = False
      OnCellClick = cxGridDBTableViewCellClick
      DataController.DataSource = datasource
      DataController.KeyFieldNames = 'ORDER_NO'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Styles.ContentOdd = SystemMenuDM.cxStyle232
      Styles.Header = SystemMenuDM.cxStyle153
      object cxGridDBTableViewORDER_NO: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_NO'
        Width = 162
      end
      object cxGridDBTableViewORDER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_DATE'
        Width = 160
      end
      object cxGridDBTableViewSUPP_CODE: TcxGridDBColumn
        DataBinding.FieldName = 'SUPP_CODE'
        Visible = False
      end
      object cxGridDBTableViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 402
      end
    end
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsOrderItem
      DataController.DetailKeyFieldNames = 'ORDER_NO'
      DataController.KeyFieldNames = 'ITEM_CODE'
      DataController.MasterKeyFieldNames = 'ORDER_NO'
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
      object cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn
        DataBinding.FieldName = 'TOTAL_AMT'
      end
    end
    object cxGridLevel: TcxGridLevel
      GridView = cxGridDBTableView
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object mReportQuery: TMemo [4]
    Left = 24
    Top = 152
    Width = 457
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
      'AND h.STATUS ='#39'N'#39)
    TabOrder = 4
    Visible = False
  end
  object dsOrderItem: TDataSource
    DataSet = PurchaseOrderDM.tbPurchaseOrderDTView
    Left = 512
    Top = 152
  end
end
