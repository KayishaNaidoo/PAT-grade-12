unit AdminInterface_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImportExport_dm, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ComCtrls,
  ExtCtrls, Spin, Buttons, clsCheckStatus_u, clsNewCommodity_u;

type
  TfrmAdminInterface = class(TForm)
    pgcAdmin: TPageControl;
    tbsViewInfo: TTabSheet;
    tbsStatusChange: TTabSheet;
    tbsNewCommodity: TTabSheet;
    DBEImportExport: TDBEdit;
    DBECommodityType: TDBEdit;
    DBEValue: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    edtTrackingID: TEdit;
    Label10: TLabel;
    cbxStatusChange: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    pnlClientNew: TPanel;
    Label19: TLabel;
    rgbImportExport: TRadioGroup;
    edtName: TEdit;
    cbxCountry: TComboBox;
    cbxFlightCompany: TComboBox;
    sedValue: TSpinEdit;
    edtSurname: TEdit;
    cbxNewUser: TCheckBox;
    btnInsert: TButton;
    btnChangeStatus: TButton;
    DBETrackingID: TDBEdit;
    btnCloseProgram: TBitBtn;
    dbgCommodities: TDBGrid;
    cbxCommType: TComboBox;
    Label2: TLabel;
    DBEName: TDBEdit;
    Label3: TLabel;
    DBESurname: TDBEdit;
    DBECountry: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBECompany: TDBEdit;
    bmpBack: TBitBtn;
    Label14: TLabel;
    DBEStatus: TDBEdit;
    btnResetStatus: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbxNewUserClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnChangeStatusClick(Sender: TObject);
    procedure bmpBackClick(Sender: TObject);
    procedure btnResetStatusClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAdminInterface: TfrmAdminInterface;

implementation

{$R *.dfm}

uses
 AdminLogin_u,MainForm_u;


procedure TfrmAdminInterface.bmpBackClick(Sender: TObject);
begin
  Self.Hide;
  frmMainForm.Show;
end;

procedure TfrmAdminInterface.btnChangeStatusClick(Sender: TObject);
var
sTrackingID, sStatus: String;
begin
sTrackingID:= edtTrackingID.Text;//Store Tracking ID
sStatus:= cbxStatusChange.Text;

if sTrackingID='' then
begin
  Showmessage('PLEASE ENTER A VALID TRACKING ID.');
  EXIT;      // If nothing is in edit, error message shown and program stopped
end;

  with dmImportExport do
   begin
    if tblCommodities.Locate('TrackingID',sTrackingID,[]) then//Record found according to Tracking ID
      begin//Begin if

        //change Status according to what users choose to change to
        qryImportExport.Close;
        qryImportExport.SQL.Clear;
        qryImportExport.SQL.Add('UPDATE tblCommodities');
        qryImportExport.SQL.Add('SET Status = ' + QuotedStr(sStatus));
        qryImportExport.SQL.Add('WHERE TrackingID = ' + sTrackingID);
        qryImportExport.ExecSQL;

        //Refresh Table with changes and display relevant info into dbEdits
        qryImportExport.Close;
        qryImportExport.SQL.Clear;//Clear SQL to write into
        qryImportExport.SQL.Add('SELECT tblLink.TrackingID,ClientName, ClientSurname,tblCommodities.CommodityType,');
        qryImportExport.SQL.Add('tblCommodities.ImportExport,tblCommodities.Status,tblCommodities.Value,tblCountry.CountryName,FlightCompany');
        qryImportExport.SQL.Add(' FROM tblCommodities, tblLink, tblCountry,tblFlightCompany, tblClient');
        qryImportExport.SQL.Add('WHERE (tblLink.TrackingID=tblCommodities.TrackingID) AND');
        qryImportExport.SQL.Add('(tblLink.FlightID=tblFlightCompany.FlightID) AND');
        qryImportExport.SQL.Add('(tblLink.CountryID= tblCountry.CountryID) AND( tblLink.ClientId=tblClient.ClientID)');
        qryImportExport.SQL.Add('ORDER BY tblLink.TrackingID ASC');
        qryImportExport.Open; //Update the records that was ppreviously updated

        Showmessage('Status Change Successful.');

      end//end of if
        else
          begin
            Showmessage('Invalid Tracking ID');
            EXIT;
          end;
   end;
