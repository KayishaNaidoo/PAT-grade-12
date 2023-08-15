unit clsConvertor_u;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Math, DB, ADODB;

 Type
 TConvertor = Class(TObject)

 private
  fValue, fConversionRate: Real;
 public
  constructor Create;
  overload;
  Constructor Create(rValue,rConversionRate: Real);
  overload;
  function Convert:Real;
  function DisplayAnswer: String;
 End;


implementation

{ TConvertor }

 function Tconvertor.Convert:Real;
begin
  Convert:= fValue / fConversionRate;
end;

constructor TConvertor.Create(rValue, rConversionRate: Real);
begin
  fValue:= rValue;
  fConversionRate:= rConversionRate;
end;

constructor TConvertor.Create;
begin
  fConversionRate:=0;
  fValue:=0;
end;

function TConvertor.DisplayAnswer: String;
begin
  Result:= FloatToStrF(Convert,ffFixed,6,2)
end;

end.
