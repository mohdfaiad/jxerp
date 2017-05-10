unit CommonShareDataModule;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule, DB, IBCustomDataSet, IBTable, IBQuery,jxcrypto;

type
  TCommonShareDM = class(TAbstractDM)
    TransactionType: TIBTable;
    TransactionTypeTRX_TYPE: TIBStringField;
    TransactionTypeDESCRIPTION: TIBStringField;
    TransactionTypeDEFAULT_MODULE: TIBStringField;
    TransactionTypeUPDATE_USER: TIBStringField;
    TransactionTypeUPDATE_DATE: TDateTimeField;
    tbSysModule: TIBTable;
    tbSysModuleMODULE_ID: TIBStringField;
    tbSysModuleMODULE_DESCRIPTION: TIBStringField;
    tbSysModuleUPDATE_USER: TIBStringField;
    tbSysModuleUPDATE_DATE: TDateTimeField;
    TransactionTypeREQUIRE_REFERENCE: TStringField;
    TransactionTypeMODE: TStringField;
    tbSysMenus: TIBTable;
    tbSysMenusFORM_NAME: TIBStringField;
    tbSysMenusMENU_INDEX: TSmallintField;
    tbSysMenusMODULE_ID: TIBStringField;
    tbSysMenusMENU_ITEM_INDEX: TSmallintField;
    tbSysMenusFORM_CAPTION: TIBStringField;
    tbSysMenusENABLED: TIBStringField;
    tbSysMenusUPDATE_DATE: TDateTimeField;
    tbSysMenusUPDATE_USER: TIBStringField;
    tbSysMenusFORM_TAG: TSmallintField;
    tbSysMenusHISTORY_CAPTION: TIBStringField;
    tbSysMenusMAIN_MENU_NAME: TIBStringField;
    qryAdhoc: TIBQuery;
    tbSysRole: TIBTable;
    tbSysRoleGROUP_ID: TIBStringField;
    tbSysRoleGROUP_NAME: TIBStringField;
    tbSysRoleEDIT_FLAG: TIBStringField;
    tbSysRoleDELETE_FLAG: TIBStringField;
    tbSysRoleINSERT_FLAG: TIBStringField;
    tbSysRoleUPDATE_USER: TIBStringField;
    tbSysRoleUPDATE_DATE: TDateTimeField;
    tbSysRoleDEFAULT_MODULE_ID: TIBStringField;
    tbSysRoleADMIN_USER: TIBStringField;
    tbSysRoleEXECUTE_FLAG: TIBStringField;
    tbSysRolePOST_FLAG: TIBStringField;
    dsSysModule: TDataSource;
    tbTaxRate: TIBTable;
    tbWHTax: TIBTable;
    tbWHTaxWHTAX_CODE: TIBStringField;
    tbWHTaxWHTAX_RATE: TFloatField;
    tbTaxRateSCHEME_CD: TIBStringField;
    tbTaxRateTAX_CD: TIBStringField;
    tbTaxRateDESCS: TIBStringField;
    tbTaxRateTAX_RATE: TFloatField;
    tbTaxRateUPDATE_USER: TIBStringField;
    tbTaxRateUPDATE_DATE: TDateTimeField;
    tbTaxRateINCL: TIBStringField;
    tbBank: TIBTable;
    tbBankBANK_CODE: TIBStringField;
    tbBankBANK_NAME: TIBStringField;
    tbBankBRANCH_NAME: TIBStringField;
    tbBankREMARKS: TIBStringField;
    tbBankUPDATE_USER: TIBStringField;
    tbBankUPDATE_DATE: TDateTimeField;
    TransactionTypePREFIX: TIBStringField;
    TransactionTypeCURRENT_NO: TIntegerField;
    tbCompany: TIBTable;
    tbCompanyENG_NAME: TIBStringField;
    tbCompanyTHAI_NAME: TIBStringField;
    tbCompanyADDRESS1: TIBStringField;
    tbCompanyADDRESS2: TIBStringField;
    tbCompanyADDRESS3: TIBStringField;
    tbCompanyTH_ADDRESS1: TIBStringField;
    tbCompanyTH_ADDRESS2: TIBStringField;
    tbCompanyTH_ADDRESS3: TIBStringField;
    tbCompanyPOSTCODE: TIBStringField;
    tbCompanyPROVINCE: TIBStringField;
    tbCompanyTELEPHONE: TIBStringField;
    tbCompanyFAX: TIBStringField;
    tbCompanyLOGO: TBlobField;
    tbCompanyEMAIL: TIBStringField;
    tbCompanyWEBSITE: TIBStringField;
    tbCompanyTAXREGISTERED_ID: TStringField;
    tbUser: TIBTable;
    tbUserUSER_ID: TIBStringField;
    tbUserUSER_NAME: TIBStringField;
    tbUserCURRENT_PASSWORD: TIBStringField;
    tbUserUPDATE_USER: TIBStringField;
    tbUserUPDATE_DATE: TDateTimeField;
    tbUserACTIVED: TIBStringField;
    tbUserCONFIRM_PASSWORD: TIBStringField;
    tbUserDEFAULT_MODULE: TStringField;
    tbUserGROUP_ID: TIBStringField;
    tbUserOLD_PASSWORD: TIBStringField;
    dsUser: TDataSource;
    tbCompanyBRANCH_CODE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TransactionTypeBeforePost(DataSet: TDataSet);
    procedure tbSysModuleBeforePost(DataSet: TDataSet);
    procedure TransactionTypeNewRecord(DataSet: TDataSet);
    procedure tbUserBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     //to generate document number as refering in document prefix
    function generateDocument(trxtype:string):string;
    function changePassword(userID,NewPassword:string):boolean;
  end;

