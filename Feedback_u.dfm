object frmFeedback: TfrmFeedback
  Left = 0
  Top = 0
  Caption = 'FEEDBACK'
  ClientHeight = 374
  ClientWidth = 545
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Bahnschrift SemiBold SemiConden'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object lblEnterFeedback: TLabel
    Left = 48
    Top = 28
    Width = 139
    Height = 18
    Caption = 'ENTER FEEDBACK HERE:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object redFeedback: TRichEdit
    Left = 48
    Top = 60
    Width = 425
    Height = 221
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btnFeedback: TButton
    Left = 226
    Top = 287
    Width = 97
    Height = 33
    Caption = 'GIVE FEEDBACK'
    TabOrder = 1
    OnClick = btnFeedbackClick
  end
  object btnBackMain: TButton
    Left = 16
    Top = 304
    Width = 121
    Height = 48
    Caption = 'BACK TO MAIN FORM'
    TabOrder = 2
    OnClick = btnBackMainClick
  end
  object XPManifest1: TXPManifest
    Left = 512
    Top = 128
  end
end
