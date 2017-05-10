unit AbstractDataBrowse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, ActnList, DB, XPStyleActnCtrls, ActnMan, StdCtrls,
  Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar, ImgList,DialogUtils,
  Menus,menulogic,frxClass,StringUtils;

type
  TAbstractDataBrowseForm = class(TBaseUIForm)
    Grid: TwwDBGrid;
    Panel1: TPanel;
    newButton: TBitBtn;
    editButton: TBitBtn;
    postButton: TBitBtn;
    cancelButton: TBitBtn;
    datasource: TDataSource;
    PopupMenu1: TPopupMenu;
    Refresh1: TMenuItem;
    N1: TMenuItem;
    Search1: TMenuItem;
    btPrint: TButton;

    procedure GridRowChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure Refresh1Click(Sender: TObject);
    procedure datasourceDataChange(Sender: TObject; Field: TField);
    procedure btPrintClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
  protected

    fSelectedObject:Variant;
    fPkColumnName:String;
    fdataSet:TDataSet;
    fActionManager: TActionManager;
    reportID,QueryString:string; //indicate where the preprint from report is located
    designable,printable:boolean;//report option 
    menuItem:TMatchedMenuItem;

    newAction,editAction,postAction,refreshAction,deleteAction,exitAction:TAction;


    {action method}
    procedure postActionExecute(Sender: TObject);
    procedure newActionExecute(Sender: TObject);
    procedure editActionExecute(Sender: TObject);
    procedure deleteActionExecute(Sender:TObject);
    procedure exitActionExecute(Sender: TObject);
    procedure refreshActionExecute(Sender: TObject);


    procedure doPostAction(Sender: TObject);virtual;
    procedure doNewAction(Sender: TObject);virtual;
    procedure doEditAction(Sender: TObject);virtual;
    procedure doDeleteAction(sender:TObject);virtual;
    procedure doExitAction(Sender: TObject);virtual;
    procedure doRefreshAction(Sender: TObject);virtual;

    //23 November,2012 support report preview and print in version 3.x
    procedure doPrintPreviewAction(Sender:TObject);virtual;

    //filter report before execute
    procedure doReportFilter(Sender:TObject);virtual;

    //13 Dec,2012
    procedure doReportDesignAction(Sender:TObject); virtual;

    procedure showReport(frxreport:TfrxReport);

    //19/07/2013        check if the configured menu has multiple reports.
    //a simple way to check if reportID splitable by ,
    //for example reportID='AppaymentVoucher.fr3,AppaymentTaxDeduction.fr3'
    function hasMultipleReport(report:string;var reports:TStringList):boolean;

    //24 November ,2012   set sys_menu item where the form is belong to @see Table sys_menus
    procedure setMenuItem(item
    :TMatchedMenuItem);
  //  procedure doSearchAction(searchKey,searchValue:String) ;virtual;
    procedure initComponents;
    procedure initActionComponents;
  private
    procedure PrePostValidate();

    { Private declarations }
  public
      fsuccess :boolean;

    { Public declarations }
   // constructor create(AOwner:TCom)
    constructor create(Aowner:TComponent;keyColumn:String);overload;
    constructor create(Aowner:TComponent;keyColumn:String;mmenu:TMatchedMenuItem);overload;
    procedure setupDataSets;virtual;
    procedure doAfterScroll(dataset:tdataset);
    procedure setstatusbar(docNo:string);
    destructor destroy;overload;


  end;
const KEY_CTRL_P:WORD = 16464; //CONTROL + P
      KEY_CTRL_N:WORD =  16462; //CONTROL + N
      KEY_CTRL_E:WORD = 16453; //CONTROL +E
      KEY_CTRL_D:WORD = 16452; //CONTROL +E
      KEY_ALT_BKSP:WORD = 32776; //ALT + BKSP
      KEY_F5          =  116;    //F5
var
  AbstractDataBrowseForm: TAbstractDataBrowseForm;

implementation
uses Progress,ReportListDialog;


{$R *.dfm}


constructor TAbstractDataBrowseForm.create(Aowner:TComponent;keyColumn:String;mmenu:TMatchedMenuItem);

begin
   create(aowner,KEYCOLUMN);
   menuItem :=mmenu;
   reportId:=menuitem.reportId;
   QueryString :=  menuitem.QueryString;
