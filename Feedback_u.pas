unit Feedback_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPMan, MPlayer, ExtCtrls, jpeG, MMSystem{To Record};

type
  TfrmFeedback = class(TForm)
    redFeedback: TRichEdit;
    lblEnterFeedback: TLabel;
    btnFeedback: TButton;
    XPManifest1: TXPManifest;
    btnBackMain: TButton;
    procedure btnBackMainClick(Sender: TObject);
    procedure btnFeedbackClick(Sender: TObject);
   

  private
   tFeedback: Textfile;
   sClientID: String;


  public
    { Public declarations }
  end;

var
  frmFeedback: TfrmFeedback;

implementation

{$R *.dfm}
uses
MainForm_u;

procedure TfrmFeedback.btnBackMainClick(Sender: TObject);
begin
  frmMainform.Show;
  Self.hide;

end;

procedure TfrmFeedback.btnFeedbackClick(Sender: TObject);
var
  sFeedback: String;

begin

  sFeedback:= redFeedback.Text;//Get Input from user

    if (sFeedBack='') then //If nothing is inputted, show error message
  begin
    Showmessage('⚠NO FEEDBACK ENTERED.');
    EXIT;
  end;

  sClientID:= InputBox('ClientID','Please Enter Client ID','');

  if sClientID='' then
  begin
    sClientID:='Anonymous'; //if blank then client wants to remain anonymous
  end;

  //Read and Write to Text file
  AssignFile(tFeedback, 'Feedback.txt');
  Try
    Reset(tFeedback);
  except
    Showmessage('⚠TEXT FILE DOES NOT EXIST PLEASE CONTACT ADMIN.');
    EXIT;
  End;

   Append(tFeedback);//Open to add from last Line of Text File
   WriteLn(tFeedback,'#'+sCLientID+'#'+sFeedback);//Write Line to Text File
   Showmessage('THANK YOU FOR YOUR FEEDBACK.'); //Show message to confirm Feedback is recorded
   CloseFile(tFeedback);
   redFeedback.Clear;
   redFeedback.SetFocus; //Allow user to add more feedback

end;


end.
