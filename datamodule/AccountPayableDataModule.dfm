inherited AccountPayableDM: TAccountPayableDM
  OldCreateOrder = True
  Left = 247
  Top = 195
  Height = 244
  Width = 723
  object tbCreditor: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    MasterSource = MasterSetupDM.dsApCreditorType
    TableName = 'AP_CREDITOR'
    Left = 56
    Top = 32
    object tbCreditorCREDITOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'CREDITOR_ACCT'
      Size = 10
    end
    object tbCreditorNAME: TIBStringField
      DisplayWidth = 60
      FieldName = 'NAME'
      Size = 60
    end
    object tbCreditorTH_NAME: TIBStringField
      DisplayWidth = 150
      FieldName = 'TH_NAME'
      Size = 150
    end
    object tbCreditorCREDITOR_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'CREDITOR_TYPE'
      Visible = False
      Size = 2
    end
    object tbCreditorADDRESS1: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS1'
      Visible = False
      Size = 60
    end
    object tbCreditorADDRESS2: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS2'
      Visible = False
      Size = 60
    end
    object tbCreditorADDRESS3: TIBStringField
      DisplayWidth = 60
      FieldName = 'ADDRESS3'
      Visible = False
      Size = 60
    end
    object tbCreditorTELPHONE: TIBStringField
      DisplayWidth = 30
      FieldName = 'TELPHONE'
      Visible = False
      Size = 30
    end
    object tbCreditorFAX_NO: TIBStringField
      DisplayWidth = 30
      FieldName = 'FAX_NO'
      Visible = False
      Size = 30
    end
    object tbCreditorSHORT_NAME: TIBStringField
      DisplayWidth = 45
      FieldName = 'SHORT_NAME'
      Visible = False
      Size = 45
    end
    object tbCreditorCREDIT_TERM: TSmallintField
      DisplayWidth = 10
      FieldName = 'CREDIT_TERM'
      Visible = False
    end
    object tbCreditorTAX_REGISTED_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'TAX_REGISTED_NO'
      Visible = False
      Size = 15
    end
    object tbCreditorBALANCE_AMT: TFloatField
      DisplayWidth = 10
      FieldName = 'BALANCE_AMT'
      Visible = False
    end
    object tbCreditorCREDIT_LIMIT: TFloatField
      DisplayWidth = 10
      FieldName = 'CREDIT_LIMIT'
      Visible = False
    end
    object tbCreditorCURRENCY_CODE: TIBStringField
      DisplayWidth = 4
      FieldName = 'CURRENCY_CODE'
      Visible = False
      Size = 4
    end
    object tbCreditorMAILADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR1'
      Visible = False
      Size = 60
    end
    object tbCreditorMAILADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR2'
      Visible = False
      Size = 60
    end
    object tbCreditorMAILADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'MAILADDR3'
      Visible = False
      Size = 60
    end
    object tbCreditorUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
    object tbCreditorUPDATE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
      Visible = False
    end
    object tbCreditorTAX_CD: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CD'
      Visible = False
      Size = 2
    end
    object tbCreditorPROVINCE: TIBStringField
      DisplayWidth = 30
      FieldName = 'PROVINCE'
      Visible = False
      Size = 30
    end
    object tbCreditorPOSTCODE: TIBStringField
      DisplayWidth = 10
      FieldName = 'POSTCODE'
      Visible = False
      Size = 10
    end
    object tbCreditorTH_ADDR1: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR1'
      Visible = False
      Size = 60
    end
    object tbCreditorTH_ADDR2: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR2'
      Visible = False
      Size = 60
    end
    object tbCreditorTH_ADDR3: TIBStringField
      DisplayWidth = 60
      FieldName = 'TH_ADDR3'
      Visible = False
      Size = 60
    end
  end
  object tbPaymentHD: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = tbPaymentHDBeforePost
    OnNewRecord = tbPaymentHDNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'AP_PAYMENT_HD'
    Left = 56
    Top = 96
    object tbPaymentHDDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Size = 15
    end
    object tbPaymentHDDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object tbPaymentHDTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      OnChange = tbPaymentHDTRX_TYPEChange
      Size = 2
    end
    object tbPaymentHDCREDITOR_ACCT: TIBStringField
      FieldName = 'CREDITOR_ACCT'
      OnChange = tbPaymentHDCREDITOR_ACCTChange
      Size = 10
    end
    object tbPaymentHDREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Size = 15
    end
    object tbPaymentHDREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
    end
    object tbPaymentHDDESCS: TIBStringField
      FieldName = 'DESCS'
      Size = 60
    end
    object tbPaymentHDREMARK: TIBStringField
      FieldName = 'REMARK'
      Size = 150
    end
    object tbPaymentHDBANK_CODE: TIBStringField
      FieldName = 'BANK_CODE'
      Size = 4
    end
    object tbPaymentHDCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Size = 4
    end
    object tbPaymentHDBATHTEXT: TIBStringField
      FieldName = 'BATHTEXT'
      Size = 255
    end
    object tbPaymentHDSTATUS: TIBStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object tbPaymentHDUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbPaymentHDUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbPaymentHDCreditorName: TStringField
      FieldKind = fkLookup
      FieldName = 'CreditorName'
      LookupDataSet = tbCreditor
      LookupKeyFields = 'CREDITOR_ACCT'
      LookupResultField = 'NAME'
      KeyFields = 'CREDITOR_ACCT'
      Size = 60
      Lookup = True
    end
    object tbPaymentHDbankname: TStringField
      FieldKind = fkLookup
      FieldName = 'bankname'
      LookupDataSet = CommonShareDM.tbBank
      LookupKeyFields = 'BANK_CODE'
      LookupResultField = 'BANK_NAME'
      KeyFields = 'BANK_CODE'
      Lookup = True
    end
    object tbPaymentHDCurrency: TStringField
      FieldKind = fkLookup
      FieldName = 'Currency'
      LookupDataSet = tbCreditor
      LookupKeyFields = 'CREDITOR_ACCT'
      LookupResultField = 'CURRENCY_CODE'
      KeyFields = 'CREDITOR_ACCT'
      Lookup = True
    end
  end
  object tbPaymentDT: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    AfterPost = tbPaymentDTAfterPost
    OnNewRecord = tbPaymentDTNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    IndexFieldNames = 'DOC_NO;DOC_DATE;TRX_TYPE;CREDITOR_ACCT'
    MasterFields = 'DOC_NO;DOC_DATE;TRX_TYPE;CREDITOR_ACCT'
    MasterSource = dsPaymentD
    TableName = 'AP_PAYMENT_DT'
    Left = 136
    Top = 32
    object tbPaymentDTLINE_NO: TSmallintField
      DisplayWidth = 10
      FieldName = 'LINE_NO'
    end
    object tbPaymentDTINVOICE_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'INVOICE_NO'
      Size = 15
    end
    object tbPaymentDTINVOICE_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'INVOICE_DATE'
    end
    object tbPaymentDTLINE_DESCS: TIBStringField
      DisplayWidth = 60
      FieldName = 'LINE_DESCS'
      Size = 60
    end
    object tbPaymentDTBASE_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'BASE_AMOUNT'
    end
    object tbPaymentDTTAX_CODE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TAX_CODE'
      OnChange = tbPaymentDTTAX_CODEChange
      Size = 2
    end
    object tbPaymentDTTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_RATE'
      OnChange = tbPaymentDTTAX_RATEChange
    end
    object tbPaymentDTTAX_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TAX_AMOUNT'
    end
    object tbPaymentDTWHTAX_CODE: TIBStringField
      DisplayWidth = 2
      FieldName = 'WHTAX_CODE'
      OnChange = tbPaymentDTWHTAX_CODEChange
      Size = 2
    end
    object tbPaymentDTWHTAX_RATE: TFloatField
      DisplayWidth = 10
      FieldName = 'WHTAX_RATE'
      OnChange = tbPaymentDTWHTAX_RATEChange
    end
    object tbPaymentDTWHTAX_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'WHTAX_AMOUNT'
    end
    object tbPaymentDTTOTAL_AMOUNT: TFloatField
      DisplayWidth = 10
      FieldName = 'TOTAL_AMOUNT'
    end
    object tbPaymentDTLINE_REMARK: TIBStringField
      DisplayWidth = 60
      FieldName = 'LINE_REMARK'
      Size = 255
    end
    object tbPaymentDTDOC_NO: TIBStringField
      DisplayWidth = 15
      FieldName = 'DOC_NO'
      Visible = False
      Size = 15
    end
    object tbPaymentDTDOC_DATE: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DOC_DATE'
      Visible = False
    end
    object tbPaymentDTTRX_TYPE: TIBStringField
      DisplayWidth = 2
      FieldName = 'TRX_TYPE'
      Visible = False
      Size = 2
    end
    object tbPaymentDTCREDITOR_ACCT: TIBStringField
      DisplayWidth = 10
      FieldName = 'CREDITOR_ACCT'
      Visible = False
      Size = 10
    end
  end
  object dsPaymentD: TDataSource
    DataSet = tbPaymentHD
    Left = 136
    Top = 96
  end
  object qryUnpostAPPayment: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    OnCalcFields = qryUnpostAPPaymentCalcFields
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *  from ap_payment_hd h , ap_payment_dt  D'
      'where h.doc_no = d.doc_no'
      'and h.status ='#39'N'#39)
    Left = 232
    Top = 32
    object qryUnpostAPPaymentDOC_NO: TIBStringField
      FieldName = 'DOC_NO'
      Origin = 'AP_PAYMENT_HD.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpostAPPaymentDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Origin = 'AP_PAYMENT_HD.DOC_DATE'
      Required = True
    end
    object qryUnpostAPPaymentTRX_TYPE: TIBStringField
      FieldName = 'TRX_TYPE'
      Origin = 'AP_PAYMENT_HD.TRX_TYPE'
      Required = True
      Size = 2
    end
    object qryUnpostAPPaymentCREDITOR_ACCT: TIBStringField
      FieldName = 'CREDITOR_ACCT'
      Origin = 'AP_PAYMENT_HD.CREDITOR_ACCT'
      Required = True
      Size = 10
    end
    object qryUnpostAPPaymentREF_NO: TIBStringField
      FieldName = 'REF_NO'
      Origin = 'AP_PAYMENT_HD.REF_NO'
      Size = 15
    end
    object qryUnpostAPPaymentREF_DATE: TDateTimeField
      FieldName = 'REF_DATE'
      Origin = 'AP_PAYMENT_HD.REF_DATE'
    end
    object qryUnpostAPPaymentDESCS: TIBStringField
      FieldName = 'DESCS'
      Origin = 'AP_PAYMENT_HD.DESCS'
      Size = 60
    end
    object qryUnpostAPPaymentREMARK: TIBStringField
      FieldName = 'REMARK'
      Origin = 'AP_PAYMENT_HD.REMARK'
      Size = 150
    end
    object qryUnpostAPPaymentBANK_CODE: TIBStringField
      FieldName = 'BANK_CODE'
      Origin = 'AP_PAYMENT_HD.BANK_CODE'
      Size = 4
    end
    object qryUnpostAPPaymentCURRENCY_CODE: TIBStringField
      FieldName = 'CURRENCY_CODE'
      Origin = 'AP_PAYMENT_HD.CURRENCY_CODE'
      Size = 4
    end
    object qryUnpostAPPaymentBATHTEXT: TIBStringField
      FieldName = 'BATHTEXT'
      Origin = 'AP_PAYMENT_HD.BATHTEXT'
      Size = 255
    end
    object qryUnpostAPPaymentSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = 'AP_PAYMENT_HD.STATUS'
      Size = 1
    end
    object qryUnpostAPPaymentUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Origin = 'AP_PAYMENT_HD.UPDATE_USER'
      Size = 10
    end
    object qryUnpostAPPaymentUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
      Origin = 'AP_PAYMENT_HD.UPDATE_DATE'
    end
    object qryUnpostAPPaymentDOC_NO1: TIBStringField
      FieldName = 'DOC_NO1'
      Origin = 'AP_PAYMENT_DT.DOC_NO'
      Required = True
      Size = 15
    end
    object qryUnpostAPPaymentDOC_DATE1: TDateTimeField
      FieldName = 'DOC_DATE1'
      Origin = 'AP_PAYMENT_DT.DOC_DATE'
      Required = True
    end
    object qryUnpostAPPaymentTRX_TYPE1: TIBStringField
      FieldName = 'TRX_TYPE1'
      Origin = 'AP_PAYMENT_DT.TRX_TYPE'
      Required = True
      Size = 2
    end
    object qryUnpostAPPaymentCREDITOR_ACCT1: TIBStringField
      FieldName = 'CREDITOR_ACCT1'
      Origin = 'AP_PAYMENT_DT.CREDITOR_ACCT'
      Required = True
      Size = 10
    end
    object qryUnpostAPPaymentLINE_NO: TSmallintField
      FieldName = 'LINE_NO'
      Origin = 'AP_PAYMENT_DT.LINE_NO'
      Required = True
    end
    object qryUnpostAPPaymentINVOICE_NO: TIBStringField
      FieldName = 'INVOICE_NO'
      Origin = 'AP_PAYMENT_DT.INVOICE_NO'
      Size = 15
    end
    object qryUnpostAPPaymentINVOICE_DATE: TDateTimeField
      FieldName = 'INVOICE_DATE'
      Origin = 'AP_PAYMENT_DT.INVOICE_DATE'
    end
    object qryUnpostAPPaymentLINE_DESCS: TIBStringField
      FieldName = 'LINE_DESCS'
      Origin = 'AP_PAYMENT_DT.LINE_DESCS'
      Size = 60
    end
    object qryUnpostAPPaymentLINE_REMARK: TIBStringField
      FieldName = 'LINE_REMARK'
      Origin = 'AP_PAYMENT_DT.LINE_REMARK'
      Size = 255
    end
    object qryUnpostAPPaymentTAX_CODE: TIBStringField
      FieldName = 'TAX_CODE'
      Origin = 'AP_PAYMENT_DT.TAX_CODE'
      Size = 2
    end
    object qryUnpostAPPaymentTAX_RATE: TFloatField
      FieldName = 'TAX_RATE'
      Origin = 'AP_PAYMENT_DT.TAX_RATE'
    end
    object qryUnpostAPPaymentTAX_AMOUNT: TFloatField
      FieldName = 'TAX_AMOUNT'
      Origin = 'AP_PAYMENT_DT.TAX_AMOUNT'
    end
    object qryUnpostAPPaymentWHTAX_CODE: TIBStringField
      FieldName = 'WHTAX_CODE'
      Origin = 'AP_PAYMENT_DT.WHTAX_CODE'
      Size = 2
    end
    object qryUnpostAPPaymentWHTAX_RATE: TFloatField
      FieldName = 'WHTAX_RATE'
      Origin = 'AP_PAYMENT_DT.WHTAX_RATE'
    end
    object qryUnpostAPPaymentWHTAX_AMOUNT: TFloatField
      FieldName = 'WHTAX_AMOUNT'
      Origin = 'AP_PAYMENT_DT.WHTAX_AMOUNT'
    end
    object qryUnpostAPPaymentBASE_AMOUNT: TFloatField
      FieldName = 'BASE_AMOUNT'
      Origin = 'AP_PAYMENT_DT.BASE_AMOUNT'
    end
    object qryUnpostAPPaymentTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
      Origin = 'AP_PAYMENT_DT.TOTAL_AMOUNT'
    end
    object qryUnpostAPPaymentNetAmount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NetAmount'
      Calculated = True
    end
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 232
    Top = 96
  end
  object spPostPayment: TIBStoredProc
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    StoredProcName = 'X_AP_POST_PAYMENT'
    Left = 336
    Top = 40
  end
end
