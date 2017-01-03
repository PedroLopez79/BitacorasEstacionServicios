unit fServerDataModule;

interface

uses
  SysUtils, Classes,
  uROClient, uROPoweredByRemObjectsButton, uROClientIntf, uROServer,
  uROBinMessage, uROIndyHTTPServer,
  uDAEngine, uDADriverManager, uDAClasses, uROSessions, uROIndyTCPServer, uDASDACDriver,
  uDADataDictionary, uDAStreamableComponent, uDAConnectionManager, uROMessage,
  uROComponent, uROBaseConnection, uROCustomHTTPServer, uROBaseHTTPServer, ActiveX;

type
  TServerDataModule3 = class(TDataModule)
    Server: TROIndyHTTPServer;
    Message: TROBinMessage;
    ConnectionManager3: TDAConnectionManager;
    DriverManager: TDADriverManager;
    SessionManager: TROInMemorySessionManager;
    DASDACDriver1: TDASDACDriver;
    DataDictionary: TDADataDictionary;
    
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    AplicaSobrantes: Boolean;
  end;

var
  ServerDataModule3: TServerDataModule3;

implementation

uses UtileriasComun;

{$R *.dfm}

procedure TServerDataModule3.DataModuleCreate(Sender: TObject);
const
  Cadena = 'SDAC?Server=%s;Database=%s;UserID=%s;Password=%s;Schemas=1;Integrated Security=SSPI;';
begin
  try
    CoInitialize (nil);

    RutaRegistro:='Server Empresas';
    ConnectionManager3.Connections[0].ConnectionString:=Format(Cadena, [LeerRegistro('Servidor','127.0.0.1'),
                                                                      LeerRegistro('Database','Empresas'),
                                                                      LeerRegistro('User','sa'),
                                                                      LeerRegistro('Password','')]);
    AplicaSobrantes:=LeerRegistro('AplicaSobrantes', '0') = '1';
    Server.Port := StrToInt(LeerRegistro('Puerto', '9003'))
  finally
    Server.Active := true;
  end;
end;

end.
