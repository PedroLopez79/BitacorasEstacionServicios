object ServerDataModule: TServerDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 261
  Width = 294
  object Server: TROIndyHTTPServer
    Dispatchers = <
      item
        Name = 'Message'
        Message = Message
        Enabled = True
        PathInfo = 'Bin'
      end>
    SendClientAccessPolicyXml = captAllowAll
    IndyServer.Bindings = <>
    IndyServer.DefaultPort = 8001
    IndyServer.ListenQueue = 45
    IndyServer.TerminateWaitTime = 10000
    Port = 8001
    Left = 32
    Top = 8
  end
  object Message: TROBinMessage
    Envelopes = <>
    Left = 32
    Top = 56
  end
  object ConnectionManager: TDAConnectionManager
    Connections = <
      item
        Name = 'INGRESOS'
        ConnectionString = 
          'SDAC?Server=IANSERVICES.DDNS.NET\IAN;Database=GAUSS;UserID=sa;Pa' +
          'ssword=IAN32;'
        ConnectionType = 'MSSQL'
        Default = True
      end>
    DriverManager = DriverManager
    PoolingEnabled = True
    Left = 192
    Top = 56
  end
  object DriverManager: TDADriverManager
    DriverDirectory = '%SYSTEM%\'
    TraceActive = False
    TraceFlags = []
    Left = 192
    Top = 8
  end
  object DataDictionary: TDADataDictionary
    Fields = <>
    Left = 32
    Top = 112
  end
  object SessionManager: TROInMemorySessionManager
    Left = 192
    Top = 104
  end
  object SuperServer: TROSuperTCPServer
    Active = True
    Dispatchers = <
      item
        Name = 'Message'
        Message = Message
        Enabled = True
      end>
    Port = 8001
    DefaultResponse = 'ROSC:Invalid connection string'
    Left = 88
    Top = 8
  end
end
