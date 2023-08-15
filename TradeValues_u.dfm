object frmTradeValues: TfrmTradeValues
  Left = 0
  Top = 23
  Caption = 'frmTradeValues'
  ClientHeight = 393
  ClientWidth = 565
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Bahnschrift SemiBold SemiConden'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 19
  object lblImports: TLabel
    Left = 121
    Top = 189
    Width = 124
    Height = 19
    Caption = 'VALUE OF IMPORTS:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExports: TLabel
    Left = 120
    Top = 224
    Width = 125
    Height = 19
    Caption = 'VALUE OF EXPORTS:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblMilImp: TLabel
    Left = 369
    Top = 189
    Width = 53
    Height = 19
    Caption = 'MILLION'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = []
    ParentFont = False
  end
  object lblMilExp: TLabel
    Left = 369
    Top = 224
    Width = 53
    Height = 19
    Caption = 'MILLION'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = []
    ParentFont = False
  end
  object lblHelp: TLabel
    Left = 263
    Top = 350
    Width = 33
    Height = 19
    Caption = 'HELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = lblHelpClick
    OnMouseEnter = lblHelpMouseEnter
    OnMouseLeave = lblHelpMouseLeave
  end
  object edtImports: TEdit
    Left = 263
    Top = 188
    Width = 100
    Height = 27
    ReadOnly = True
    TabOrder = 1
  end
  object edtExports: TEdit
    Left = 263
    Top = 221
    Width = 100
    Height = 27
    ReadOnly = True
    TabOrder = 2
  end
  object btnBack: TButton
    Left = 16
    Top = 342
    Width = 73
    Height = 37
    Caption = 'BACK'
    TabOrder = 0
    OnClick = btnBackClick
  end
  object pnlSA: TPanel
    Left = 16
    Top = 270
    Width = 524
    Height = 59
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pnlHelp: TPanel
    Left = 8
    Top = 0
    Width = 532
    Height = 385
    Caption = 'pnlHelp'
    TabOrder = 4
    object btnBackTrade: TButton
      Left = 32
      Top = 328
      Width = 75
      Height = 25
      Caption = 'BACK'
      TabOrder = 0
      OnClick = btnBackTradeClick
    end
    object redTradeHelp: TRichEdit
      Left = 32
      Top = 39
      Width = 473
      Height = 274
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Bahnschrift SemiBold SemiConden'
      Font.Style = [fsBold]
      Lines.Strings = (
        '')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
    end
  end
  object dbgImportExport: TDBGrid
    Left = 88
    Top = 23
    Width = 377
    Height = 130
    DataSource = dmImportExport.dsCommodities
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -16
    TitleFont.Name = 'Bahnschrift SemiBold SemiConden'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ImportExport'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CommodityType'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Value'
        Width = 40
        Visible = True
      end>
  end
end
