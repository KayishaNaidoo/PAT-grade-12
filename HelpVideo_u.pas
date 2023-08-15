unit HelpVideo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, WMPLib_TLB;

type
  TfrmVideo = class(TForm)
    WMPImportExport: TWindowsMediaPlayer;
    btnPlay: TButton;
    Button1: TButton;
    procedure btnPlayClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVideo: TfrmVideo;


implementation

{$R *.dfm}
uses
StatusCheck_u;


procedure TfrmVideo.btnPlayClick(Sender: TObject);
begin
  WMPImportExport.URL:= 'Imports and Exports.mp4'; //Assign the URL of the specific Video to the Windows player
  WMPImportExport.controls.play;  //Play the Video
end;

procedure TfrmVideo.Button1Click(Sender: TObject);
begin
  self.Visible:= False;  //Make the form invisible
  WMPImportExport.controls.stop;//Stop Playing the video
  frmStatusCheck.Show; //Go back to the Status Check form
end;

end.
