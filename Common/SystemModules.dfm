inherited frmSysModule: TfrmSysModule
  Left = 284
  Top = 239
  Width = 804
  Caption = 'System Module Config'
  PixelsPerInch = 120
  TextHeight = 16
  inherited StatusBar1: TfcStatusBar
    Width = 796
  end
  inherited HeaderControl1: THeaderControl
    Width = 796
  end
  inherited ToolBar: TToolBar
    Width = 796
  end
  inherited plGrid: TPanel
    Width = 796
    inherited Bevel1: TBevel
      Width = 794
    end
    inherited DBGrid: TwwDBGrid
      Width = 794
      Selected.Strings = (
        'MODULE_ID'#9'4'#9'MODULE ID'
        'MODULE_DESCRIPTION'#9'60'#9'DESCRIPTION'
        'UPDATE_DATE'#9'18'#9'Last Modified')
    end
    object cxGrid1: TcxGrid
      Left = 1
      Top = 4
      Width = 794
      Height = 194
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1MODULE_ID: TcxGridDBColumn
          DataBinding.FieldName = 'MODULE_ID'
          Width = 78
        end
        object cxGrid1DBTableView1MODULE_DESCRIPTION: TcxGridDBColumn
          DataBinding.FieldName = 'MODULE_DESCRIPTION'
          Width = 338
        end
        object cxGrid1DBTableView1UPDATE_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'UPDATE_DATE'
        end
        object cxGrid1DBTableView1UPDATE_USER: TcxGridDBColumn
          DataBinding.FieldName = 'UPDATE_USER'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
end
