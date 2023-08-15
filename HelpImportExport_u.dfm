object frmImportExport: TfrmImportExport
  Left = 0
  Top = 0
  Caption = 'WHAT ARE IMPORTS AND EXPORTS?'
  ClientHeight = 386
  ClientWidth = 520
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Bahnschrift Condensed'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object WindowsMediaPlayer1: TWindowsMediaPlayer
    AlignWithMargins = True
    Left = 3
    Top = 36
    Width = 514
    Height = 305
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 39
    ControlData = {
      00030000080034000000220049006D0070006F00720074007300200061006E00
      640020004500780070006F007200740073002E006D0070003400220000000500
      000000000000F03F030000000000050000000000000000000800020000000000
      0300010000000B00FFFF0300000000000B00FFFF080002000000000003003200
      00000B00000008000A000000660075006C006C0000000B0000000B0000000B00
      FFFF0B00FFFF0B00000008000200000000000800020000000000080002000000
      000008000200000000000B00000020350000861F0000}
  end
  object btnPlay: TButton
    Left = 0
    Top = 0
    Width = 520
    Height = 33
    Align = alTop
    Caption = 'PLAY'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Bahnschrift Condensed'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnPlayClick
  end
  object btnClose: TButton
    Left = 0
    Top = 344
    Width = 520
    Height = 42
    Align = alBottom
    Caption = 'CLOSE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Bahnschrift Condensed'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnCLoseClick
  end
end