end;


procedure TfrmAdminInterface.btnInsertClick(Sender: TObject);
var
  sTrackingID,sClientID, sName, sSurname, sCommodityType, sImportExport, sCountry, sCompany: String;
  iValue: Integer;
  oNewComm: TNewCommodity;
begin

 if (cbxNewUser.Checked=True) AND (edtName.Text='') then
    begin
      Showmessage('Please Enter a Name for the client');
      EXIT;
    end; //If name is blank when new user is ticked, error message shows

   if (cbxNewUser.Checked=True) AND (edtSurname.Text='') then
    begin
      Showmessage('Please Enter a Surname for the client');
      EXIT;
    end;



 {The same user can make more than one order}
  if cbxNewuser.Checked= False then
    begin
      sClientID:=InputBox('ClientID', 'Enter ClientID:', ''); //If Client does not tick new user, Client ID and will be requested as they are already on the system
    end
      else
      begin
        dmImportExport.tblClient.Sort:= 'ClientID ASC';
        dmImportExport.tblClient.Last;  //Sort table to  determine last record
        sClientID:= dmImportExport.tblClient['ClientID'] + 1; //To add new user, we need to creat a new primary key
        sName:= edtName.Text; //Get the Name and Surname of the user from the interface to enter into the database
        sSurname:= edtSurname.Text;

        //Insert new CLient Into database with SQL
        begin
          with dmImportExport do
          begin
            qryImportExport.SQL.Clear;
            qryImportExport.SQL.Add('INSERT INTO tblClient ');
            qryImportExport.SQL.Add('(ClientID, ClientName, ClientSurname)');
            qryImportExport.SQL.Add ('VALUES') ;
            qryImportExport.SQL.Add('('+ (sClientID) + ',' + QUotedStr(sName) + ',' + QuotedStr(sSurname) + ')') ;
            qryImportExport.ExecSQL ;
          end;
        end;

      end;//end


      dmImportExport.tblCommodities.Sort:= 'TrackingID ASC';
      dmImportExport.tblCommodities.Last;  //Sort table to  determine last record
      sTrackingID:= IntToStr(dmImportExport.tblCommodities['TrackingID'] + 1); //Determine new tracking ID as each order has a new Tracking ID

      //Store string with Import or Export to write into tblCommodities
      case rgbImportExport.ItemIndex of
        0: sImportExport:= 'Import';
        1: sImportExport:= 'Export'
      end;

      sCommodityType:= cbxCommType.Text;//String with Commodity Type

      iValue:= sedValue.Value; //Integer with Value of commodity in millions

      sCountry:= cbxCountry.Text; //String with Country

      sCompany:= cbxFlightCompany.Text;  //String with Flight Company

      //Create class and use class to create new commodity order
      oNewComm:= TNewCommodity.Create(sTrackingID,sClientID, sImportExport,sCommodityType,sCountry, sCompany, iValue);
      oNewComm.NewOrder;
      oNewComm.LinkTableOrder;

      oNewComm.Free;

      Showmessage('NEW RECORDS CREATED.');
end;

procedure TfrmAdminInterface.btnResetStatusClick(Sender: TObject);
begin
  edtTrackingID.Clear;
  cbxStatusChange.ItemIndex:=-1;
  edttrackingID.SetFocus;

end;

procedure TfrmAdminInterface.cbxNewUserClick(Sender: TObject);
begin

  if cbxNewUser.Checked then //If the user is new, there will have to be a new record in tbl client created
  begin
    pnlClientnew.Enabled:=True;
    edtName.Color:= clWindow;
   edtSurname.Color:= clWindow;
  end
  else
  begin
   pnlClientnew.Enabled:=False;
   edtName.Color:= cl3DDkShadow;
   edtSurname.Color:= cl3DDkShadow;
  end;
end;

procedure TfrmAdminInterface.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.

