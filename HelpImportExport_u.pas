unit HelpImportExport_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, WMPLib_TLB, StdCtrls, Buttons;

type
  TfrmImportExport = class(TForm)
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    btnPlay: TButton;
    btnClose: TButton;
    procedure btnPlayClick(Sender: TObject);
    procedure btnCLoseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImportExport: TfrmImportExport;

implementation

{$R *.dfm}
//I had to install a new delphi package to use a ,edia player for this segment. I installed the Windows player to allow easy accessibilty
procedure TfrmImportExport.btnCLoseClick(Sender: TObject);
begin
  WindowsMediaPlayer1.controls.stop;//Stop the player and hide the form if user clicks close

end;

procedure TfrmImportExport.btnPlayClick(Sender: TObject);
begin
//Open and assign the video to play if the user clicks play
    WindowsMediaPlayer1.URL:= 'Imports and Exports.mp4'; //The Video is saved under theprogram folder
    windowsMediaPlayer1.controls.play;

end;

end.