END;
constructor TAbstractDataBrowseForm.create(Aowner:TComponent;keyColumn:String);
begin
   inherited create(aowner);
   fsuccess:=false;
   try
      setupDataSets;
   except on e:exception do
     errorex('setup dataset error '+e.Message);
   end;
   if (keyColumn='') then
   begin
      errorex('Primary key column could not be blank or null');
      close;
   end
   else
   begin

    fpkColumnName:=keyColumn;
    if (datasource.dataset=nil) then  errorex('datasource has no dataset! Please contract system administrator')
    else
    begin
      fdataSet:=datasource.DataSet;
      fdataset.Open;
      //23 Juen,2010 There is a bug in doAfterScroll cound not refer to fieldbyname(pkKeyField)
     // datasource.DataSet.AfterScroll :=   doAfterScroll;
    end;

   end;
end;
destructor TAbstractDataBrowseForm.destroy;
begin
 factionManager:=nil;

 fdataset.Active:=false;
 inherited;

end;

procedure      TAbstractDataBrowseForm.doAfterScroll(dataset:tdataset);
var value,key:string;
begin

  if (dataset <> nil) then
  begin
  if (dataset.Active) then
     if (dataset.RecordCount>0) then
     begin
       try
        if (fPkColumnName <> '') then
        begin
            key :=  fPkColumnName;
            value :=dataset.fieldbyname(key).AsString;
           statusBar1.panels[1].Text:='AfterScroll '+fPkColumnName+' value='+value ;
        end;
       except on e:Exception do
          errorex(e.Message);
       end;
     end;
  end;   
end;
procedure TAbstractDataBrowseForm.setstatusbar(docNo:string);
begin
    statusbar1.Panels[0].Text:='Current Active['+docNo+']';
end;
procedure  TAbstractDataBrowseForm.setupDataSets;
begin
end;
procedure TAbstractDataBrowseForm.initActionComponents;
var actionItem:TActionClient;
begin
    factionManager :=TActionManager.Create(self);
    postAction :=TAction.Create(factionmanager);
    postAction.Caption:='Post';
    postAction.ShortCut :=KEY_CTRL_P;
    postAction.Enabled:=true;
    postAction.OnExecute :=postActionExecute;
    postAction.ActionList:=factionManager;

    actionItem := factionManager.FindItemByAction(postAction);
    factionManager.AddAction(postAction,actionItem,true);

    NewAction:= Taction.Create(factionmanager);
    NewAction.Caption:='New';
    NewAction.ShortCut :=KEY_CTRL_N;
    NewAction.OnExecute:=newActionExecute;
    newAction.Enabled :=true;
    NewAction.ActionList:=factionManager;
    actionItem := factionManager.FindItemByAction(NewAction);
    factionManager.AddAction(NewAction,actionItem,true);


    
    EditAction:= Taction.Create(factionmanager);
    EditAction.Caption:='Edit';
    EditAction.ShortCut :=KEY_CTRL_E;
    EditAction.OnExecute :=editActionExecute;
    EditAction.Enabled:=true;
    EditAction.ActionList:=factionManager;
    actionItem := factionManager.FindItemByAction(EditAction);
    factionManager.AddAction(EditAction,actionItem,true);

    deleteAction:=TAction.Create(factionManager);
    deleteAction.Caption:='Delete';
    deleteAction.ShortCut:= KEY_CTRL_D; //Control D
    deleteAction.OnExecute:=deleteActionExecute;;
    deleteAction.ActionList:=factionManager;
    actionItem :=factionManager.FindItemByAction(deleteAction);
    factionManager.addAction(deleteAction,actionItem,true);



    ExitAction:= Taction.Create(factionmanager);
    ExitAction.Caption:='Cancel';
    ExitAction.ShortCut :=KEY_ALT_BKSP;
    ExitAction.OnExecute :=exitActionExecute;
    ExitAction.ActionList:=factionManager;
    ExitAction.Enabled:=true;
    actionItem := factionManager.FindItemByAction(ExitAction);
    factionManager.AddAction(ExitAction,actionItem,true);



    refreshAction:= Taction.Create(factionmanager);
    refreshAction.Caption:='Cancel';
    refreshAction.ShortCut :=KEY_f5;
    refreshAction.OnExecute:=refreshActionExecute;
    refreshAction.Enabled:=true;
    refreshAction.ActionList:=factionManager;
    actionItem := factionManager.FindItemByAction(refreshAction);
    factionManager.AddAction(refreshAction,actionItem,true);


    newButton.Action :=newAction;
    newButton.Hint:= newAction.Caption;
    newButton.ShowHint:=true;
    editButton.Action :=editAction;
    editButton.Hint :=editAction.Caption;
    editButton.ShowHint:=true;
    postButton.Action:=postAction;
    postButton.Hint :=postAction.Caption;
    postButton.ShowHint:=true;
    cancelButton.Action:=exitAction;
    cancelButton.hint:=exitAction.Caption;
    cancelButton.ShowHint:=true;
  // postAction :=

