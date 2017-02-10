unit uDM;

interface

uses
  Forms, Windows, Controls, SysUtils, Classes, Seguridad, cxHint, cxEdit, cxStyles, ppProd,
  ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, DB, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, uDARemoteDataAdapter,
  uDADataStreamer, uDABinAdapter, uRORemoteService, uROClient, uROBinMessage,
  uROWinInetHttpChannel, Modules, LibraryEmpresas_Intf,
  uDAInterfaces, uDABin2DataStreamer, dxSkinsCore, dxSkinsDefaultPainters,
  cxLookAndFeels, dxSkinsForm, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinValentine, dxSkinXmas2008Blue, Dialogs, dxSkinSummer2008, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime, ppParameter, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxClasses, uDAFields, uDADataAdapter,
  uROChannelAwareComponent, uROMessage, uROComponent, uROBaseConnection,
  uROTransportChannel, uROBaseHTTPClient;

type
  TDM = class(TDataModule)
    Channel: TROWinInetHTTPChannel;
    Message: TROBinMessage;
    RemoteService: TRORemoteService;
    RemoteDataAdapter: TDARemoteDataAdapter;
    cdsMaestro: TDACDSDataTable;
    cdsDetalle: TDACDSDataTable;
    dsMaestro: TDADataSource;
    dsDetalle: TDADataSource;
    dbpMaestro: TppDBPipeline;
    dbpDetalle: TppDBPipeline;
    repReportes: TppReport;
    StyleRepository: TcxStyleRepository;
    rdaMaestro: TDARemoteDataAdapter;
    rdaDetalle: TDARemoteDataAdapter;
    cxStyle1: TcxStyle;
    ChannelEstacion: TROWinInetHTTPChannel;
    MessageEstacion: TROBinMessage;
    cdsEstacion: TDACDSDataTable;
    DataStreamer: TDABin2DataStreamer;
    cxStyle2: TcxStyle;
    dxSkinController1: TdxSkinController;
    ChannelExpress: TROWinInetHTTPChannel;
    MessageExpress: TROBinMessage;
    CistemGasService: TRORemoteService;
    AdapterCistemGas: TDARemoteDataAdapter;
    DataCistemGas: TDABin2DataStreamer;
    ChannelFlotillas: TROWinInetHTTPChannel;
    MessageFlotillas: TROBinMessage;
    FlotillasService: TRORemoteService;
    AdapterFlotillas: TDARemoteDataAdapter;
    DataFlotillas: TDABin2DataStreamer;
    rdaG: TDARemoteDataAdapter;
    cdsG: TDACDSDataTable;
    RAG: TRORemoteService;
    rdaF: TDARemoteDataAdapter;
    cdsF: TDACDSDataTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AsignaServidor(Svr: String);
    procedure AsignaServidorFlotillas(Svr: String);
  public
    { Public declarations }
    TipoReporte:Integer;
    Seguridad: TControlaSeguridad;
    Parametros: LibraryEmpresas_Intf.TParametros;
    ValidaClieteCredito: Boolean;
    DatosFactura:LibraryEmpresas_Intf.TDatosFactura;
    DatosLiquidacion:TDatosLiquidacion;
    DatosReciboPago:TDatosReciboPago;
    MiLoginInfo: LibraryEmpresas_Intf.TLoginInfo;
    PermitirCliente: Boolean;
    Serie: String;
    SerieExpress: String;
    Estacion: Integer;
    ClienteDefault: Integer;
    FormatoFactura: String;
    ServerExpress: String;
    ServerFlotillas: String;
    Intentos: Integer;
    PrimeraVez: Boolean;
    SinTicket: Boolean;
    CteSagarpa: Integer;
    CteSagarpaPemex: Integer;
    CteSagarpaVoucher: Integer;
    GasolineroID: Integer;
    IVA: Float;
    SumaFaltantes: Boolean;
    CambiarAgrupacion: Boolean;
    PuertoAdministrativo: Integer;
    LeeCupon: String;
    LeeTercero: String;
    EmpleadoID: Integer;
    function ShowModule(AModuleInfo: TModuleInfo): Boolean;
    function ShowModuleByName(AModuleName: String): TModuleInfo;
    function Servidor: IServiceEmpresas;

    procedure Imprimir(SQL1, SQL2, Template, Documento, CampoJoin: AnsiString; Directo: Boolean = False);
    procedure AbreDataSetsReportes(SQL1, SQL2: String);
    function Login(Usr, Psw, Svr: String): Integer;
    procedure AsignaPermisos;
    Function ValidaRFC(Const Cad:String):Boolean;
    Function ObtieneTipoCambio(Const Estacion:Integer):Float;
    Function ObtieneTipoCambioID(Const Estacion:Integer):Float;
    function ValorParametro(Cual: Integer): Variant;
    function Folio(ACampo, ASerie: String): Integer;
    procedure RawPrint(Texto, Impresora: string);
  end;

