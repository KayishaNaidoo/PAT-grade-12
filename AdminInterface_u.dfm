object frmAdminInterface: TfrmAdminInterface
  Left = 0
  Top = 0
  Caption = 'Admin Interface'
  ClientHeight = 484
  ClientWidth = 738
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Bahnschrift SemiBold SemiConden'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label11: TLabel
    Left = 160
    Top = 200
    Width = 35
    Height = 16
    Caption = 'Label11'
  end
  object pgcAdmin: TPageControl
    Left = 144
    Top = 167
    Width = 449
    Height = 309
    ActivePage = tbsStatusChange
    TabOrder = 0
    object tbsViewInfo: TTabSheet
      Caption = 'VIEW INFO'
      object Label1: TLabel
        Left = 70
        Top = 10
        Width = 55
        Height = 16
        Caption = 'TrackingID:'
      end
      object Label4: TLabel
        Left = 48
        Top = 133
        Width = 74
        Height = 16
        Caption = 'Import/Export:'
      end
      object Label5: TLabel
        Left = 35
        Top = 106
        Width = 87
        Height = 16
        Caption = 'Commodity Type:'
      end
      object Label6: TLabel
        Left = 41
        Top = 165
        Width = 81
        Height = 16
        Caption = 'Value (millions):'
      end
      object Label2: TLabel
        Left = 61
        Top = 43
        Width = 64
        Height = 16
        Caption = 'Client Name:'
      end
      object Label3: TLabel
        Left = 43
        Top = 73
        Width = 81
        Height = 16
        Caption = 'Client Surname:'
      end
      object Label7: TLabel
        Left = 80
        Top = 195
        Width = 42
        Height = 16
        Caption = 'Country:'
      end
      object Label8: TLabel
        Left = 44
        Top = 225
        Width = 80
        Height = 16
        Caption = 'Flight Company:'
      end
      object Label14: TLabel
        Left = 84
        Top = 257
        Width = 36
        Height = 16
        Caption = 'Status:'
      end
      object DBEImportExport: TDBEdit
        AlignWithMargins = True
        Left = 150
        Top = 133
        Width = 121
        Height = 24
        DataField = 'ImportExport'
        DataSource = dmImportExport.dsqry
        TabOrder = 0
      end
      object DBECommodityType: TDBEdit
        Left = 150
        Top = 103
        Width = 121
        Height = 24
        DataField = 'CommodityType'
        DataSource = dmImportExport.dsqry
        TabOrder = 1
      end
      object DBEValue: TDBEdit
        Left = 150
        Top = 163
        Width = 121
        Height = 24
        DataField = 'Value'
        DataSource = dmImportExport.dsqry
        TabOrder = 2
      end
      object DBETrackingID: TDBEdit
        Left = 150
        Top = 3
        Width = 121
        Height = 24
        DataField = 'TrackingID'
        DataSource = dmImportExport.dsqry
        TabOrder = 3
      end
      object DBEName: TDBEdit
        AlignWithMargins = True
        Left = 150
        Top = 43
        Width = 121
        Height = 24
        DataField = 'ClientName'
        DataSource = dmImportExport.dsqry
        TabOrder = 4
      end
      object DBESurname: TDBEdit
        AlignWithMargins = True
        Left = 150
        Top = 73
        Width = 121
        Height = 24
        DataField = 'ClientSurname'
        DataSource = dmImportExport.dsqry
        TabOrder = 5
      end
      object DBECountry: TDBEdit
        Left = 150
        Top = 193
        Width = 121
        Height = 24
        DataField = 'CountryName'
        DataSource = dmImportExport.dsqry
        TabOrder = 6
      end
      object DBECompany: TDBEdit
        Left = 150
        Top = 223
        Width = 121
        Height = 24
        DataField = 'FlightCompany'
        DataSource = dmImportExport.dsqry
        TabOrder = 7
      end
      object DBEStatus: TDBEdit
        Left = 150
        Top = 253
        Width = 121
        Height = 24
        DataField = 'Status'
        DataSource = dmImportExport.dsqry
        TabOrder = 8
      end
    end
    object tbsStatusChange: TTabSheet
      Caption = 'STATUS CHANGE'
      ImageIndex = 1
      object Label9: TLabel
        Left = 104
        Top = 24
        Width = 88
        Height = 16
        Caption = 'Enter Tracking ID:'
      end
      object Label10: TLabel
        Left = 103
        Top = 64
        Width = 89
        Height = 16
        Caption = 'Change Status to:'
      end
      object edtTrackingID: TEdit
        Left = 208
        Top = 21
        Width = 121
        Height = 24
        TabOrder = 0
      end
      object cbxStatusChange: TComboBox
        Left = 208
        Top = 64
        Width = 145
        Height = 24
        Style = csDropDownList
        TabOrder = 1
        Items.Strings = (
          'Departed'
          'Almost Halfway'
          'Halfway'
          'Almost there'
          'Arrived')
      end
      object btnChangeStatus: TButton
        Left = 168
        Top = 112
        Width = 97
        Height = 25
        Caption = 'CHANGE STATUS'
        TabOrder = 2
        OnClick = btnChangeStatusClick
      end
      object btnResetStatus: TBitBtn
        Left = 168
        Top = 152
        Width = 97
        Height = 25
        Caption = '&RESET'
        DoubleBuffered = True
        Kind = bkRetry
        ParentDoubleBuffered = False
        TabOrder = 3
        OnClick = btnResetStatusClick
      end
    end
    object tbsNewCommodity: TTabSheet
      Caption = 'NEW COMMODITY'
      ImageIndex = 2
      object Label15: TLabel
        Left = 37
        Top = 129
        Width = 93
        Height = 16
        Caption = 'COMMODITY TYPE:'
      end
      object Label16: TLabel
        Left = 37
        Top = 168
        Width = 93
        Height = 16
        Caption = 'VALUE (MILLIONS):'
      end
      object Label17: TLabel
        Left = 81
        Top = 206
        Width = 49
        Height = 16
        Caption = 'COUNTRY:'
      end
      object Label18: TLabel
        Left = 41
        Top = 245
        Width = 89
        Height = 16
        Caption = 'FLIGHT COMPANY:'
      end
      object pnlClientNew: TPanel
        Left = 41
        Top = 0
        Width = 249
        Height = 110
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Bahnschrift SemiBold SemiConden'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Label12: TLabel
          Left = 29
          Top = 45
          Width = 32
          Height = 16
          Caption = 'Name:'
        end
        object Label13: TLabel
          Left = 12
          Top = 75
          Width = 49
          Height = 16
          Caption = 'Surname:'
        end
        object Label19: TLabel
          Left = 12
          Top = 8
          Width = 78
          Height = 19
          Caption = 'CLIENT INFO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Bahnschrift SemiBold SemiConden'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object edtName: TEdit
          Left = 80
          Top = 40
          Width = 121
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift SemiBold SemiConden'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edtSurname: TEdit
          Left = 80
          Top = 70
          Width = 121
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Bahnschrift SemiBold SemiConden'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object rgbImportExport: TRadioGroup
        Left = 296
        Top = 17
        Width = 129
        Height = 79
        Caption = 'IMPORT/EXPORT'
        Items.Strings = (
          'Import'
          'Export')
        TabOrder = 2
      end
      object cbxCountry: TComboBox
        Left = 136
        Top = 208
        Width = 145
        Height = 24
        Style = csDropDownList
        TabOrder = 5
        Items.Strings = (
          'China'
          'Korea'
          'Japan'
          'USA'
          'Nigeria'
          'UK')
      end
      object cbxFlightCompany: TComboBox
        Left = 136
        Top = 248
        Width = 145
        Height = 24
        Style = csDropDownList
        TabOrder = 6
        Items.Strings = (
          'Kun Flights Galore'
          'Cha Eunwoo Inc'
          'Baymax International'
          'Yuu Association'
          'Kirito Kaname & Co')
      end
      object sedValue: TSpinEdit
        Left = 136
        Top = 168
        Width = 121
        Height = 26
        MaxValue = 100000000
        MinValue = 0
        TabOrder = 4
        Value = 1
      end
      object btnInsert: TButton
        Left = 303
        Top = 172
        Width = 122
        Height = 81
        Caption = 'INSERT NEW RECORD'
        TabOrder = 7
        WordWrap = True
        OnClick = btnInsertClick
      end
      object cbxNewUser: TCheckBox
        Left = 145
        Top = 10
        Width = 97
        Height = 17
        Caption = 'New User'
        Checked = True
        Color = clBackground
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Bahnschrift SemiCondensed'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnClick = cbxNewUserClick
      end
      object cbxCommType: TComboBox
        Left = 136
        Top = 128
        Width = 289
        Height = 24
        Style = csDropDownList
        TabOrder = 3
        Items.Strings = (
          'Aerospace equipment'
          'Perishable goods'
          'Recreational materials and equipment'
          'Auto and vehicle spares')
      end
    end
  end
  object btnCloseProgram: TBitBtn
    Left = 607
    Top = 431
    Width = 114
    Height = 41
    Caption = '&CLOSE'
    DoubleBuffered = True
    Kind = bkClose
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object dbgCommodities: TDBGrid
    Left = 8
    Top = 24
    Width = 713
    Height = 137
    DataSource = dmImportExport.dsqry
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Bahnschrift SemiBold SemiConden'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'TrackingID'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientName'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientSurname'
        Width = 80
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
        FieldName = 'ImportExport'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Value'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CountryName'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FlightCompany'
        Width = 200
        Visible = True
      end>
  end
  object bmpBack: TBitBtn
    Left = 8
    Top = 431
    Width = 114
    Height = 41
    Caption = '&MAIN FORM'
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = bmpBackClick
  end
end
