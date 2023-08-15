unit StatusCheck_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, clsCheckstatus_u, MPlayer,HelpVideo_u ;

type
  TfrmStatusCheck = class(TForm)
    btnBack: TButton;
    pgcStatus: TPageControl;
    tbsStatus: TTabSheet;
    tbsFlight: TTabSheet;
    lblTrackingID: TLabel;
    lblClient: TLabel;
    edtTrackingID1: TEdit;
    edtClientID1: TEdit;
    lblStatus: TLabel;
    pgbStatus: TProgressBar;
    lblStatusChange: TLabel;
    tbsTradeDetails: TTabSheet;
    lblCompany: TLabel;
    edtCompany: TEdit;
    lblCompanyTel: TLabel;
    edtTel: TEdit;
    Label1: TLabel;
    lblTrackingIdFLight: TLabel;
    edtTrackingID2: TEdit;
    Label3: TLabel;
    edtClientID2: TEdit;
    Label2: TLabel;
    edtTrackingID3: TEdit;
    Label4: TLabel;
    edtClientID3: TEdit;
    lblDeparture: TLabel;
    lblArrival: TLabel;
    lblTransported: TLabel;
    lblValue: TLabel;
    edtDeparture: TEdit;
    edtValue: TEdit;
    edtTransported: TEdit;
    edtArrival: TEdit;
    lblImportExport: TLabel;
    procedure btnBackClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lblImportExportMouseEnter(Sender: TObject);
    procedure lblImportExportMouseLeave(Sender: TObject);
    procedure lblImportExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatusCheck: TfrmStatusCheck;

implementation

uses
MainForm_u;

{$R *.dfm}

procedure TfrmStatusCheck.btnBackClick(Sender: TObject);

begin
  frmStatusCheck.Hide;
  frmMainForm.Show;
end;

procedure TfrmStatusCheck.FormActivate(Sender: TObject);
var
  sClientID, sTrackingID: String;
  oCheckStatus: TCheckStatus;
begin
  sClientID:= frmMainForm.edtClientID.Text;
  sTrackingID:= frmMainForm.edttrackingID.Text;

  oCheckStatus:= TCheckStatus.Create(sClientID,sTrackingID);//Link to class to get information from class

  //All Tabs with same info on IDs
  //Uses Class
  edtTrackingID1.Text:= oCheckStatus.GetID;
  edtTrackingID2.Text:= oCheckStatus.GetID;
  edtTrackingID3.Text:= oCheckStatus.GetID;


  edtClientID1.Text:= oCheckStatus.GetName;
  edtClientID2.Text:= oCheckStatus.GetName;
  edtClientID3.Text:= oCheckStatus.GetName;

  //Status Tab
  pgbStatus.Position:= oCheckstatus.GetStatus;
  lblStatusChange.Caption:= ocheckstatus.GetStatusText;

  //Flight tab
  edtCompany.Text:= oCheckStatus.GetFlightCompany;
  edtTel.Text:= oCheckStatus.GetCompanytel;

  //TradeDetails Tab
  edtTransported.Text:= oCheckstatus.GetCommodity;
  edtValue.Text:= oCheckStatus.GetValue;
  edtArrival.Text := oCheckStatus.GetCountryArrival;
  edtDeparture.Text:= oCheckStatus.GetCountryDeparture;

  oCheckstatus.Free; //Free class

end;

procedure TfrmStatusCheck.lblImportExportClick(Sender: TObject);
begin
 if MessageDlg('WOULD YOU LIKE TO VIEW A VIDEO TO EXPLAIN THIS CONCEPT?', mtConfirmation,[mbNo,mbYes],0)= mrYes then
  begin
    frmVideo.Show; //Show form if user wants to view
  end;

end;

procedure TfrmStatusCheck.lblImportExportMouseEnter(Sender: TObject);
begin
  lblImportExport.Font.Color:= clBlue;
end;

procedure TfrmStatusCheck.lblImportExportMouseLeave(Sender: TObject);
begin
  lblImportExport.Font.Color:= clWhite;
end;

end.
