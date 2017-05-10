unit UserManagement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, ImgList, ToolWin,
  ExtCtrls, fcStatusBar, DB, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  wwSpeedButton, wwDBNavigator, wwclearpanel,dialogUtils, wwdblook;

type
  TUserManagementForm = class(TBaseUIForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    btnNew: TToolButton;
    btnEdit: TToolButton;
    btDelete: TToolButton;
    btSave: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    wwDBGrid1: TwwDBGrid;
    datasource: TDataSource;
    wwDBNavigator1: TwwDBNavigator;
    wwDBNavigator1Insert: TwwNavButton;
    wwDBNavigator1Delete: TwwNavButton;
    wwDBNavigator1Edit: TwwNavButton;
    wwDBNavigator1Post: TwwNavButton;
    edCurPasswd: TwwDBEdit;
    edConPasswd: TwwDBEdit;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    password: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btDeleteClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure datasourceDataChange(Sender: TObject; Field: TField);
    procedure ToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
   //canPost:boolean;
    PasswordField:TField;
  public
    { Public declarations }
    procedure dobeforePost(dataset:TDataSet);
    procedure onPasswordChange(Sender:TField);
  end;

var
  UserManagementForm: TUserManagementForm;

implementation
uses wareHouseDM,CommonShareDataModule,JXCRYPTO;

{$R *.dfm}

procedure TUserManagementForm.FormCreate(Sender: TObject);
begin
  inherited;
  //cbRole.LookupTable := CommonShareDM.tbSysRole;
  //cbRole.LookupTable.Open;
  datasource.dataset:=CommonShareDM.tbUser;
  datasource.DataSet.Active:=true;
  Datasource.DataSet.BeforePost := dobeforePost;
  PasswordField := Datasource.DataSet.FindField('CONFIRM_PASSWORD') ;
  PasswordField.OnChange :=  onPasswordChange;

end;

procedure  TUserManagementForm.dobeforePost(dataset:TDataSet);
begin


   dataset.fieldbyName('update_user').asstring:=WarehouseDataManager.User.userid;
   dataset.fieldbyname('update_date').asDateTime:=now;
end;

procedure    TUserManagementForm.onPasswordChange(sender:TField);
begin
    if (sender.DataSet.FieldByName('current_password').asstring <>sender.asstring)  then
   begin
     warning('Password miss matched') ;
     edConPasswd.SetFocus;
    // sender.DataSet.Cancel;
   end ;
end;

procedure TUserManagementForm.btnNewClick(Sender: TObject);
begin
  inherited;
 wwDBNavigator1.Buttons.Items[0].Click;
end;

procedure TUserManagementForm.btnEditClick(Sender: TObject);
begin
  inherited;
 wwDBNavigator1.Buttons.Items[1].Click;
end;

procedure TUserManagementForm.btDeleteClick(Sender: TObject);
begin
  inherited;
 wwDBNavigator1.Buttons.Items[2].Click;
end;

procedure TUserManagementForm.btSaveClick(Sender: TObject);
begin
  inherited;
 wwDBNavigator1.Buttons.Items[3].Click;
end;

procedure TUserManagementForm.datasourceDataChange(Sender: TObject;
  Field: TField);
begin
  btnNew.Enabled:=wwDBNavigator1.Buttons.Items[0].Enabled;
  btnEdit.Enabled:=wwDBNavigator1.Buttons.Items[1].Enabled;
  btDelete.Enabled:=wwDBNavigator1.Buttons.Items[2].Enabled;
  btSave.Enabled:=wwDBNavigator1.Buttons.Items[3].Enabled;
end;

procedure TUserManagementForm.ToolButton1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TUserManagementForm.Button1Click(Sender: TObject);
begin
  datasource.DataSet.Edit;
  datasource.DataSet.FieldByName('current_password').AsString :=   EncryptStr(password.Text,PASSWORD_KEY);
  datasource.DataSet.FieldByName('UPDATE_USER').AsString := WarehouseDataManager.User.userid;
  datasource.dataset.Fieldbyname('UPDATE_DATE').AsDateTime := Now;
  datasource.DataSet.post;


  //(password.Text,PASSWORD_KEY);

end;

procedure TUserManagementForm.Button2Click(Sender: TObject);
begin
  with datasource.DataSet do
  begin

  end;

end;

end.
