object frmAdminLogin: TfrmAdminLogin
  Left = 0
  Top = 0
  Caption = 'Admin Login'
  ClientHeight = 216
  ClientWidth = 329
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 40
    Width = 68
    Height = 18
    Caption = 'USERNAME:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 96
    Width = 68
    Height = 18
    Caption = 'PASSWORD:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblview: TLabel
    Left = 264
    Top = 95
    Width = 19
    Height = 19
    Caption = #55357#56385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnMouseEnter = lblviewMouseEnter
    OnMouseLeave = lblviewMouseLeave
  end
  object edtUsername: TEdit
    Left = 144
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'kayisha.naidoo'
  end
  object edtPassword: TEdit
    Left = 144
    Top = 93
    Width = 121
    Height = 21
    PasswordChar = #7
    TabOrder = 1
  end
  object bmpCancel: TBitBtn
    Left = 20
    Top = 160
    Width = 88
    Height = 25
    Caption = 'CANCEL'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = [fsBold]
    Kind = bkCancel
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 2
    OnClick = bmpCancelClick
  end
  object bmpEnter: TBitBtn
    Left = 216
    Top = 160
    Width = 75
    Height = 25
    Caption = 'ENTER'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold Condensed'
    Font.Style = [fsBold]
    Kind = bkOK
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 3
    OnClick = bmpEnterClick
  end
end