var
  CommonShareDM: TCommonShareDM;

implementation
USES WarehouseDM;

{$R *.dfm}

procedure TCommonShareDM.DataModuleCreate(Sender: TObject);
begin
  inherited;
 setTransaction(WarehouseDataManager.IBTransaction);
end;

procedure TCommonShareDM.TransactionTypeBeforePost(DataSet: TDataSet);
begin
  inherited;
  dataset.fieldbyname('update_user').asstring:=WarehouseDataManager.User.userid;
  dataset.FieldByName('update_date').asDateTime:=now;
end;

procedure TCommonShareDM.tbSysModuleBeforePost(DataSet: TDataSet);
begin
  inherited;
  dataset.fieldbyname('update_user').asstring:=WarehouseDataManager.User.userid;
  dataset.FieldByName('update_date').asDateTime:=now;
end;

procedure TCommonShareDM.TransactionTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('require_reference').AsString :='Y';

end;
function TCommonShareDM.generateDocument(trxtype:string):string;
begin
//TODO:
 result:='NO/DOC';
end;
procedure TCommonShareDM.tbUserBeforePost(DataSet: TDataSet);
begin
  inherited;
  updateModifiedRecord(dataset);
end;

function TCommonShareDM.changePassword(userID,NewPassword:string):boolean;
   procedure handleError(e:exception);
   begin
      ShowMessage('Could not change password for '+userid+'[Error:'+e.Message+']');
   end;
begin

  with  tbUser do
  begin
  try
     open;
     if tbUser.Locate('user_id',userID,[loCaseInsensitive])   then
     begin
     Edit;
     FieldByName('current_password').AsString :=   EncryptStr(NewPassword,PASSWORD_KEY);
     FieldByName('UPDATE_USER').AsString := 'crack';
     Fieldbyname('UPDATE_DATE').AsDateTime := Now;
     post;
     result:=true;
     end else
     begin
        raise Exception.Create('Could not find user id'+userID);
     end
    except on e:exception do
       handleError(e);
    end;
  end;
end;

end.