var
  DM: TDM;

implementation

uses ufrmPrincipal, UtileriasComun;

{$R *.dfm}

{ TDM }

procedure TDM.AbreDataSetsReportes(SQL1, SQL2: String);
begin
  cdsMaestro.Close;
  cdsDetalle.Close;

  cdsMaestro.Fields.Clear;
  cdsDetalle.Fields.Clear;

  rdaMaestro.GetDataCall.ParamByName('SQL').AsString:=SQL1;
  rdaMaestro.GetDataCall.ParamByName('Parametros').AsComplexType:=Parametros;
  cdsMaestro.Open;

  if Trim(SQL2) <> '' then
  begin
    rdaDetalle.GetDataCall.ParamByName('SQL').AsString:=SQL2;
    rdaDetalle.GetDataCall.ParamByName('Parametros').AsComplexType:=Parametros;
    cdsDetalle.Open;
  end;
end;

procedure TDM.AsignaPermisos;
var
  I: Integer;
begin
  if Seguridad <> nil then
    Seguridad.Free;
  Seguridad:=TControlaSeguridad.Create(MiLoginInfo.EmpleadoID, MiLoginInfo.EmpleadoID, MiLoginInfo.NombreEmpleado, '');
  for I := 0 to MiLoginInfo.Accesos.Count - 1 do
    Seguridad.AgregaSeguridad(MiLoginInfo.Accesos[I].Nombre, '', '', 1);
end;

procedure TDM.AsignaServidor(Svr: String);
const
  URL = 'http://%s:%d/BIN';
begin
  Channel.Connected:=False;
  Channel.TargetURL:=Format(URL, [Svr, PuertoAdministrativo]);
end;

procedure TDM.AsignaServidorFlotillas(Svr: String);
const
  URL = 'http://%s:9002/BIN';
begin
  ChannelFlotillas.Connected:=False;
  ChannelFlotillas.TargetURL:=Format(URL, [Svr]);
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Intentos:=0;
  RutaRegistro:='CistemEmpresas';
  MiLoginInfo:=LibraryEmpresas_Intf.TLoginInfo.Create;
  Parametros:=LibraryEmpresas_Intf.TParametros.Create;
  Formatos;
  OKEnter:=True;
  Serie:=UtileriasComun.LeerRegistro('SerieFactura','A');
  SerieExpress:=UtileriasComun.LeerRegistro('SerieFacturaExpress','');
  Estacion:=StrToInt(UtileriasComun.LeerRegistro('Estacion','0'));
  //LeeCupon:=UtileriasComun.LeerRegistro('LeeCupon','N');
  //LeeTercero:=UtileriasComun.LeerRegistro('LeeTercero','N');
  FormatoFactura:=UtileriasComun.LeerRegistro('FormatoFactura', 'IMPRIMIR FACTURA');
  //ServerExpress:=UtileriasComun.LeerRegistro('FacturacionExpress', '');
  //ClienteDefault:=StrToInt(UtileriasComun.LeerRegistro('ClienteDefault','9001'));
  //PermitirCliente:=UtileriasComun.LeerRegistro('PermitiClienteDefault', '1') = '1';
  //ValidaClieteCredito:=UtileriasComun.LeerRegistro('ValidaClieteCredito', '0') = '1';
  //PrimeraVez:=UtileriasComun.LeerRegistro('PrimeraVez', '1') = '1';
  //SinTicket:=UtileriasComun.LeerRegistro('SinTicket', '0') = '1';
  //CteSagarpa:=StrToInt(UtileriasComun.LeerRegistro('ClienteSagarpa','0'));
  //CteSagarpaPemex:=StrToInt(UtileriasComun.LeerRegistro('ClientePemex','0'));
  //CteSagarpaVoucher:=StrToInt(UtileriasComun.LeerRegistro('ClienteVoucher','2'));
  //SumaFaltantes:=UtileriasComun.LeerRegistro('SumaFaltantes', '0') = '1';
  //CambiarAgrupacion:=LeerRegistro('CambiarAgrupacion', '0') = '1';
  PuertoAdministrativo := StrToInt(LeerRegistro('Puerto', '9090'));

