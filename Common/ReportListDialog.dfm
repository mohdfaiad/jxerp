inherited frmReportDialog: TfrmReportDialog
  Left = 477
  Top = 206
  Caption = 'Report List'
  ClientHeight = 115
  ClientWidth = 292
  Font.Height = -9
  Font.Name = 'Tahoma'
  PixelsPerInch = 96
  TextHeight = 11
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 292
    Height = 63
    Align = alTop
    Caption = 'Avaliable Report:'
    TabOrder = 0
    object ComboBoxReports: TComboBox
      Left = 16
      Top = 21
      Width = 269
      Height = 19
      ItemHeight = 11
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 63
    Width = 292
    Height = 52
    Align = alClient
    TabOrder = 1
    object btSelected: TButton
      Left = 62
      Top = 10
      Width = 73
      Height = 22
      Action = actionSelect
      ModalResult = 1
      TabOrder = 0
      OnClick = btSelectedClick
    end
    object btCancel: TButton
      Left = 171
      Top = 10
      Width = 73
      Height = 22
      Action = ActionCancle
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ActionList1: TActionList
    Left = 152
    Top = 48
    object actionSelect: TAction
      Caption = 'Select'
      ShortCut = 120
    end
    object ActionCancle: TAction
      Caption = 'Cancel'
    end
  end
end
