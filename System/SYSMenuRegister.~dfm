object frmSysMenuRegister: TfrmSysMenuRegister
  Left = 217
  Top = 242
  Width = 944
  Height = 518
  Align = alTop
  Caption = 'System Menu Register'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Times New Roman'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 928
    Height = 15
    Align = alTop
    Caption = 'Please select system view avaliable menus'
    Color = clHighlight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label7: TLabel
    Left = 16
    Top = 80
    Width = 61
    Height = 14
    Caption = '*New Menu: '
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 47
    Align = alTop
    Caption = 'System Module'
    TabOrder = 0
    Height = 64
    Width = 928
    object Label2: TLabel
      Left = 8
      Top = 24
      Width = 51
      Height = 14
      Caption = 'System ID:'
    end
    object Label5: TLabel
      Left = 306
      Top = 27
      Width = 258
      Height = 15
      Caption = 'PLEASE CLICK SEARCH TO RETRIVE MENU'
      Color = clHighlight
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cbSysModule: TcxDBLookupComboBox
      Left = 69
      Top = 18
      DataBinding.DataField = 'MODULE_ID'
      DataBinding.DataSource = DataSource1
      Properties.KeyFieldNames = 'MODULE_ID'
      Properties.ListColumns = <
        item
          FieldName = 'MODULE_ID'
        end
        item
          FieldName = 'MODULE_DESCRIPTION'
        end>
      Properties.ListSource = CommonShareDM.dsSysModule
      Properties.OnChange = cbSysModulePropertiesChange
      TabOrder = 0
      Width = 228
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 111
    Align = alTop
    Caption = 'Avaliable Menu'
    TabOrder = 1
    Height = 152
    Width = 928
    object cxGrid1: TcxGrid
      Left = 2
      Top = 19
      Width = 924
      Height = 131
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsAvaliableMenu
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.NavigatorHints = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.GroupByBox = False
        Styles.ContentOdd = SystemMenuDM.cxStyle232
        Styles.Header = SystemMenuDM.cxStyle153
        object cxGrid1DBTableView1MODULE_ID: TcxGridDBColumn
          Caption = 'System ID'
          DataBinding.FieldName = 'MODULE_ID'
        end
        object cxGrid1DBTableView1MENU_INDEX: TcxGridDBColumn
          Caption = 'Menu Level'
          DataBinding.FieldName = 'MENU_INDEX'
          Width = 41
        end
        object cxGrid1DBTableView1MENU_ITEM_INDEX: TcxGridDBColumn
          Caption = 'Menu Item Level'
          DataBinding.FieldName = 'MENU_ITEM_INDEX'
          Width = 33
        end
        object cxGrid1DBTableView1FORM_CAPTION: TcxGridDBColumn
          Caption = 'Menu Name'
          DataBinding.FieldName = 'FORM_CAPTION'
          Width = 286
        end
        object cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn
          Caption = 'Registered Date'
          DataBinding.FieldName = 'UPDATE_DATE'
          Width = 169
        end
        object cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn
          Caption = 'Registered By'
          DataBinding.FieldName = 'UPDATE_USER'
          Width = 92
        end
        object cxGrid1DBTableView1Column3: TcxGridDBColumn
          Caption = 'Report Id'
          DataBinding.FieldName = 'REPORTID'
        end
        object cxGrid1DBTableView1ENABLED: TcxGridDBColumn
          Caption = 'Active'
          DataBinding.FieldName = 'ENABLED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.DisplayChecked = 'Yes'
          Properties.ValueChecked = 'Y'
          Properties.ValueUnchecked = 'N'
          Width = 33
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 263
    Align = alClient
    Caption = 'New Menu Register'
    TabOrder = 2
    Height = 217
    Width = 928
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 58
      Height = 14
      Caption = 'Menu Level:'
    end
    object Label4: TLabel
      Left = 13
      Top = 78
      Width = 61
      Height = 14
      Caption = '*New Menu: '
    end
    object Label6: TLabel
      Left = 274
      Top = 43
      Width = 7
      Height = 15
      Caption = '*'
      Color = clActiveCaption
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 35
      Top = 104
      Width = 31
      Height = 14
      Caption = '*Key: '
    end
    object Label9: TLabel
      Left = 27
      Top = 128
      Width = 47
      Height = 14
      Caption = 'Report Id:'
    end
    object gbQuery: TcxGroupBox
      Left = 424
      Top = 16
      Caption = 'Report Query'
      TabOrder = 2
      Height = 129
      Width = 409
      object cxQueryMemo: TcxDBMemo
        Left = 2
        Top = 19
        Align = alClient
        DataBinding.DataField = 'QUERYSTRING'
        DataBinding.DataSource = dsAvaliableMenu
        Properties.ScrollBars = ssBoth
        TabOrder = 0
        Height = 108
        Width = 405
      end
    end
    object cxComboBox2: TcxComboBox
      Left = 80
      Top = 40
      Properties.Items.Strings = (
        'Setup Master Data'
        'Transaction'
        'Reports'
        'Inquiry')
      Properties.MaxLength = 0
      Properties.OnChange = cxComboBox2PropertiesChange
      TabOrder = 0
      Text = 'Setup OR Configuration'
      Width = 193
    end
    object cxRegistName: TcxTextEdit
      Left = 80
      Top = 70
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 329
    end
    object cxQueryOpen: TcxButton
      Left = 756
      Top = 149
      Width = 75
      Height = 25
      Caption = 'Open Query'
      TabOrder = 3
      OnClick = cxQueryOpenClick
    end
  end
  object ControlBar1: TControlBar
    Left = 0
    Top = 15
    Width = 928
    Height = 32
    Align = alTop
    TabOrder = 3
    object btSearch: TcxButton
      Left = 11
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Search'
      TabOrder = 0
      OnClick = btSearchClick
    end
    object btRegist: TcxButton
      Left = 112
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Regist Menu'
      TabOrder = 1
      OnClick = btRegistClick
    end
    object btCancel: TcxButton
      Left = 584
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Exit'
      TabOrder = 2
      OnClick = btCancelClick
    end
    object btDelete: TcxButton
      Left = 211
      Top = 2
      Width = 75
      Height = 22
      Caption = 'Delete'
      TabOrder = 3
      OnClick = btDeleteClick
    end
  end
  object cxTextKey: TcxTextEdit
    Left = 80
    Top = 360
    Hint = 'Command Search Key'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 329
  end
  object cxTextReportId: TcxTextEdit
    Left = 80
    Top = 386
    Hint = 'Command Search Key'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 329
  end
  object dsAvaliableMenu: TDataSource
    DataSet = SystemMenuDM.tbSysMenu
    Left = 128
    Top = 177
  end
  object DataSource1: TDataSource
    DataSet = CommonShareDM.tbSysMenus
    Left = 512
    Top = 79
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.\SQL'
    Filter = '*.sql'
    Left = 560
    Top = 303
  end
end
