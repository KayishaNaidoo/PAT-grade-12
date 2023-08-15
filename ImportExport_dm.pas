unit ImportExport_dm;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmImportExport = class(TDataModule)
    conImportExport: TADOConnection;
    tblClient: TADOTable;
    tblCountry: TADOTable;
    tblFlightCompany: TADOTable;
    tblLink: TADOTable;
    tblCommodities: TADOTable;
    dsCommodities: TDataSource;
    dsClient: TDataSource;
    dsCountry: TDataSource;
    dsFlightCompany: TDataSource;
    dsLink: TDataSource;
    qryImportExport: TADOQuery;
    dsqry: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmImportExport: TdmImportExport;  //Everything connected on module

implementation

{$R *.dfm}

end.
