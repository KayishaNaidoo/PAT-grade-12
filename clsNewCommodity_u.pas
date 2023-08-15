unit clsNewCommodity_u;

interface

uses
SysUtils, Math, ImportExport_dm;

type
TNewCommodity = class(TObject)
private
  fTrackingID, fClientID, fImportExport, fCommodityType,  fCountry, fCompany: String;
  fValue: Integer;
public
  constructor Create(sTrackingID, sClientID, sImportExport, sCommodityType,  sCountry, sCompany: String; iValue: Integer);
  procedure NewOrder;
  procedure LinkTableOrder;
end;

implementation

{ TInsertRecord }

constructor TNewCommodity.Create(sTrackingID, sClientID, sImportExport,
  sCommodityType, sCountry, sCompany: String; iValue: Integer);
begin
//All data assigned to program private variables to communicate with the program
  fTrackingID := sTrackingID;
  fClientID := sClientID;
  fImportExport:= sImportExport;
  fCommodityType:= sCommodityType;
  fCountry:= sCountry;
  fCompany:= sCompany;
  fValue:= iValue;
end;

procedure TNewCommodity.LinkTableOrder;
var
  iCompanyID, iCountryID: Integer;
begin
//Creates Order in Link table to allow normalised data and data relationships
  if dmImportExport.tblFlightCompany.Locate('FlightCompany',fCompany,[])= True then
      begin
        iCompanyID:= dmImportExport.tblFlightCompany['FlightID'];
      end;
  if dmImportExport.tblCountry.Locate('CountryName',fCountry,[])= True then
      begin
        iCountryID:= dmImportExport.tblCountry['CountryID'];
      end;

  begin

  with dmImportExport do
    begin
      qryImportExport.SQL.Clear;
      qryImportExport.SQL.Add('INSERT INTO tblLink');
      qryImportExport.SQL.Add('(TrackingID, ClientID, FlightID, CountryID)');
      qryImportExport.SQL.Add('VALUES');
      qryImportExport.SQL.Add('(' + fTrackingID + ',' + fClientID + ','+ IntToStr(iCompanyID) + ',' + IntToStr(iCountryID) + ')');
      qryImportExport.ExecSQL;

       //Refresh Table with changes and display relevant info into dbEdits
        qryImportExport.Close;
        qryImportExport.SQL.Clear;
        qryImportExport.SQL.Add('SELECT tblLink.TrackingID,ClientName, ClientSurname,tblCommodities.CommodityType,');
        qryImportExport.SQL.Add('tblCommodities.ImportExport,tblCommodities.Status,tblCommodities.Value,tblCountry.CountryName,FlightCompany');
        qryImportExport.SQL.Add(' FROM tblCommodities, tblLink, tblCountry,tblFlightCompany, tblClient');
        qryImportExport.SQL.Add('WHERE (tblLink.TrackingID=tblCommodities.TrackingID) AND');
        qryImportExport.SQL.Add('(tblLink.FlightID=tblFlightCompany.FlightID) AND');
        qryImportExport.SQL.Add('(tblLink.CountryID= tblCountry.CountryID) AND( tblLink.ClientId=tblClient.ClientID)');
        qryImportExport.SQL.Add('ORDER BY tblLink.TrackingID ASC');
        qryImportExport.Open;
    end;

    //Alternative code
  { dmImportExport.tbllink.Insert;
   dmImportExport.tbllink['TrackingID']:= fTrackingID;
   dmImportExport.tbllink['ClientID']:= fClientID;
   dmImportExport.tbllink['FlightID']:= iCompanyID;
   dmImportExport.tbllink['CountryID']:= iCountryID;
   dmImportExport.tbllink.Post;}

  end;

end;

procedure TNewCommodity.NewOrder;
begin
      //Creates new order in tblCommodities with all data related to what the administrator enters into the program

          dmImportExport.tblCommodities.Insert;
          dmImportExport.tblCommodities['TrackingID']:= fTrackingID;
          dmImportExport.tblCommodities['ImportExport']:= fImportExport;
          dmImportExport.tblCommodities['CommodityType']:= fCommodityType;
          dmImportExport.tblCommodities['Value']:= IntToStr(fValue);
          dmImportExport.tblCommodities['Status']:= 'Departed';
          dmImportExport.tblCommodities.Post;


        end;

end.
