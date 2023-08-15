unit clsTradeValues_u;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Math, DB, ADODB, ImportExport_dm;

 Type
 TTradeValues = Class(TObject)

 public
  Constructor Create;
  function GetImportValues : real;
  function DisplayImports: String;
  function GetExportValues: Real;
  function DisplayExports: String;
  function GetTradeConcern: string;
  function GetDifference: Real;
  function DisplayTradeConcern: String;
 End;

implementation

{ TTradeValues }

constructor TTradeValues.Create;
begin

end;

function TTradeValues.DisplayExports: String; //Makes Export Values into a str to return when wanted
begin
   Result:= FloatToStrF(GetExportValues, ffCurrency,6,0);
end;

function TTradeValues.DisplayImports: string; //Makes Import Values into a str to return when wanted
begin
  Result:= FloatToStrF(GetImportValues, ffCurrency,6,0);
end;

function TTradeValues.DisplayTradeConcern: String;  //Build String to display if South Africa is on a trade Deficit or Surplus
begin
  Result:= 'SOUTH AFRICA IS ON A TRADE ' + GetTradeConcern + ' OF ' + FloatToStrF(GetDifference, ffCurrency,6,0) + ' MILLION'
end;

function TTradeValues.GetDifference: Real;
begin
  if GetTradeConcern='SURPLUS' then
    begin
      Result:= GetImportValues - GetExportValues;
    end
      else
        Result:= GetExportValues - GetImportValues;
end;

function TTradeValues.GetExportValues: Real;
begin
 with dmImportExport do
  begin
    Result:=0;
    tblcommodities.Filtered:=False;
    tblCommodities.Filter:= 'ImportExport = ' + Quotedstr('Export');
    tblcommodities.Filtered:= True;
    tblCommodities.First;
    while NOT tblCommodities.Eof do
      begin
        Result:= Result + tblCommodities['Value'];
        tblCommodities.Next;
      end;//End While Loop
  end;//End of With Statement
end;

function TTradeValues.GetImportValues: real;
begin
//Determine Imports
with dmImportExport do
  begin
    Result:=0;
    tblcommodities.Filtered:=False;
    tblCommodities.Filter:= 'ImportExport = ' + Quotedstr('Import');
    tblcommodities.Filtered:= True;

    tblCommodities.First;
    while NOT tblCommodities.Eof do
      begin
        Result:= Result + tblCommodities['Value'];
        tblCommodities.Next;
      end;//End While Loop
  end;//End of With Statement
end;

function TTradeValues.GetTradeConcern: string;
begin
if GetImportValues >= GetExportValues then
  begin
    Result:= 'SURPLUS'; //If the Imports are more
  end
      else
        if GetImportValues <= GetExportValues then
  begin
    Result:= 'DEFICIT';   //If the Exports are more
end;
end;

end.
