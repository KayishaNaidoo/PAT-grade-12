unit TradeValues_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImportExport_dm, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, clsTradeValues_u;

type
  TfrmTradeValues = class(TForm)
    lblImports: TLabel;
    lblExports: TLabel;
    edtImports: TEdit;
    edtExports: TEdit;
    btnBack: TButton;
    lblMilImp: TLabel;
    lblMilExp: TLabel;
    pnlSA: TPanel;
    lblHelp: TLabel;
    pnlHelp: TPanel;
    btnBackTrade: TButton;
    redTradeHelp: TRichEdit;
    dbgImportExport: TDBGrid;
    procedure btnBackClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblHelpClick(Sender: TObject);
    procedure btnBackTradeClick(Sender: TObject);
    procedure lblHelpMouseEnter(Sender: TObject);
    procedure lblHelpMouseLeave(Sender: TObject);
  private
    tTradeHelp: TextFile;
  public
    { Public declarations }
  end;

var
  frmTradeValues: TfrmTradeValues;

implementation
uses
MainForm_u;
{$R *.dfm}

procedure TfrmTradeValues.btnBackClick(Sender: TObject);
begin
  frmTradeValues.Hide;
  frmMainForm.Show;
end;

procedure TfrmTradeValues.btnBackTradeClick(Sender: TObject);
begin
  pnlHelp.Hide;
  lblHelp.Show;
  dbgImportExport.Show;
  lblImports.Show;
  lblExports.Show;
  lblMilImp.Show;
  lblMilExp.Show;
end;

procedure TfrmTradeValues.FormActivate(Sender: TObject);
var
  oTradeValue: TTradeValues;//Communicate with clsTradeValues
begin
  pnlHelp.Hide;
  lblHelp.Show;
  lblImports.Show;
  lblExports.Show;
  lblMilImp.Show;
  lblMilExp.Show;
  oTradeValue:= TTradeValues.Create;

  //Display Imports
  edtimports.Text:= oTradeValue.DisplayImports;

  //Display Exports
  edtExports.Text:= oTradeValue.DisplayExports;

  //Show on panel
   pnlSA.Caption:= oTradeValue.DisplayTradeConcern;

   oTradeValue.Free;
end;

procedure TfrmTradeValues.lblHelpClick(Sender: TObject);
var
  sLine, sTradeHelp: String;
begin
  pnlHelp.Show;
  lblHelp.Hide;
  lblImports.Hide;
  lblExports.Hide;
  lblMilImp.Hide;
  lblMilExp.Hide;
  redTradeHelp.Clear;
  dbgimportExport.Hide;

  AssignFile(tTradeHelp, 'TradeHelp.txt');
   Try
    RESET(tTradeHelp);
    //Error Control if Text File does not read
   Except
    Showmessage('Error finding Program file.');
    EXIT;
   end;
   //Read Information from Text file and store it in variable
     while NOT EOF(tTradeHelp) do
     begin
      ReadLn(tTradeHelp,sLine);
      sTradeHelp:= sTradeHelp  + sLine + #13;
     end;
      //Feed information into Rich edit
     redTradeHelp.Lines.Add(sTradeHelp);
end;

//User frendly to change colour when hovered over//
procedure TfrmTradeValues.lblHelpMouseEnter(Sender: TObject);
begin
lblHelp.Font.Color:=clBlue;
end;

procedure TfrmTradeValues.lblHelpMouseLeave(Sender: TObject);
begin
lblHelp.Font.Color:=clWhite;
end;

end.
