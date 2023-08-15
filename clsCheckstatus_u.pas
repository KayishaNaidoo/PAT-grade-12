unit clsCheckstatus_u; //Class uses Database ImportExport

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Math, DB, ADODB, ImportExport_dm;

 Type
 TCheckStatus = Class(TObject)

 private
 fClientID, fTrackingID: Integer;
 public
  Constructor Create( sClientID, sTrackingID: String);
  function GetID: String;
  function GetName: string;
  function GetStatus: Integer;
  function GetStatusText: string;
  function GetFlightCompany: string;
  function SetImportExport: String;
  function GetCompanytel: string;
  function GetCountryDeparture: string;
  function GetCountryArrival: string;
  function GetCommodity:string;
  function GetValue: string;
 End;


implementation

{ TCheckStatus }

constructor TCheckStatus.Create(sClientID, sTrackingID: String);
begin
  fTrackingID:= StrToInt(sTrackingID);
  fClientID:= StrToInt(sClientID);
end;

function TCheckStatus.GetCommodity: string;
begin
      if dmImportExport.tblCommodities.Locate('TrackingID',ftrackingID,[])= True then
      begin
        Result:= dmImportExport.tblCommodities['CommodityType'];//Returns the Commodity called for from the database using the
      end;
end;

function TCheckStatus.GetCompanytel: string;
var
  iFlightID: Integer;
begin
  if dmImportExport.tblLink.Locate('TrackingID',fTrackingID,[])= True then
  //Locates and Collects the Company Telephone number using the tracking ID from the link table to get the Flight ID and getting the company tel from the link table.
  begin
    iFlightID:= dmImportExport.tblLink['FlightID'];
      if dmImportExport.tblFlightCompany.Locate('FlightID',iFlightID,[])= True then
      begin
        Result:=dmImportExport.tblFlightCompany['FlightTel'];
      end;
  end;
end;

function TCheckStatus.GetCountryArrival: string;
var
 iCountryID: Integer;
begin
if dmImportExport.tblLink.Locate('TrackingID',fTrackingID,[])= True then
 //Locates and Collects the relevant countiess and assigns them to the departure and arrival country depending on the Export or Import value.
  begin
   iCountryID:= dmImportExport.tblLink['CountryID'];
   if dmImportExport.tblCountry.Locate('CountryID',iCountryID,[]) then
        begin
            // Countries involved
          if SetImportExport = 'Import' then
            begin
              Result:= 'South Africa' ;
              //If it is Exported then it will arrive in SA.
            end
              else
                begin
                  Result:= dmImportExport.tblCountry['CountryName'] ;//If exported then the country related in the data base will be the arrival country
                end;
        end;
end;//end of if tracking

end;

function TCheckStatus.GetCountryDeparture: string;
var
  iCountryID: Integer;
begin
if dmImportExport.tblLink.Locate('TrackingID',fTrackingID,[])= True then
//Locates and Collects the relevant countiess and assigns them to the departure and arrival country depending on the Export or Import value.
  begin
   iCountryID:= dmImportExport.tblLink['CountryID'];
   if dmImportExport.tblCountry.Locate('CountryID',iCountryID,[]) then
        begin
            // Countries involved
          if SetImportExport = 'Import' then
            begin
              Result:= dmImportExport.tblCountry['CountryName'] ;
              //If imported  the country related in the data base will be the departure country
            end
              else
                begin
                  Result:= 'South Africa' ;
                  //If imported SA will be the arrival country
                end;
        end;
  end;
end;

function TCheckStatus.GetFlightCompany: string;
var
  iFlightID: Integer;
begin
   if dmImportExport.tblLink.Locate('TrackingID',fTrackingID,[])= True then
   //Get Flight company from table using tracking ID in Link table, to relate to flight table
  begin
    iFlightID:= dmImportExport.tblLink['FlightID'];

      if dmImportExport.tblFlightCompany.Locate('FlightID',iFlightID,[])= True then
      begin
        Result:=dmImportExport.tblFlightCompany['FlightCompany']  ;
      end;
  end;
end;

function TCheckStatus.GetID: String;
//Returns the Flight ID string with a '#' added before it.
begin
  Result:= '# ' + IntToStr(fTrackingID);
end;

function TCheckStatus.GetName: string;
begin   //Returns the name of the User
if dmImportExport.tblClient.Locate('ClientID',fClientID,[])= True then
  begin
    result:= dmImportExport.tblClient['ClientSurname'] + ' '+dmImportExport.tblClient['ClientName'] + ' #' + IntToStr(fClientID) + '#';
  end;
end;

function TCheckStatus.GetStatus: Integer;
begin  //Returns the status of the User as an integer to load the progress bar
  if dmImportExport.tblCommodities.Locate('TrackingID',fTrackingID,[])= True then
  begin
    if dmImportExport.tblCommodities['Status']= 'Departed' then
      begin
        Result:= 1;
      end;

     if dmImportExport.tblCommodities['Status']= 'Almost Halfway' then
      begin
       Result:= 30;
      end;

       if dmImportExport.tblCommodities['Status']= 'Halfway' then
      begin
        Result:= 50;
      end;

       if dmImportExport.tblCommodities['Status']= 'Almost there' then
      begin
       Result:= 75;
      end;

       if dmImportExport.tblCommodities['Status']= 'Arrived' then
      begin
        Result:= 100;
      end;
  end;

end;

function TCheckStatus.GetStatusText: string;
begin  //Gets Status from tblCommodities
if dmImportExport.tblCommodities.Locate('TrackingID',fTrackingID,[])= True then
  begin
  Result:= UpperCase(dmImportExport.tblCommodities['Status']);
  end;
end;

function TCheckStatus.GetValue: string;
begin  //Gets value of Commodity and converts it to display in right notation
  if dmImportExport.tblCommodities.Locate('TrackingID',fTrackingID,[])= True then
    begin
      Result:= 'R ' + FloatTostr(dmImportExport.tblCommodities['Value']*1000000);
    end;

end;

function TCheckStatus.SetImportExport: String;
begin
  Result:= dmImportExport.tblCommodities['ImportExport'];
end;

end.
