object frmStatusCheck: TfrmStatusCheck
  Left = 0
  Top = 0
  Caption = 'frmStatusCheck'
  ClientHeight = 335
  ClientWidth = 504
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblImportExport: TLabel
    Left = 303
    Top = 302
    Width = 176
    Height = 16
    Caption = 'WHAT ARE IMPORTS AND EXPORTS?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    OnClick = lblImportExportClick
    OnMouseEnter = lblImportExportMouseEnter
    OnMouseLeave = lblImportExportMouseLeave
  end
  object btnBack: TButton
    Left = 8
    Top = 288
    Width = 81
    Height = 39
    Caption = 'BACK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiBold SemiConden'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnBackClick
  end
  object pgcStatus: TPageControl
    Left = 24
    Top = 24
    Width = 457
    Height = 249
    ActivePage = tbsStatus
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Bahnschrift SemiCondensed'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
    TabOrder = 1
    object tbsStatus: TTabSheet
      Caption = 'STATUS'
      object lblTrackingID: TLabel
        Left = 3
        Top = 16
        Width = 83
        Height = 19
        Caption = 'TRACKING ID:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblClient: TLabel
        Left = 171
        Top = 16
        Width = 47
        Height = 19
        Caption = 'CLIENT:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblStatus: TLabel
        Left = 3
        Top = 56
        Width = 47
        Height = 18
        Caption = 'STATUS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblStatusChange: TLabel
        Left = 68
        Top = 80
        Width = 4
        Height = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
      end
      object edtTrackingID1: TEdit
        Left = 92
        Top = 13
        Width = 46
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtClientID1: TEdit
        Left = 224
        Top = 13
        Width = 185
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object pgbStatus: TProgressBar
        Left = 68
        Top = 57
        Width = 341
        Height = 17
        TabOrder = 2
      end
    end
    object tbsFlight: TTabSheet
      Caption = 'FLIGHT'
      ImageIndex = 1
      object lblCompany: TLabel
        Left = 11
        Top = 72
        Width = 102
        Height = 18
        Caption = 'FLIGHT COMPANY:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCompanyTel: TLabel
        Left = 30
        Top = 120
        Width = 83
        Height = 18
        Caption = 'COMPANY TEL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 21
        Top = 184
        Width = 388
        Height = 13
        Caption = 
          'For more information or in case of delays, contact the company u' +
          'sing the above information'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
      end
      object lblTrackingIdFLight: TLabel
        Left = 3
        Top = 16
        Width = 83
        Height = 19
        Caption = 'TRACKING ID:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 171
        Top = 16
        Width = 47
        Height = 19
        Caption = 'CLIENT:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtCompany: TEdit
        Left = 119
        Top = 68
        Width = 185
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtTel: TEdit
        Left = 119
        Top = 116
        Width = 185
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtTrackingID2: TEdit
        Left = 92
        Top = 13
        Width = 46
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtClientID2: TEdit
        Left = 224
        Top = 13
        Width = 185
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object tbsTradeDetails: TTabSheet
      Caption = 'TRADE DETAILS'
      ImageIndex = 2
      object Label2: TLabel
        Left = 3
        Top = 16
        Width = 83
        Height = 19
        Caption = 'TRACKING ID:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 171
        Top = 16
        Width = 47
        Height = 19
        Caption = 'CLIENT:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblDeparture: TLabel
        Left = 0
        Top = 64
        Width = 161
        Height = 19
        Caption = 'COUNTRY OF DEPARTURE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblArrival: TLabel
        Left = 20
        Top = 94
        Width = 141
        Height = 19
        Caption = 'COUNTRY OF ARRIVAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTransported: TLabel
        Left = 18
        Top = 127
        Width = 143
        Height = 19
        Caption = 'GOODS TRANSPORTED:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblValue: TLabel
        Left = 117
        Top = 160
        Width = 44
        Height = 19
        Caption = 'VALUE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtTrackingID3: TEdit
        Left = 92
        Top = 13
        Width = 46
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtClientID3: TEdit
        Left = 224
        Top = 13
        Width = 185
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object edtDeparture: TEdit
        Left = 167
        Top = 61
        Width = 270
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtValue: TEdit
        Left = 167
        Top = 160
        Width = 270
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtTransported: TEdit
        Left = 167
        Top = 127
        Width = 270
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtArrival: TEdit
        Left = 167
        Top = 94
        Width = 270
        Height = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Bahnschrift SemiLight SemiConde'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
end
