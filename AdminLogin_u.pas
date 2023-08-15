unit AdminLogin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, adminInterface_u, Mask;

type
  TfrmAdminLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    bmpCancel: TBitBtn;
    bmpEnter: TBitBtn;
    lblview: TLabel;
    procedure bmpCancelClick(Sender: TObject);
    procedure bmpEnterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblviewMouseEnter(Sender: TObject);
    procedure lblviewMouseLeave(Sender: TObject);

  private
    tFile: Textfile;

  public
    { Public declarations }
  end;

var
  frmAdminLogin: TfrmAdminLogin;

implementation

{$R *.dfm}

uses
 Mainform_u;

procedure TfrmAdminLogin.bmpCancelClick(Sender: TObject);
begin
  Self.Close;

end;

procedure TfrmAdminLogin.bmpEnterClick(Sender: TObject);
var
    bEnter: Boolean;
    iPos: Integer;
    sUsername, sPassword, sAdminUsername, sAdminPassword, sLine: String;
begin
//Input: Username and Password
//Throughput: Validation of Username and Password
//Output: Access to Admin Interface

  AssignFile(tFile,'AdminLogin.txt');// Assigning Textfile
  Try
    Reset(tFile);
  except
    Showmessage('Error in finding file with Login details.'); //Error Message if text file does not exist in folder of program
    EXIT;
  End;

  bEnter:=False; //Initialising Boolean to determine if user can access Admin Interface
  {Set Variables for username and password}
    sUserName:= edtUsername.Text;
    sPassword:= edtPassword.Text;

    {Presence Check}
    if sUserName='' then
    begin
      Showmessage('PLEASE ENTER USERNAME');
      EXIT;
    end;

     if sPassword='' then
    begin
      Showmessage('PLEASE ENTER PASSWORD');
      EXIT;
    end;


  while NOT(EOF(tFile)) AND (bEnter= False)  do //Search through Textfile to see matching username and password
    begin
      ReadLn(tFile,sLine);
      iPos:= Pos('#',sLine);
      sAdminUsername:= Copy(sLine,1,iPos-1);
      Delete(sLine,1,iPos);
      sAdminPassword:= sLine;
      if (sUsername = sAdminUsername) AND (sPassword=sAdminPassword) then
        begin
          bEnter:= True;//Boolean changed to allow access
        end;
    end;

  {Handling possible outputs}
    if bEnter=False then
        begin
        Showmessage('USERNAME OR PASSWORD INCORRECT');
        edtPassword.Clear;
        edtUsername.SetFocus; //Show user error message and clear edits
        end
   else
    if bEnter=True then
    begin
      frmAdminInterface.Show;
      Self.Close;
      frmMainform.hide; //Show Admin Interface and Hide login form
    end;

end;



procedure TfrmAdminLogin.FormCreate(Sender: TObject);
begin
  edtusername.Clear;
end;

{Changing color of lables when they are hovered over to allow better user experience}
procedure TfrmAdminLogin.lblviewMouseEnter(Sender: TObject);
begin
  edtPassword.PasswordChar:=#0;//Change to View Password
  lblView.Font.Color:= clBlue;
end;

procedure TfrmAdminLogin.lblviewMouseLeave(Sender: TObject);
begin
  edtPassword.PasswordChar:=#7;//Change to encrypt
  lblView.Font.Color:= clWhite;
end;

end.