end;

function TDM.Folio(ACampo, ASerie: String): Integer;
begin
  Result:=Servidor.Folio(ACampo, ASerie);
end;

procedure TDM.Imprimir(SQL1, SQL2, Template, Documento, CampoJoin: AnsiString;
  Directo: Boolean);
var
  Aux: TStringStream;
  lFieldLink: TppMasterFieldLink;
begin
  try
    AbreDataSetsReportes(SQL1, SQL2);
    lFieldLink := TppMasterFieldLink.Create(nil);

    if CampoJoin <> '' then
    begin
      dbpDetalle.MasterDataPipeline := dbpMaestro;
      lFieldLink.Parent := dbpDetalle;
      lFieldLink.DetailFieldName := CampoJoin;
      lFieldLink.MasterFieldName := CampoJoin;
    end;

    Aux:=TStringStream.Create(Template);
    repReportes.Template.LoadFromStream(Aux);
    Aux.Free;
    repReportes.AllowPrintToFile:=True;
    repReportes.AllowPrintToArchive:=True;
    repReportes.PrinterSetup.DocumentName:=Documento;

    if Directo then
    begin
      repReportes.DeviceType:='Printer';
      repReportes.ShowPrintDialog:=True;
    end
    else
    begin
      repReportes.DeviceType:='Screen';
      repReportes.ShowPrintDialog:=True;
    end;

    repReportes.Print;
  finally
    lFieldLink.Free;
  end;
end;

function TDM.Login(Usr, Psw, Svr: String): Integer;
var
  Aux: LibraryEmpresas_Intf.TLoginInfo;
begin
  Result:=-1;


  AsignaServidor(LeerRegistro('Server', '127.0.0.1'));
  AsignaServidorFlotillas(LeerRegistro('ServerFlotillas', '127.0.0.1'));

  Aux:=Servidor.Login(Usr, Psw);
  MiLoginInfo.Assign(Aux);
  EmpleadoID:= Aux.EmpleadoID;
  try
    if Aux.Valida then
    begin
      Result:=Aux.EmpleadoID;
      if Svr <> '' then
        Estacion:=StrToInt(Svr);
      frmPrincipal.Caption:=Format('%d - Cistem Empresas 1.0', [Estacion]);
    end;
  finally
    Aux.Free;
  end;
end;

function TDM.ObtieneTipoCambio(const Estacion: Integer): Float;
begin
 Result:=DM.Servidor.ObtenerTipoCambioPorEstacion(Estacion);
end;

function TDM.ObtieneTipoCambioID(const Estacion: Integer): Float;
begin
  Result:=0;
end;


procedure TDM.RawPrint(Texto, Impresora: string);
begin

end;

function TDM.Servidor: IServiceEmpresas;
begin
  Result:=CoServiceEmpresas.Create(Message, Channel);
end;

function TDM.ShowModule(AModuleInfo: TModuleInfo): Boolean;
begin
  Screen.Cursor:=crHourGlass;
  Result:=False;
  LockWindowUpdate(Application.Handle);
  try
    Result:=ModuleInfoManager.ShowModule(AModuleInfo.Name, frmPrincipal.pnlPrincipal);
  finally
    Screen.Cursor:=crDefault;
    LockWindowUpdate(0);
    if Result then
      RedrawWindow(Application.Handle, nil, 0, RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  end;
end;

function TDM.ShowModuleByName(AModuleName: String): TModuleInfo;
begin
  Result:=ModuleInfoManager.GetModuleInfoByName(AModuleName);
  if Result <> nil then
  begin
    ShowModule(Result);
    frmPrincipal.rtbAcciones.Caption:=AModuleName;
    frmPrincipal.rtbAcciones.Visible:=True;
    frmPrincipal.rtbAcciones.Active:=True;
  end;
end;



function TDM.ValidaRFC(const Cad: String): Boolean;
var
 I:Integer;
begin
  Result:=True;
  For I:=1 to Length(Cad) do
    If (Cad[i] in (['-',' '])) then
    begin
      Result:=False;
      Break;//Exit
    end;
end;

function TDM.ValorParametro(Cual: Integer): Variant;
begin
  case Cual of
    3: Result:=Parametros.FechaIni;
    4: Result:=Parametros.FechaFin;
    5: Result:=Parametros.Estacion;
  end;
end;

end.
