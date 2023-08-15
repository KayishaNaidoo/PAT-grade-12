unit CurrencyConvertor_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, clsConvertor_u, Buttons;

type
  TfrmCurrencyConvertor = class(TForm)
    redCurrencyConvertor: TRichEdit;
    btnBack: TButton;
    pgcCurrencyConvertor: TPageControl;
    tbsToForeign: TTabSheet;
    tbsToZAR: TTabSheet;
    lblZAR: TLabel;
    lblForeign: TLabel;
    lblConverted: TLabel;
    cbxCurrency: TComboBox;
    edtZAR: TEdit;
    btnConvert: TButton;
    edtOutput: TEdit;
    Label3: TLabel;
    cbxCurrenciesToZAR: TComboBox;
    btnConvertToZAR: TButton;
    Label1: TLabel;
    edtValueForeign: TEdit;
    edtValueINZAR: TEdit;
    lblCondition: TLabel;
    bmpResetToZAR: TBitBtn;
    bmpResetToForeign: TBitBtn;
    procedure btnConvertClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnConvertToZARClick(Sender: TObject);
    procedure bmpResetToZARClick(Sender: TObject);
    procedure bmpResetToForeignClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    tCurrencyInfo: TextFile;
  public
    { Public declarations }
  end;

var
  frmCurrencyConvertor: TfrmCurrencyConvertor;
const
  //Currency rates as on 1 June 2021
  //Programmer has to update these values
  arrForeignRate: array[0..5] of Real=(
                                       2.16 //China
                                      ,0.012 //Korea
                                      ,0.13  //Japan
                                      ,13.78 //US
                                      ,0.03  //Nigeria
                                      ,19.56 //UK
                                      );

  arrZARRate: array[0..5] of Real=    (
                                       0.46  //China
                                      ,80.81 //Korea
                                      ,7.98  //Japan
                                      ,0.073 //US
                                      ,29.93 //Nigeria
                                      ,0.051 //UK
                                      );
implementation

uses
 MainForm_u;

{$R *.dfm}

procedure TfrmCurrencyConvertor.bmpResetToForeignClick(Sender: TObject);
begin
  edtZAR.Clear;
  edtOutput.Clear;
  edtZAR.SetFocus;
  cbxCurrency.ItemIndex:=0;  //resets and clears edits
end;

procedure TfrmCurrencyConvertor.bmpResetToZARClick(Sender: TObject);
begin
  edtValueForeign.Clear;
  edtValueInZar.Clear;
  cbxCurrenciesToZAR.ItemIndex:=0;
  edtValueForeign.SetFocus;     //resets and clears edits

end;

procedure TfrmCurrencyConvertor.btnBackClick(Sender: TObject);
begin
  frmMainForm.Show;
  frmCurrencyConvertor.Hide;
end;

procedure TfrmCurrencyConvertor.btnConvertClick(Sender: TObject);
var
  rZAR, rToForeign: Real;
  oConvertor: TConvertor;//Communicate with clsConvertor
begin
  rZAR:=StrToFloat(edtZAR.Text);//Get Value from Edit

  rToForeign:= arrForeignRate[cbxCurrency.ItemIndex]; //Get value from Dropdown menu

  oConvertor:= TConvertor.Create(rZAR,rToForeign);//Create and Assign Class
  edtOutput.Text:= oConvertor.DisplayAnswer;// All calculations done in class and now displayed in a given format
  oConvertor.Free;
end;

procedure TfrmCurrencyConvertor.btnConvertToZARClick(Sender: TObject);
var
rToZAR, rForeign: Real;
  oConvertor: TConvertor; //Communicate with clsConvertor
begin
  rForeign:= StrToFloat(edtvalueForeign.Text); //Get Value from Edit

  rToZAR:= arrZARRate[cbxCurrenciesToZAR.ItemIndex]; //Get value from Dropdown menu

  oConvertor:= TConvertor.Create(rForeign,rToZAR);
  edtValueInZAR.Text:= oConvertor.DisplayAnswer; // All calculations done in class and now displayed in a given format
  oConvertor.Free;
end;

procedure TfrmCurrencyConvertor.FormActivate(Sender: TObject);
var
sLine, sCurrencyInfo: string;

begin
redCurrencyConvertor.Clear;
sCurrencyInfo:='';
  AssignFile(tCurrencyInfo, 'CurrencyConvertor.txt');
   Try
    RESET(tCurrencyInfo);
    //Error Control of reading Text File
   Except
    Showmessage('Error finding Program file.');
    EXIT;
   end;
   //Read Text File with Currency Info and instructions of use into RichEdit
     while NOT EOF(tCurrencyInfo) do
     begin
      ReadLn(tCurrencyInfo,sLine);
      sCurrencyInfo:= sCurrencyInfo + sLine +#13;
     end;
     redCurrencyConvertor.Lines.Add(sCurrencyInfo);
     edtZAR.SetFocus;
end;

end.
