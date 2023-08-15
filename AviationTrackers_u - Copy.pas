unit AviationTrackers_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, jpeg;

type
  TfrmLoading = class(TForm)
    ProgressBar: TProgressBar;
    imgLogo: TImage;
    lblWelcome: TLabel;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoading: TfrmLoading;

implementation
uses
MainForm_u, StatusCheck_u;

{$R *.dfm}

procedure TfrmLoading.FormCreate(Sender: TObject);
begin
  Timer.Enabled:= true;
end;

procedure TfrmLoading.TimerTimer(Sender: TObject);
begin
ProgressBar.Position:= ProgressBar.Position + 1;
 if ProgressBar.Position= 100 then
  begin
   Self.Hide;
  end;
end;

end.
