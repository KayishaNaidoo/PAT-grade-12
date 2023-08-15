object frmVideo: TfrmVideo
  Left = 0
  Top = 0
  Caption = 'frmVideo'
  ClientHeight = 382
  ClientWidth = 538
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Bahnschrift SemiBold Condensed'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object WMPImportExport: TWindowsMediaPlayer
    Left = 0
    Top = 41
    Width = 538
    Height = 298
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 245
    ExplicitHeight = 240
    ControlData = {
      000300000800000000000500000000000000F03F030000000000050000000000
      0000000008000200000000000300010000000B00FFFF0300000000000B00FFFF
      08000200000000000300320000000B00000008000A000000660075006C006C00
      00000B0000000B0000000B00FFFF0B00FFFF0B00000008000200000000000800
      020000000000080002000000000008000200000000000B0000009B370000901A
      0000}
  end
  object btnPlay: TButton
    Left = 0
    Top = 0
    Width = 538
    Height = 41
    Align = alTop
    Caption = 'PLAY'
    TabOrder = 1
    OnClick = btnPlayClick
  end
  object Button1: TButton
    Left = 0
    Top = 339
    Width = 538
    Height = 43
    Align = alBottom
    Caption = 'CLOSE'
    TabOrder = 2
    OnClick = Button1Click
    ExplicitTop = 272
  end
end
