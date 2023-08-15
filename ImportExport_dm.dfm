object dmImportExport: TdmImportExport
  OldCreateOrder = False
  Height = 406
  Width = 579
  object conImportExport: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=I:\Subjects\IT\PAT\' +
      'Programme\PAT\Programme\Database\ImportExport.mdb;Mode=ReadWrite' +
      ';Persist Security Info=False;Jet OLEDB:System database="";Jet OL' +
      'EDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:En' +
      'gine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global P' +
      'artial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB' +
      ':New Database Password="";Jet OLEDB:Create System Database=False' +
      ';Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on' +
      ' Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Je' +
      't OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 136
  end
  object tblClient: TADOTable
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    TableName = 'tblClient'
    Left = 96
    Top = 48
  end
  object tblCountry: TADOTable
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    TableName = 'tblCountry'
    Left = 240
    Top = 48
  end
  object tblFlightCompany: TADOTable
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    TableName = 'tblFlightCompany'
    Left = 320
    Top = 48
  end
  object tblLink: TADOTable
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    TableName = 'tblLink'
    Left = 392
    Top = 48
  end
  object tblCommodities: TADOTable
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    TableName = 'tblCommodities'
    Left = 168
    Top = 48
  end
  object dsCommodities: TDataSource
    DataSet = tblCommodities
    Left = 168
    Top = 208
  end
  object dsClient: TDataSource
    DataSet = tblClient
    Left = 96
    Top = 208
  end
  object dsCountry: TDataSource
    DataSet = tblCountry
    Left = 240
    Top = 208
  end
  object dsFlightCompany: TDataSource
    DataSet = tblFlightCompany
    Left = 320
    Top = 208
  end
  object dsLink: TDataSource
    DataSet = tblLink
    Left = 384
    Top = 208
  end
  object qryImportExport: TADOQuery
    Active = True
    Connection = conImportExport
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT tblLink.TrackingID, Status, ClientName, ClientSurname,tbl' +
        'Commodities.CommodityType,tblCommodities.ImportExport,tblCommodi' +
        'ties.Value,tblCountry.CountryName,FlightCompany'
      
        ' FROM tblCommodities, tblLink, tblCountry,tblFlightCompany, tblC' +
        'lient'
      
        'WHERE (tblLink.TrackingID=tblCommodities.TrackingID) AND (tblLin' +
        'k.FlightID=tblFlightCompany.FlightID) AND (tblLink.CountryID= tb' +
        'lCountry.CountryID) AND( tblLink.ClientId=tblClient.ClientID)'
      'ORDER BY tblLink.TrackingID ASC')
    Left = 448
    Top = 48
  end
  object dsqry: TDataSource
    DataSet = qryImportExport
    Left = 440
    Top = 208
  end
end
