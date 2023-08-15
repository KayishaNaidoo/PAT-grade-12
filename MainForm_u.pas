unit MainForm_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, XPMan, ComCtrls,
  StatusCheck_u, CurrencyConvertor_u, TradeValues_u, ImportExport_dm, adminlogin_u, Feedback_u;

type
  TfrmMainForm = class(TForm)
    imgLogo: TImage;
    lblAboutUs: TLabel;
    btnCheckStatus: TButton;
    btnCurrencyConvertor: TButton;
    btnTradeValue: TButton;
    XPManifest1: TXPManifest;
    pnlAboutUs: TPanel;
    btnBack: TButton;
    redAboutUs: TRichEdit;
    pnlStatusCheck: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtTrackingID: TEdit;
    edtClientID: TEdit;
    btnEnterSC: TButton;
    btnBackSC: TButton;
    bmpCloseMain: TBitBtn;
    lblContact: TLabel;
    lblAdminLogin: TLabel;
    lblFeedback: TLabel;
    procedure lblAboutUsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnCheckStatusClick(Sender: TObject);
    procedure btnEnterSCClick(Sender: TObject);
    procedure btnBackSCClick(Sender: TObject);
    procedure btnCurrencyConvertorClick(Sender: TObject);
    procedure btnTradeValueClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblAdminLoginClick(Sender: TObject);
    procedure lblAboutUsMouseEnter(Sender: TObject);
    procedure lblAboutUsMouseLeave(Sender: TObject);
    procedure lblAdminLoginMouseEnter(Sender: TObject);
    procedure lblAdminLoginMouseLeave(Sender: TObject);
    procedure pnlAboutUsEnter(Sender: TObject);
    procedure lblFeedbackMouseEnter(Sender: TObject);
    procedure lblFeedbackMouseLeave(Sender: TObject);
    procedure lblFeedbackClick(Sender: TObject);
  private
  tAboutUs: TextFile;

  public
    sAboutUs, sTrackingID, sCLientID: String;
    bClient: Boolean;
  end;

var
  frmMainForm: TfrmMainForm;

implementation

{$R *.dfm}

procedure TfrmMainForm.lblAboutUsClick(Sender: TObject);
begin
{Shows a Richedit with information about the company Aviation Trackers}
  redAboutUs.Clear;
  redAboutUs.Lines.Add(sAboutUs);
  pnlAboutUs.Show;
  lblAboutUs.Hide;
end;

{Changing color of labels when hovered over to allow better user experience}
procedure TfrmMainForm.lblAboutUsMouseEnter(Sender: TObject);
begin
  lblAboutUs.Font.Color:=clBlue;
end;

procedure TfrmMainForm.lblAboutUsMouseLeave(Sender: TObject);
begin
 lblAboutUs.Font.Color:=clWhite;
end;

procedure TfrmMainForm.lblAdminLoginClick(Sender: TObject);
begin
  frmAdminLogin.Show;// To allow user to enter data to access Admin Interface
  frmAdminLogin.edtUsername.Clear;
  frmAdminLogin.edtPassword.Clear;
  frmAdminLogin.edtUsername.SetFocus;
end;

{Changing color of labels when hovered over to allow better user experience}
procedure TfrmMainForm.lblAdminLoginMouseEnter(Sender: TObject);
begin
lblAdminLogin.Font.Color:= clBlue;
end;

procedure TfrmMainForm.lblAdminLoginMouseLeave(Sender: TObject);
begin
lblAdminLogin.Font.Color:= clWhite;
end;

procedure TfrmMainForm.pnlAboutUsEnter(Sender: TObject);
begin
  lblContact.Hide
end;

procedure TfrmMainForm.btnBackSCClick(Sender: TObject);
begin
  pnlStatusCheck.Hide;
  lblAboutUs.Show;
  lblContact.Visible:=True;

end;

procedure TfrmMainForm.btnCheckStatusClick(Sender: TObject); //Shows panel to enter primary keys Tracking ID and Client ID  to access Status Information of a commodity
begin
  pnlStatusCheck.Show;
  edtTrackingId.SetFocus;
  lblAboutUs.Hide;
  lblContact.Visible:=False;
end;

procedure TfrmMainForm.btnCurrencyConvertorClick(Sender: TObject);//Shows Currency Convertor
begin
  frmCurrencyConvertor.Show;
  frmMainForm.Hide;
end;

procedure TfrmMainForm.btnEnterSCClick(Sender: TObject);
var
  bFound: Boolean;
begin
  sTrackingID:= edtTrackingID.Text;
  sClientID:= edtClientID.Text;

  with dmImportExport do
  begin
    tblLink.Active:= True;  //Activating Tables to avoid errors
    tblClient.Active:= True;
    tblCommodities.Active:= True;;
    tblCountry.Active:= True;
    tblFlightCompany.Active:= True;
  end;

  //Input: Tracking ID and CLient ID
  //Throughput: Check if Tracking ID and Client ID match in database
  //Output:Access to customized Interface of Status Information based on commodity
  with dmImportExport do
  begin
    bFound:= False;
    tblLink.First;
    while (NOT tblLink.EOF) AND (bFound=False) do
    begin
    {Check if ClientID and Tracking ID match in Link table of database }
      if (StrToInt(sTrackingID) = tblLink['TrackingID']) AND  (StrToInt(sClientID) = tblLink['ClientID'])  then
      begin
        bFound:= True;//If they match then the interface is accessed
        frmMainForm.Hide;
        pnlStatusCheck.Hide;
        frmStatusCheck.Show;
      end//end of if statement
        else
          tblLink.Next;
    end;//end of while statement
    if bFound=False then
      Showmessage('Invalid TrackingID or ClientID. Please Re-enter.');
      edtTrackingId.Clear;
      edtClientId.Clear;
  end;//end of with statement

end;

procedure TfrmMainForm.btnTradeValueClick(Sender: TObject);
begin
  frmTradeValues.Show;   //Change to go to form  with Trade values and hide self
  frmMainform.Hide;
end;

procedure TfrmMainForm.lblFeedbackClick(Sender: TObject);
begin
  frmFeedback.Show;
  Self.Hide;
end;

procedure TfrmMainForm.lblFeedbackMouseEnter(Sender: TObject);
begin
  lblFeedback.Font.Color:= clBlue;   //Changes colour when hovered over
end;

procedure TfrmMainForm.lblFeedbackMouseLeave(Sender: TObject);
begin
  lblFeedback.Font.color:= clwhite;
end;

procedure TfrmMainForm.FormActivate(Sender: TObject);
begin
  lblContact.Visible:=True;
  lblaboutUs.Show;
end;

procedure TfrmMainForm.FormCreate(Sender: TObject);
var
  sLine: String;
begin
  pnlAboutUs.Hide;
  pnlStatusCheck.Hide;  //Read Text File into programme
  AssignFile(tAboutUs, 'AboutUs.txt');
   Try
    RESET(tAboutUs);
   Except
    Showmessage('Error finding Program file.');
    EXIT;
   end;
     while NOT EOF(tAboutUs) do
     begin
      ReadLn(tAboutUs,sLine);
      sAboutUs:= sAboutUs + sLine;
     end;
end;

procedure TfrmMainForm.btnBackClick(Sender: TObject);
begin
  pnlAboutUs.Hide;
  lblAboutUs.Show;
  lblContact.Visible:=True;     //Hides panel to show other info
end;

end.
