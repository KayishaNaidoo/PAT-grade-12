object frmCurrencyConvertor: TfrmCurrencyConvertor
  Left = 0
  Top = 0
  Caption = 'frmCurrencyConvertor'
  ClientHeight = 388
  ClientWidth = 519
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clWhite
  Font.Height = -16
  Font.Name = 'Bahnschrift SemiBold Condensed'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object lblCondition: TLabel
    Left = 168
    Top = 338
    Width = 251
    Height = 19
    Caption = 'Please note that these values are approximate.'
  end
  object redCurrencyConvertor: TRichEdit
    Left = 32
    Top = 8
    Width = 449
    Height = 121
    Color = clBackground
    Lines.Strings = (
      '')
    ReadOnly = True
    TabOrder = 0
  end
  object btnBack: TButton
    Left = 16
    Top = 336
    Width = 89
    Height = 37
    Caption = 'BACK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnBackClick
  end
  object pgcCurrencyConvertor: TPageControl
    Left = 32
    Top = 143
    Width = 449
    Height = 181
    ActivePage = tbsToForeign
    MultiLine = True
    TabOrder = 2
    object tbsToForeign: TTabSheet
      Caption = 'TO FOREIGN CURRENCY'
      object lblZAR: TLabel
        Left = 48
        Top = 14
        Width = 94
        Height = 19
        Caption = ' VALUE IN ZAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblForeign: TLabel
        Left = 81
        Top = 47
        Width = 61
        Height = 19
        Caption = 'VALUE IN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblConverted: TLabel
        Left = 19
        Top = 80
        Width = 123
        Height = 19
        Caption = 'CONVERTED VALUE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbxCurrency: TComboBox
        Left = 148
        Top = 47
        Width = 145
        Height = 27
        Style = csDropDownList
        DoubleBuffered = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ItemIndex = 0
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        Text = 'Chinese Yuan ('#165')'
        Items.Strings = (
          'Chinese Yuan ('#165')'
          'Korean won ('#8361')'
          'Japanese Yen ('#165')'
          'US Dollar ($)'
          'Nigerian Naira('#8358')'
          'UK Pound ('#163')')
      end
      object edtZAR: TEdit
        Left = 148
        Top = 14
        Width = 145
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TextHint = 'eg. 200'
      end
      object btnConvert: TButton
        Left = 299
        Top = 16
        Width = 110
        Height = 58
        Caption = 'CONVERT'
        TabOrder = 2
        OnClick = btnConvertClick
      end
      object edtOutput: TEdit
        Left = 148
        Top = 80
        Width = 145
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object bmpResetToForeign: TBitBtn
        Left = 299
        Top = 80
        Width = 110
        Height = 25
        Caption = 'RESET'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBackground
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold Condensed'
        Font.Style = [fsBold]
        Kind = bkRetry
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = bmpResetToForeignClick
      end
    end
    object tbsToZAR: TTabSheet
      Caption = 'TO SOUTH AFRICAN RAND'
      ImageIndex = 1
      object Label3: TLabel
        Left = 81
        Top = 19
        Width = 61
        Height = 19
        Caption = 'VALUE IN:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 48
        Top = 85
        Width = 94
        Height = 19
        Caption = ' VALUE IN ZAR:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cbxCurrenciesToZAR: TComboBox
        Left = 148
        Top = 19
        Width = 145
        Height = 27
        Style = csDropDownList
        DoubleBuffered = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ItemIndex = 0
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 0
        Text = 'Chinese Yuan ('#165')'
        Items.Strings = (
          'Chinese Yuan ('#165')'
          'Korean won ('#8361')'
          'Japanese Yen ('#165')'
          'US Dollar ($)'
          'Nigerian Naira('#8358')'
          'UK Pound ('#163')')
      end
      object btnConvertToZAR: TButton
        Left = 299
        Top = 21
        Width = 110
        Height = 58
        Caption = 'CONVERT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift Condensed'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnConvertToZARClick
      end
      object edtValueForeign: TEdit
        Left = 148
        Top = 52
        Width = 145
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtValueINZAR: TEdit
        Left = 148
        Top = 85
        Width = 145
        Height = 27
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object bmpResetToZAR: TBitBtn
        Left = 299
        Top = 85
        Width = 110
        Height = 25
        Caption = 'RESET'
        DoubleBuffered = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift Condensed'
        Font.Style = [fsBold]
        Kind = bkRetry
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 4
        OnClick = bmpResetToZARClick
      end
    end
  end
end
