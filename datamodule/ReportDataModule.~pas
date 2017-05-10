unit ReportDataModule;

{**
    This unit is contains report components(FastReport).
  Note that we have migrate all query from Ireport (java jasper). and use
  fast report and front end report solutions.

    so the data module will generally share main connection from wahareDM.Pas

  Author: Tinnarat Aromsuk

  Date : 19.Nov.2012



****}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,warehousedm, DB, IBCustomDataSet, IBQuery,
  frxClass, frxDBSet, frxDesgn;

type
  TReportDM = class(TAbstractDM)
    frxReport: TfrxReport;
    JXQuery: TfrxDBDataset;
    JXNativeQuery: TIBQuery;
    frxDesigner1: TfrxDesigner;
  private

  //query:TfrxIBXQuery
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReportDM: TReportDM;

implementation

{$R *.dfm}

end.