{
  object ActionManager: TActionManager
    Images = ImageList1
    Left = 456
    Top = 192
    StyleName = 'XP Style'
    object postAction: TAction
      Caption = 'Post'
      ShortCut = 16464
      OnExecute = postActionExecute
    end
    object newAction: TAction
      Caption = 'New'
      ShortCut = 16462
      OnExecute = newActionExecute
    end
    object editAction: TAction
      Caption = 'Edit'
      ShortCut = 16453
      OnExecute = editActionExecute
    end
    object exitAction: TAction
      Caption = 'Cancel'
      ShortCut = 32776
      OnExecute = exitActionExecute
    end
    object refreshAction: TAction
      Caption = 'Refresh'
      ShortCut = 116
      OnExecute = refreshActionExecute
    end
  end
}
end;
procedure TAbstractDataBrowseForm.initComponents;
begin
 // factionManager := TActionManager.Create(SELF);
  //factionManager.AD
  initActionComponents;
  //delegate onDoubleCliick to editExecute
  grid.OnDblClick:=editActionExecute;
end;


procedure  TAbstractDataBrowseForm.doPostAction (Sender: TObject);
begin
 showMessage('doPost');
end;
procedure  TAbstractDataBrowseForm.doNewAction (Sender: TObject);
begin
 showMessage('doNew');
end;
procedure  TAbstractDataBrowseForm.doEditAction (Sender: TObject);
begin
 showMessage('Edit');
end;

procedure  TAbstractDataBrowseForm.doDeleteAction(Sender: TObject);
begin
  showMessage('doDeleteAction');
end;
procedure  TAbstractDataBrowseForm.doRefreshAction (Sender: TObject);
begin
  if not(FDataSet=nil) then
  begin
       fDataSet.Close;
       fDataSet.Open;
  end else
  begin
     errorex('nil data set');
  end;
end;
procedure  TAbstractDataBrowseForm.doExitAction ;
begin
 close;
end;

procedure TAbstractDataBrowseForm.newActionExecute(Sender: TObject);
begin
  inherited;
  doNewAction(sender);
end;

procedure TAbstractDataBrowseForm.editActionExecute(Sender: TObject);
begin
  fSelectedObject :=datasource.DataSet.fieldbyname(fPkColumnName).AsString;
  //doRefreshAction(sender);
  if (vartostr(fSelectedObject)<>'') then
 begin

   doEditAction(sender);
 end else begin
    fSelectedObject :=datasource.DataSet.fieldbyname(fPkColumnName).AsString;
    if (vartostr(fSelectedObject)<>'') then
    begin
      info('no active document found system automatic find active document ='+vartostr(fSelectedObject)) ;
      doEditAction(sender);
    end
    else errorex('Please exit from application and try again. Sorry');
 end;
end;
procedure  TAbstractDataBrowseForm.deleteActionExecute(sender:TObject);
begin
 if (confirm('Are you sure? Do you want to delete['+varToStr(fselectedObject)+']?')=mrYes) then
  begin
    doDeleteAction(sender);
    doRefreshAction(sender);
  end;

end;

procedure   TAbstractDataBrowseForm.PrePostValidate;
begin

  if (vartostr(fSelectedObject)<>'') then
 begin
 //  doEditAction(sender);
 end else begin
    fSelectedObject :=datasource.DataSet.fieldbyname(fPkColumnName).AsString;
    if (vartostr(fSelectedObject)<>'') then
    begin
      info('no active document found system automatic find active document ='+vartostr(fSelectedObject)) ;
      //doEditAction(sender);
    end
    else errorex('Please exit from application and try again. Sorry');
 end;
end;
procedure TAbstractDataBrowseForm.postActionExecute(Sender: TObject);
var docNo:String;

begin
  PrePostValidate;
  docNo:= vartostr(fselectedObject);
  if (docNo <>'') then
  begin
    if confirm('Do you want to post ['+docNo+']?') =mrYes then
    begin
      Screen.Cursor :=crSQLWait;
      ProgressDialog := TProgressDialog.create(self,'Processing.. ['+docNo+']',10);
      ProgressDialog.BorderStyle:=bsNone;
      ProgressDialog.Show;
      ProgressDialog.Update;
      doPostAction(sender);
      ProgressDialog.doneFor(100);
      ProgressDialog.Update;
      progressDialog.success;
      ProgressDialog.Update;
      progressDialog.Close;
      Screen.Cursor :=crDefault;
      if (fsuccess) then info('Document no:['+docNo+'] has successful posted')
      else errorex('Failed: to post ['+docNo+'] please contract system admin');
    end else
    begin
      info('Process has been abort?');
    end
  end
  else
  begin
     warning('There is no document selected?');
  end;
  doRefreshAction(sender);
