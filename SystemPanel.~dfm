inherited SystemPanelForm: TSystemPanelForm
  Left = 246
  Top = 136
  VertScrollBar.Range = 0
  BorderStyle = bsDialog
  Caption = 'System Configuration '
  ClientHeight = 364
  ClientWidth = 653
  Font.Name = 'Tahoma'
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 120
  TextHeight = 17
  object GroupBox1: TGroupBox [0]
    Left = 21
    Top = 10
    Width = 503
    Height = 138
    Caption = 'Database Setup:'
    TabOrder = 0
    object Label1: TLabel
      Left = 21
      Top = 39
      Width = 98
      Height = 17
      Caption = 'Database Host :'
    end
    object Label2: TLabel
      Left = 21
      Top = 90
      Width = 129
      Height = 17
      Caption = 'Database File Name :'
    end
    object edHost: TEdit
      Left = 167
      Top = 31
      Width = 326
      Height = 25
      TabOrder = 0
      OnChange = edHostChange
    end
    object edFileName: TEdit
      Left = 167
      Top = 84
      Width = 326
      Height = 25
      TabOrder = 1
      OnChange = edHostChange
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 339
    Width = 653
    SizeGrip = False
  end
  object GroupBox2: TGroupBox
    Left = 21
    Top = 157
    Width = 503
    Height = 169
    Caption = 'Default Setup:'
    Enabled = False
    TabOrder = 1
    object Label3: TLabel
      Left = 21
      Top = 22
      Width = 162
      Height = 17
      Caption = 'Default Transection Type :'
    end
    object Label4: TLabel
      Left = 21
      Top = 63
      Width = 126
      Height = 17
      Caption = 'Default Description :'
    end
    object Label5: TLabel
      Left = 21
      Top = 95
      Width = 123
      Height = 17
      Caption = 'Last Purchase Days:'
    end
    object Label6: TLabel
      Left = 21
      Top = 124
      Width = 108
      Height = 17
      Caption = 'System Tax Rate:'
    end
    object edTrxType: TEdit
      Left = 398
      Top = 22
      Width = 95
      Height = 21
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edHostChange
    end
    object edTrxDescs: TEdit
      Left = 167
      Top = 54
      Width = 326
      Height = 21
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = edHostChange
    end
    object edDayOfPurchase: TEdit
      Left = 398
      Top = 86
      Width = 95
      Height = 21
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object Edit1: TEdit
      Left = 398
      Top = 118
      Width = 95
      Height = 21
      Enabled = False
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = '7.00'
    end
  end
  object btTest: TBitBtn
    Left = 544
    Top = 21
    Width = 98
    Height = 33
    Caption = 'Test'
    TabOrder = 2
    OnClick = btTestClick
  end
  object btSave: TBitBtn
    Left = 544
    Top = 63
    Width = 98
    Height = 32
    Caption = 'Save'
    Enabled = False
    TabOrder = 3
    OnClick = btSaveClick
  end
  object btCancel: TBitBtn
    Left = 544
    Top = 293
    Width = 98
    Height = 33
    Caption = 'OK'
    ModalResult = 2
    TabOrder = 4
    OnClick = btCancelClick
  end
  object Database: TIBDatabase
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = Transaction
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 448
    Top = 96
  end
  object Transaction: TIBTransaction
    Active = False
    AutoStopAction = saNone
    Left = 448
    Top = 136
  end
end
