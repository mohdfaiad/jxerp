unit TransactionType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDataGridEdit, ImgList, DB, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, wwSpeedButton, wwDBNavigator, wwclearpanel, ComCtrls, ToolWin,
  fcStatusBar, StdCtrls, wwdblook, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

type
  TTransactionTypeForm = class(TBaseDataGridEditForm)
    cbModule: TwwDBLookupCombo;
    dlgMode: TwwDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner:TComponent);override;
  end;

var
  TransactionTypeForm: TTransactionTypeForm;

implementation
uses CommoNsharedataModule;

{$R *.dfm}
constructor TTransactionTypeForm.create(AOwner:TComponent);
begin
   inherited create(AOwner);
   datasource.DataSet:=CommonShareDM.TransactionType;
   cbModule.LookupTable:= Commonsharedm.tbSysModule ;
end;
end.