end;

procedure TAbstractDataBrowseForm.exitActionExecute(Sender: TObject);
begin
 doExitAction(sender);
end;

procedure TAbstractDataBrowseForm.refreshActionExecute(Sender: TObject);
begin
 doRefreshAction(sender);
end;

procedure TAbstractDataBrowseForm.GridRowChanged(Sender: TObject);
begin
  if not (fdataSet =nil) then
    if (fdataset.active) then
    begin
      fselectedObject:=fdataSet.FieldByName(fPkColumnName).AsString;
      setstatusbar(vartostr(fselectedObject));
    end;
end;

procedure TAbstractDataBrowseForm.FormCreate(Sender: TObject);
begin
  inherited;
  initComponents;
end;

procedure TAbstractDataBrowseForm.GridDblClick(Sender: TObject);
begin
inherited;
 editActionExecute(sender);

end;

procedure TAbstractDataBrowseForm.GridKeyPress(Sender: TObject;
  var Key: Char);
begin
    if (key= #13) then
   begin
     editActionExecute(sender);
   end;

end;

procedure TAbstractDataBrowseForm.Refresh1Click(Sender: TObject);
begin
  inherited;
doRefreshAction(sender);
end;

procedure TAbstractDataBrowseForm.datasourceDataChange(Sender: TObject;
  Field: TField);
begin
  if (datasource.dataset<> nil) then
   if (fpkColumnName<>'') then
     fSelectedObject := datasource.DataSet.FieldByName(fPkColumnName).AsString;
end;


procedure TAbstractDataBrowseForm.doReportFilter(sender:TObject);
begin
    //
end;
procedure TAbstractDataBrowseForm.doPrintPreviewAction  (Sender:TObject);
begin
   if (menuItem <> nil ) then
   begin
       if (menuItem.reportId <>'') then
       BEGIN
           REPORTID:=menuItem.reportId;
           if (menuItem.QueryString<>'') then
           begin
              queryString:=menuItem.queryString ;
              doReportFilter(sender)    ;
           end else
           begin
             warning('Report Query is not defined');
           end;
           //showReport();
       END
       else warning('Report Context is not defined');
   end
   else
   begin
       errorEx('Menu context is not define or ReportId has not been assign');
   end;
end;

procedure TAbstractDataBrowseForm.setMenuItem(ITEM:TMatchedMenuItem);
begin
    menuItem :=item;
end;


procedure TAbstractDataBrowseForm.btPrintClick(Sender: TObject);
begin
 doPrintPreviewAction(sender);

end;

procedure TAbstractDataBrowseForm.showReport(frxReport:TFRXREPORT);
var reportlist:TStringList;
begin
  try
   reportlist:= TStringList.Create;
   if (hasMultipleReport(reportId,reportlist)) then
   begin
       frmReportDialog := TfrmReportDialog.Create(self);
       frmReportDialog.addToList(reportlist[0]);
        frmReportDialog.addToList(reportlist[1]);
       frmReportDialog.ShowModal;
       if  frmReportDialog.ModalResult = mrOK then
       begin
          reportID:=   frmReportDialog.getSelectReport;
       end;
   end;//multiple report
       if confirm('Do you want to open with desing?')=mrYes then
       begin
          doReportDesignAction(frxReport) ;
       end else
       begin
          frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Report\'+reportID);
          frxReport.ShowReport(true);    //show report with clear previouse cache data.
       end;
   finally
    reportlist.Free;
   end ;

end;

procedure TAbstractDataBrowseForm.doReportDesignAction(Sender:TObject) ;
begin
  if (Sender is TFrxReport) then
  begin
    if (Designable) then
    begin
      try
        TFrxReport(Sender).LoadFromFile(ExtractFilePath(Application.ExeName)+'\Report\'+reportID);
        TFrxReport(Sender).designReport;
      except on e:exception do
        errorEx('Could not open JX@Report Designer'+e.Message);
      end;

    end;
  end     
end;

function TAbstractDataBrowseForm.hasMultipleReport(report:string; var reports:TStringList):boolean;
begin
   if (StrPos(Pchar(report),',')  <> nil)then
   begin
    try
     Split(',',report,reports);
     except on e:exception do
     showmessage('Error process report list'+e.Message);
    end;
    if (reports[0]<>'') and (reports[1]<> '') then
       result:=true
       else result:=false;

   end
   else result :=false;

end;

procedure TAbstractDataBrowseForm.Panel1DblClick(Sender: TObject);
begin
  if (QueryString<>'')   then
    ShowMessage(QueryString)
    else showmessage('Report query not define');
end;

end.