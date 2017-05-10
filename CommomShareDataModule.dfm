inherited CommomShareDM: TCommomShareDM
  OldCreateOrder = True
  Left = 372
  Top = 218
  Height = 344
  Width = 511
  object TransactionType: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = TransactionTypeBeforePost
    OnNewRecord = TransactionTypeNewRecord
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TRX_TYPE'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DESCRIPTION'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DEFAULT_MODULE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UPDATE_USER'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UPDATE_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'REQUIRE_REFERENCE'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY107'
        Fields = 'TRX_TYPE'
        Options = [ixPrimary, ixUnique]
      end>
    IndexFieldNames = 'TRX_TYPE'
    StoreDefs = True
    TableName = 'TRANSACTIONTYPE'
    Left = 40
    Top = 8
    object TransactionTypeTRX_TYPE: TIBStringField
      DisplayLabel = 'Trx Prefix.'
      DisplayWidth = 8
      FieldName = 'TRX_TYPE'
      Size = 2
    end
    object TransactionTypeDESCRIPTION: TIBStringField
      DisplayLabel = 'Description'
      DisplayWidth = 30
      FieldName = 'DESCRIPTION'
      Size = 60
    end
    object TransactionTypeDEFAULT_MODULE: TIBStringField
      DisplayLabel = 'DDefault Module'
      DisplayWidth = 60
      FieldName = 'DEFAULT_MODULE'
      Size = 60
    end
    object TransactionTypeUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Last Modified '
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
    end
    object TransactionTypeREQUIRE_REFERENCE: TStringField
      DefaultExpression = #39'N'#39
      DisplayLabel = 'REQUIRE REFERENCE'
      DisplayWidth = 1
      FieldName = 'REQUIRE_REFERENCE'
      Size = 1
    end
    object TransactionTypeMODE: TStringField
      DisplayWidth = 1
      FieldName = 'MODE'
      Size = 1
    end
    object TransactionTypeUPDATE_USER: TIBStringField
      DisplayLabel = 'Last Modifier'
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
  end
  object SysModule: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BeforePost = SysModuleBeforePost
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SYS_MODULES'
    Left = 40
    Top = 80
    object SysModuleMODULE_ID: TIBStringField
      DisplayLabel = 'MODULE ID'
      DisplayWidth = 4
      FieldName = 'MODULE_ID'
      Size = 4
    end
    object SysModuleMODULE_DESCRIPTION: TIBStringField
      DisplayLabel = 'DESCRIPTION'
      DisplayWidth = 60
      FieldName = 'MODULE_DESCRIPTION'
      Size = 60
    end
    object SysModuleUPDATE_DATE: TDateTimeField
      DisplayLabel = 'Last Modified'
      DisplayWidth = 18
      FieldName = 'UPDATE_DATE'
    end
    object SysModuleUPDATE_USER: TIBStringField
      DisplayWidth = 10
      FieldName = 'UPDATE_USER'
      Visible = False
      Size = 10
    end
  end
  object tbSysMenus: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SYS_MENUS'
    Left = 128
    Top = 8
    object tbSysMenusFORM_NAME: TIBStringField
      FieldName = 'FORM_NAME'
      Size = 25
    end
    object tbSysMenusMENU_INDEX: TSmallintField
      FieldName = 'MENU_INDEX'
    end
    object tbSysMenusMODULE_ID: TIBStringField
      FieldName = 'MODULE_ID'
      Size = 4
    end
    object tbSysMenusMENU_ITEM_INDEX: TSmallintField
      FieldName = 'MENU_ITEM_INDEX'
    end
    object tbSysMenusFORM_CAPTION: TIBStringField
      FieldName = 'FORM_CAPTION'
      Size = 60
    end
    object tbSysMenusENABLED: TIBStringField
      FieldName = 'ENABLED'
      Size = 1
    end
    object tbSysMenusUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbSysMenusUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbSysMenusFORM_TAG: TSmallintField
      FieldName = 'FORM_TAG'
    end
    object tbSysMenusHISTORY_CAPTION: TIBStringField
      FieldName = 'HISTORY_CAPTION'
      Size = 60
    end
    object tbSysMenusMAIN_MENU_NAME: TIBStringField
      FieldName = 'MAIN_MENU_NAME'
      Size = 30
    end
  end
  object qryAdhoc: TIBQuery
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    Left = 120
    Top = 80
  end
  object tbSysRole: TIBTable
    Database = WarehouseDataManager.IBDatabase
    Transaction = WarehouseDataManager.IBTransaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'SYS_GROUPS'
    Left = 208
    Top = 8
    object tbSysRoleGROUP_ID: TIBStringField
      FieldName = 'GROUP_ID'
      Size = 4
    end
    object tbSysRoleGROUP_NAME: TIBStringField
      FieldName = 'GROUP_NAME'
      Size = 60
    end
    object tbSysRoleEDIT_FLAG: TIBStringField
      FieldName = 'EDIT_FLAG'
      Size = 1
    end
    object tbSysRoleDELETE_FLAG: TIBStringField
      FieldName = 'DELETE_FLAG'
      Size = 1
    end
    object tbSysRoleINSERT_FLAG: TIBStringField
      FieldName = 'INSERT_FLAG'
      Size = 1
    end
    object tbSysRoleUPDATE_USER: TIBStringField
      FieldName = 'UPDATE_USER'
      Size = 10
    end
    object tbSysRoleUPDATE_DATE: TDateTimeField
      FieldName = 'UPDATE_DATE'
    end
    object tbSysRoleDEFAULT_MODULE_ID: TIBStringField
      FieldName = 'DEFAULT_MODULE_ID'
      Size = 4
    end
    object tbSysRoleADMIN_USER: TIBStringField
      FieldName = 'ADMIN_USER'
      Size = 1
    end
    object tbSysRoleEXECUTE_FLAG: TIBStringField
      FieldName = 'EXECUTE_FLAG'
      Size = 1
    end
    object tbSysRolePOST_FLAG: TIBStringField
      FieldName = 'POST_FLAG'
      Size = 1
    end
  end
end