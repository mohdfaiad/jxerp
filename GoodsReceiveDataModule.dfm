inherited GoodsReceiveDM: TGoodsReceiveDM
  OldCreateOrder = True
  Left = 726
  Top = 246
  Height = 501
  Width = 752
  object tbGRNHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = tbGRNHDAfterScroll
    BeforePost = tbGRNHDBeforePost
    OnNewRecord = tbGRNHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'PO_GRN_HD'
    Left = 32
    Top = 16
    object tbGRNHDSUPP_CODE: TIBStringField
      FieldName = 'SUPP_CODE'
      OnChange = tbGRNHDSUPP_CODEChange
      Size = 10
    end
    object tbGRNHDGRN_NO: TIBStringField
      FieldName = 'GRN_NO'
      Size = 15
    end
    object tbGRNHDGRN_DATE: TDateTimeField
      FieldName = 'GRN_DATE'
    end
    object tbGRNHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbGRNHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbGRNHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbGRNHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbGRNHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbGRNHDGRN_AMT: TFloatField
      FieldName = 'GRN_AMT'
    end
    object tbGRNHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbGRNHDTAX_AMT: TFloatField
      FieldName = 'TAX_AMT'
    end
    object tbGRNHDREMARKS: TIBStringField
      FieldName = 'REMARKS'
      Size = 800
    end
    object tbGRNHDNAME: TIBStringField
      FieldName = 'NAME'
      Size = 60
    end
    object tbGRNHDNO_OF_PRINT: TSmallintField
      FieldName = 'NO_OF_PRINT'
    end
  end
  object tbGRNDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbGRNDTAfterPost
    AfterScroll = tbGRNDTAfterScroll
    BeforeDelete = tbGRNDTBeforeDelete
    OnNewRecord = tbGRNDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'GRN_NO'
    MasterFields = 'GRN_NO'
    MasterSource = dsGRNHD
    TableName = 'PO_GRN_DT'
    Left = 32
    Top = 72
    object tbGRNDTORDER_NO: TIBStringField
      DisplayLabel = 'Purchase No'
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      OnChange = tbGRNDTORDER_NOChange
      Size = 15
    end
    object tbGRNDTORDER_DATE: TDateTimeField
      DisplayLabel = 'Purchase Date'
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
    end
    object tbGRNDTITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      OnChange = tbGRNDTITEM_CODEChange
      Size = 15
    end
    object tbGRNDTITEM_DESCS: TIBStringField
      DisplayLabel = 'Item Description'
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Size = 60
    end
    object tbGRNDTUNIT_COST: TFloatField
      DisplayLabel = 'Purchase Price'
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
    end
    object tbGRNDTMARK_UP: TSmallintField
      DisplayLabel = 'Markup(%)'
      DisplayWidth = 10
      FieldName = 'MARK_UP'
    end
    object tbGRNDTORDER_QTY: TFloatField
      DisplayLabel = 'Order Qty'
      DisplayWidth = 10
      FieldName = 'ORDER_QTY'
    end
    object tbGRNDTReceivedQty: TFloatField
      DisplayLabel = 'Received Qty'
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'ReceivedQty'
      LookupDataSet = qryPurchaseOrderDetailLookup
      LookupKeyFields = 'ITEM_CODE'
      LookupResultField = 'GRN_QTY'
      KeyFields = 'ITEM_CODE'
      Lookup = True
    end
    object tbGRNDTGRN_QTY: TFloatField
      DisplayLabel = 'Receive Qty'
      DisplayWidth = 10
      FieldName = 'GRN_QTY'
      OnChange = tbGRNDTGRN_QTYChange
    end
    object tbGRNDTTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
    end
    object tbGRNDTREMARKS: TIBStringField
      DisplayWidth = 60
      FieldName = 'REMARKS'
      Visible = False
      Size = 60
    end
    object tbGRNDTDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Visible = False
    end
    object tbGRNDTTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Visible = False
    end
    object tbGRNDTBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      Visible = False
    end
    object tbGRNDTTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbGRNDTGRN_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'GRN_LINE'
      Visible = False
    end
    object tbGRNDTDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Visible = False
      Size = 2
    end
    object tbGRNDTTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      Visible = False
    end
    object tbGRNDTSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Visible = False
      Size = 1
    end
    object tbGRNDTGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Visible = False
      Size = 10
    end
    object tbGRNDTLOT_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      Visible = False
      Size = 15
    end
    object tbGRNDTORDER_LINE: TSmallintField
      DisplayWidth = 10
      FieldName = 'ORDER_LINE'
      Visible = False
    end
    object tbGRNDTSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Visible = False
      Size = 10
    end
    object tbGRNDTGRN_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'GRN_DATE'
      Visible = False
    end
    object tbGRNDTGRN_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'GRN_NO'
      Visible = False
      Size = 15
    end
    object tbGRNDTUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Visible = False
      Size = 4
    end
  end
  object qryUnPostedGRN: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT h.supp_code, h.grn_no,h.grn_date,h.descs, h.name FROM PO_' +
        'GRN_HD h '
      'WHERE'
      ' h.STATUS ='#39'N'#39)
    Left = 488
    Top = 152
    object qryUnPostedGRNGRN_NO: TIBStringField
      DisplayLabel = 'Document No'
      DisplayWidth = 15
      FieldName = 'GRN_NO'
      Origin = 'PO_GRN_HD.GRN_NO'
      Required = True
      Size = 15
    end
    object qryUnPostedGRNGRN_DATE: TDateTimeField
      DisplayLabel = 'Document Date'
      DisplayWidth = 18
      FieldName = 'GRN_DATE'
      Origin = 'PO_GRN_HD.GRN_DATE'
      Required = True
    end
    object qryUnPostedGRNNAME: TIBStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'PO_GRN_HD.NAME'
      Size = 60
    end
    object qryUnPostedGRNDESCS: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'PO_GRN_HD.DESCS'
      Visible = False
      Size = 60
    end
    object qryUnPostedGRNSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_GRN_HD.SUPP_CODE'
      Required = True
      Visible = False
      Size = 10
    end
  end
  object sp_postGrn: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_POST_GRN'
    Left = 24
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'ACCT_CD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOC_NO'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UPDATE_USER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MODULE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MODE'
        ParamType = ptInput
      end>
  end
  object tbSupplier: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'NAME'
    TableName = 'PO_SUPPLIER'
    Left = 120
    Top = 176
    object tbSupplierSUPPLIER_CD: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPPLIER_CD'
      Size = 10
    end
    object tbSupplierNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 60
    end
    object tbSupplierCREDITOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'CREDITOR_ACCT'
      Visible = False
      Size = 10
    end
    object tbSupplierADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Visible = False
      Size = 60
    end
    object tbSupplierADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 60
    end
    object tbSupplierADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 60
    end
    object tbSupplierTELEPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELEPHONE'
      Visible = False
      Size = 30
    end
    object tbSupplierFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Visible = False
      Size = 30
    end
    object tbSupplierCONTRACT_PERSON: TIBStringField
      DisplayWidth = 60
      FieldName = 'CONTRACT_PERSON'
      Visible = False
      Size = 60
    end
    object tbSupplierUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbSupplierUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbSupplierTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbSupplierPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Visible = False
      Size = 10
    end
    object tbSupplierPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Visible = False
      Size = 30
    end
  end
  object qrySupplierLookup: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from po_supplier')
    Left = 624
    Top = 64
    object qrySupplierLookupSUPPLIER_CD: TIBStringField
      DisplayLabel = 'SUPPLIER CD'
      DisplayWidth = 10
      FieldName = 'SUPPLIER_CD'
      Origin = 'PO_SUPPLIER.SUPPLIER_CD'
      Required = True
      Size = 10
    end
    object qrySupplierLookupNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Origin = 'PO_SUPPLIER.NAME'
      Required = True
      Size = 60
    end
    object qrySupplierLookupCREDITOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'CREDITOR_ACCT'
      Origin = 'PO_SUPPLIER.CREDITOR_ACCT'
      Required = True
      Visible = False
      Size = 10
    end
    object qrySupplierLookupADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Origin = 'PO_SUPPLIER.ADDRESS1'
      Visible = False
      Size = 60
    end
    object qrySupplierLookupADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Origin = 'PO_SUPPLIER.ADDRESS2'
      Visible = False
      Size = 60
    end
    object qrySupplierLookupADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Origin = 'PO_SUPPLIER.ADDRESS3'
      Visible = False
      Size = 60
    end
    object qrySupplierLookupTELEPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELEPHONE'
      Origin = 'PO_SUPPLIER.TELEPHONE'
      Visible = False
      Size = 30
    end
    object qrySupplierLookupFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Origin = 'PO_SUPPLIER.FAX_NO'
      Visible = False
      Size = 30
    end
    object qrySupplierLookupCONTRACT_PERSON: TIBStringField
      DisplayWidth = 60
      FieldName = 'CONTRACT_PERSON'
      Origin = 'PO_SUPPLIER.CONTRACT_PERSON'
      Visible = False
      Size = 60
    end
    object qrySupplierLookupUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'PO_SUPPLIER.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qrySupplierLookupUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'PO_SUPPLIER.UPDATE_DATE'
      Visible = False
    end
    object qrySupplierLookupTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'PO_SUPPLIER.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qrySupplierLookupPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Origin = 'PO_SUPPLIER.POSTCODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qrySupplierLookupPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Origin = 'PO_SUPPLIER.PROVINCE'
      Required = True
      Visible = False
      Size = 30
    end
  end
  object qryPurchaseOrderHeaderLookup: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterScroll = qryPurchaseOrderHeaderLookupAfterScroll
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PO_ORDER_HD'
      'WHERE STATUS ='#39'A'#39
      'and supp_code =:pSuppCode')
    Left = 488
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pSuppCode'
        ParamType = ptUnknown
      end>
    object qryPurchaseOrderHeaderLookupORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'PO_ORDER_HD.ORDER_NO'
      Required = True
      Size = 15
    end
    object qryPurchaseOrderHeaderLookupORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'PO_ORDER_HD.ORDER_DATE'
      Required = True
    end
    object qryPurchaseOrderHeaderLookupREF_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'REF_NO'
      Origin = 'PO_ORDER_HD.REF_NO'
      Size = 15
    end
    object qryPurchaseOrderHeaderLookupREF_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'REF_DATE'
      Origin = 'PO_ORDER_HD.REF_DATE'
    end
    object qryPurchaseOrderHeaderLookupSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_ORDER_HD.SUPP_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryPurchaseOrderHeaderLookupUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Origin = 'PO_ORDER_HD.UPDATE_USER'
      Visible = False
      Size = 10
    end
    object qryPurchaseOrderHeaderLookupUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Origin = 'PO_ORDER_HD.UPDATE_DATE'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'PO_ORDER_HD.STATUS'
      Required = True
      Visible = False
      Size = 1
    end
    object qryPurchaseOrderHeaderLookupORDER_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'ORDER_AMT'
      Origin = 'PO_ORDER_HD.ORDER_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupDESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'DESCS'
      Origin = 'PO_ORDER_HD.DESCS'
      Visible = False
      Size = 60
    end
    object qryPurchaseOrderHeaderLookupDELIVERY_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DELIVERY_DATE'
      Origin = 'PO_ORDER_HD.DELIVERY_DATE'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupFAX_TO: TIBStringField
      DisplayWidth = 60
      FieldName = 'FAX_TO'
      Origin = 'PO_ORDER_HD.FAX_TO'
      Visible = False
      Size = 60
    end
    object qryPurchaseOrderHeaderLookupCC_TO: TIBStringField
      DisplayWidth = 60
      FieldName = 'CC_TO'
      Origin = 'PO_ORDER_HD.CC_TO'
      Visible = False
      Size = 60
    end
    object qryPurchaseOrderHeaderLookupREMARKS: TIBStringField
      DisplayWidth = 1500
      FieldName = 'REMARKS'
      Origin = 'PO_ORDER_HD.REMARKS'
      Visible = False
      Size = 1500
    end
    object qryPurchaseOrderHeaderLookupNO_OF_PRINT: TSmallintField
      DisplayWidth = 10
      FieldName = 'NO_OF_PRINT'
      Origin = 'PO_ORDER_HD.NO_OF_PRINT'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupVALIDITY: TDateTimeField
      DisplayWidth = 18
      FieldName = 'VALIDITY'
      Origin = 'PO_ORDER_HD.VALIDITY'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupMARKUP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARKUP'
      Origin = 'PO_ORDER_HD.MARKUP'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Origin = 'PO_ORDER_HD.TAX_AMT'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Origin = 'PO_ORDER_HD.DISCS_AMT'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupTERM_OF_PAYMENT: TSmallintField
      DisplayWidth = 10
      FieldName = 'TERM_OF_PAYMENT'
      Origin = 'PO_ORDER_HD.TERM_OF_PAYMENT'
      Visible = False
    end
    object qryPurchaseOrderHeaderLookupSTOCK_EMPTY: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_EMPTY'
      Origin = 'PO_ORDER_HD.STOCK_EMPTY'
      Visible = False
      Size = 1
    end
  end
  object qryPurchaseOrderDetailLookup: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PO_ORDER_DT'
      'where order_no =:pOrderNo'
      'and status ='#39'A'#39
      ''
      '')
    Left = 488
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOrderNo'
        ParamType = ptUnknown
      end>
    object qryPurchaseOrderDetailLookupITEM_CODE: TIBStringField
      DisplayWidth = 15
      FieldName = 'ITEM_CODE'
      Origin = 'PO_ORDER_DT.ITEM_CODE'
      Required = True
      Size = 15
    end
    object qryPurchaseOrderDetailLookupUNIT_COST: TFloatField
      DisplayWidth = 10
      FieldName = 'UNIT_COST'
      Origin = 'PO_ORDER_DT.UNIT_COST'
      Required = True
    end
    object qryPurchaseOrderDetailLookupQTY: TFloatField
      DisplayWidth = 10
      FieldName = 'QTY'
      Origin = 'PO_ORDER_DT.QTY'
      Required = True
    end
    object qryPurchaseOrderDetailLookupLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
      Origin = 'PO_ORDER_DT.LINE_NO'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupORDER_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'ORDER_DATE'
      Origin = 'PO_ORDER_DT.ORDER_DATE'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupSUPP_CODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'SUPP_CODE'
      Origin = 'PO_ORDER_DT.SUPP_CODE'
      Required = True
      Visible = False
      Size = 10
    end
    object qryPurchaseOrderDetailLookupUOM: TIBStringField
      DisplayWidth = 4
      FieldName = 'UOM'
      Origin = 'PO_ORDER_DT.UOM'
      Required = True
      Visible = False
      Size = 4
    end
    object qryPurchaseOrderDetailLookupORDER_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'ORDER_NO'
      Origin = 'PO_ORDER_DT.ORDER_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object qryPurchaseOrderDetailLookupITEM_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'ITEM_DESCS'
      Origin = 'PO_ORDER_DT.ITEM_DESCS'
      Required = True
      Visible = False
      Size = 60
    end
    object qryPurchaseOrderDetailLookupTOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMT'
      Origin = 'PO_ORDER_DT.TOTAL_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupREMARKS: TIBStringField
      DisplayWidth = 60
      FieldName = 'REMARKS'
      Origin = 'PO_ORDER_DT.REMARKS'
      Required = True
      Visible = False
      Size = 60
    end
    object qryPurchaseOrderDetailLookupDISCS_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_AMT'
      Origin = 'PO_ORDER_DT.DISCS_AMT'
      Visible = False
    end
    object qryPurchaseOrderDetailLookupTAX_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMT'
      Origin = 'PO_ORDER_DT.TAX_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupBASE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMT'
      Origin = 'PO_ORDER_DT.BASE_AMT'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Origin = 'PO_ORDER_DT.TAX_CD'
      Required = True
      Visible = False
      Size = 2
    end
    object qryPurchaseOrderDetailLookupDISCS_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'DISCS_CD'
      Origin = 'PO_ORDER_DT.DISCS_CD'
      Visible = False
      Size = 2
    end
    object qryPurchaseOrderDetailLookupTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      Origin = 'PO_ORDER_DT.TAX_RATE'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupSTATUS: TIBStringField
      DisplayWidth = 1
      FieldName = 'STATUS'
      Origin = 'PO_ORDER_DT.STATUS'
      Visible = False
      Size = 1
    end
    object qryPurchaseOrderDetailLookupGRN_QTY: TFloatField
      DisplayWidth = 10
      FieldName = 'GRN_QTY'
      Origin = 'PO_ORDER_DT.GRN_QTY'
      Required = True
      Visible = False
    end
    object qryPurchaseOrderDetailLookupLOT_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'LOT_NO'
      Origin = 'PO_ORDER_DT.LOT_NO'
      Required = True
      Visible = False
      Size = 15
    end
    object qryPurchaseOrderDetailLookupGROUP_ID: TIBStringField
      DisplayWidth = 10
      FieldName = 'GROUP_ID'
      Origin = 'PO_ORDER_DT.GROUP_ID'
      Required = True
      Visible = False
      Size = 10
    end
    object qryPurchaseOrderDetailLookupMARKUP: TSmallintField
      DisplayWidth = 10
      FieldName = 'MARKUP'
      Origin = 'PO_ORDER_DT.MARKUP'
      Visible = False
    end
    object qryPurchaseOrderDetailLookupDISCS_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'DISCS_RATE'
      Origin = 'PO_ORDER_DT.DISCS_RATE'
      Visible = False
    end
    object qryPurchaseOrderDetailLookupUPDATE_PRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'UPDATE_PRICE'
      Origin = 'PO_ORDER_DT.UPDATE_PRICE'
      Visible = False
    end
    object qryPurchaseOrderDetailLookupUPDATE_TOTAL_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'UPDATE_TOTAL_AMT'
      Origin = 'PO_ORDER_DT.UPDATE_TOTAL_AMT'
      Visible = False
    end
    object qryPurchaseOrderDetailLookupSTOCK_EMPTY: TIBStringField
      DisplayWidth = 1
      FieldName = 'STOCK_EMPTY'
      Origin = 'PO_ORDER_DT.STOCK_EMPTY'
      Visible = False
      Size = 1
    end
  end
  object dsPurchaseOrderHeaderLookup: TDataSource
    DataSet = qryPurchaseOrderHeaderLookup
    Left = 656
    Top = 8
  end
  object qryGRNSummary: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select sum(base_amt) as BaseAmount,sum(tax_amt) as TaxAmount,sum' +
        '(total_amt) as TotalAmount'
      'from  po_grn_dt'
      'where     GRN_NO =:paramGRNNO'
      '')
    Left = 608
    Top = 160
    ParamData = <
      item
        DataType = ftString
        Name = 'paramGRNNO'
        ParamType = ptInput
        Value = 'GRNFPC0700/09'
      end>
    object qryGRNSummaryBASEAMOUNT: TFloatField
      FieldName = 'BASEAMOUNT'
    end
    object qryGRNSummaryTAXAMOUNT: TFloatField
      FieldName = 'TAXAMOUNT'
    end
    object qryGRNSummaryTOTALAMOUNT: TFloatField
      FieldName = 'TOTALAMOUNT'
    end
  end
  object dsGRNHD: TDataSource
    DataSet = tbGRNHD
    Left = 96
    Top = 16
  end
  object dsGRNDT: TDataSource
    DataSet = tbGRNDT
    Left = 96
    Top = 72
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from rdb$database')
    Left = 480
    Top = 216
  end
  object qryOrderItemLookupByItemCode: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM PO_ORDER_DT'
      'where order_no =:pOrderNo'
      'and item_code =:pItemCode')
    Left = 488
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOrderNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pItemCode'
        ParamType = ptUnknown
      end>
  end
  object qrygetCurrentGoodsReceiveQty: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select sum(grn_qty) from po_grn_dt'
      'where order_no =:pOrderNo'
      'and item_code = :pItemCode')
    Left = 496
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pOrderNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pItemCode'
        ParamType = ptUnknown
      end>
  end
end