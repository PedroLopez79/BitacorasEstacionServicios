object ServerDataModule3: TServerDataModule3
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 207
  Width = 353
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
    IndyServer.DefaultPort = 9003
    Port = 9003
    Left = 32
    Top = 8
  end
  object Message: TROBinMessage
    Envelopes = <>
    Left = 32
    Top = 56
  end
  object ConnectionManager3: TDAConnectionManager
    Connections = <
      item
        Name = 'FACTURAELECTRONICA'
        ConnectionString = 
          'SDAC?Server=localhost;Database=facturaelectronica;UserID=DESARRO' +
          'LLO;Password=Cistem32;Schemas=1;Integrated Security=SSPI;'
        ConnectionType = 'SDAC'
        Default = True
      end>
    DriverManager = DriverManager
    PoolingEnabled = True
    Left = 136
    Top = 56
  end
  object DriverManager: TDADriverManager
    DriverDirectory = '%SYSTEM%\'
    TraceActive = False
    TraceFlags = []
    Left = 136
    Top = 8
  end
  object DataDictionary: TDADataDictionary
    Fields = <>
    Left = 32
    Top = 104
  end
  object SessionManager: TROInMemorySessionManager
    Left = 136
    Top = 104
  end
  object DASDACDriver1: TDASDACDriver
    Left = 248
    Top = 8
  end
end
