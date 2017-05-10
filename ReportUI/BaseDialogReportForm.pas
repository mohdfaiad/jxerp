unit BaseDialogReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseForm, StdCtrls, Buttons, ExtCtrls,frxClass, fcStatusBar,menulogic,dialogutils;

type
  TBaseReportDialog = class(TBaseUIForm)
    Panel1: TPanel;
    lbTooltop: TLabel;
    btDesignPreview: TBitBtn;
    btCancel: TBitBtn;
    procedure btDesignPreviewClick(Sender: TObject);
    procedure StatusBar1Panels1DblClick(Sender: TObject);
 protected
      designable,printable:boolean;//report option
      
    { Private declarations }
    menuItem:TMatchedMenuItem;
    reportId:String;
    queryString:String;
    frxReport:TFrxReport;

      procedure showReport(frxReport:TFRXREPORT);
      procedure doDesignAndPreviewReport(sender:TObject);
      procedure doReportFilter(Sender:TObject);virtual   ;
      procedure designReport(Sender:Tobject);


  public
    { Public declarations }
   // constructor create(Aowner:TComponent;keyColumn:String);overload;


    constructor create(Aowner:TComponent;mmenu:TMatchedMenuItem);overload;

  end;

var
  BaseReportDialog: TBaseReportDialog;

implementation

{$R *.dfm}

constructor TBaseReportDialog.Create(Aowner:TComponent;mmenu:TMatchedMenuItem) ;
procedure setStatusBarInformation;
begin
   statusbar1.Panels[0].Text :='ReportID:'+ reportId;
   if (QueryString<>'') then statusbar1.Panels[1].Text :='Query is Ready:'
     else     statusbar1.Panels[1].Text :='Query is NULL'    ;
end;
begin
    inherited create(Aowner)  ;
  //  menuItem := mmenu;
    menuItem :=mmenu;
    reportId:=menuitem.reportId;
    QueryString :=  menuitem.QueryString;
    setStatusBarInformation;
    designable :=true;

end;



procedure TBaseReportDialog. doDesignAndPreviewReport(sender:TObject);
begin
 if (menuItem <> nil ) then
   begin
       if (menuItem.reportId <>'') then
       BEGIN
          // REPORTID:=menuItem.reportId;
           if (menuItem.QueryString<>'') then
           begin
              queryString:=menuItem.queryString ;
              doReportFilter(sender)    ;
           end else
           begin
             warning('Report Query is not defined');
           end;
         if confirm('Do you want to open with desing?')=mrYes then
         begin
            designReport(frxReport) ;
         end else
         begin
          showReport(frxReport);    //show report with clear previouse cache data.
         end;


       END
       else warning('Report Context is not defined');
   end
   else
   begin
       errorEx('Menu context is not define or ReportId has not been assign');
   end;
end;

procedure TBaseReportDialog.btDesignPreviewClick(Sender: TObject);
begin
  inherited;
  doDesignAndPreviewReport(sender);
end;

procedure  TBaseReportDialog.doReportFilter(sender:TObject);
begin
   //virtual
end;

procedure TBaseReportDialog.showReport(frxReport:TfrxReport);
begin
   frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Report\'+reportID);
   frxReport.ShowReport(true);    //show report with clear previouse cache data.
end;
procedure TBaseReportDialog.designReport(Sender:Tobject);
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





procedure TBaseReportDialog.StatusBar1Panels1DblClick(Sender: TObject);
begin
  inherited;
  //show debug sql windows
end;

end.
