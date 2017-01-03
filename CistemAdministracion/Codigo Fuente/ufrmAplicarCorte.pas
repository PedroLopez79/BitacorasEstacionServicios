unit ufrmAplicarCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxContainer, cxGroupBox, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxDBEdit, cxPC, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDAInterfaces, cxLookAndFeels, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TFrmAplicarCorte = class(TfrmCustomModule)
    cdsCortePorSecuencia: TDACDSDataTable;
    dsCortePorSecuencia: TDADataSource;
    cdsBombasAgrupacion: TDACDSDataTable;
    cdsCorte: TDACDSDataTable;
    cdsProducto: TDACDSDataTable;
    dsProducto: TDADataSource;
    dsBombasAgrupacion: TDADataSource;
    cdsAgrupacion: TDACDSDataTable;
    dsAgrupacion: TDADataSource;
    dsCorte: TDADataSource;
    cdsObtenerBombaProductoID: TDACDSDataTable;
    cdsBombaporEstacion: TDACDSDataTable;
    dsBombaporEstacion: TDADataSource;
    cdsBomba: TDACDSDataTable;
    dsBomba: TDADataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    grdCorte: TcxGrid;
    grdCorteDBTableView1: TcxGridDBTableView;
    grdCorteLevel1: TcxGridLevel;
    grpLiquidacion: TcxGroupBox;
    lblAgrupacion: TcxLabel;
    btnAplicarCorte: TcxButton;
    dbAgrupacion: TcxDBLookupComboBox;
    grdCorteDBTableView1Precio: TcxGridDBColumn;
    grdCorteDBTableView1Importe: TcxGridDBColumn;
    grdCorteDBTableView1LecturaInicial: TcxGridDBColumn;
    grdCorteDBTableView1LecturaFinal: TcxGridDBColumn;
    grdCorteDBTableView1VolumenVendido: TcxGridDBColumn;
    grdCorteDBTableView1BombaID: TcxGridDBColumn;
    grdCorteDBTableView1ProductoID: TcxGridDBColumn;
    grdCorteDBTableView1ImporteCupones: TcxGridDBColumn;
    grdCorteDBTableView1NumeroCupones: TcxGridDBColumn;
    grdCorteDBTableView1ImporteTarjetas: TcxGridDBColumn;
    grdCorteDBTableView1NumeroTarjetas: TcxGridDBColumn;
    grdCorteDBTableView1ImporteNotas: TcxGridDBColumn;
    grdCorteDBTableView1NumeroNotas: TcxGridDBColumn;
    cdsSecuenciaTurnoAnterior: TDACDSDataTable;
    dsSecuenciaTurnoAnterior: TDADataSource;
    dsObtenerAgrupacionesPorEstacion: TDADataSource;
    cdsObtenerAgrupacionesporEstacion: TDACDSDataTable;
    procedure cdsCortePorSecuenciaAfterPost(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarCorteClick(Sender: TObject);
    procedure btnAplicarCorteExit(Sender: TObject);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
   // procedure ActionProcesar(Action: TBasicAction);
    procedure ObtenerDatosCorte;
    procedure ObtenerAgrupaciones;
    procedure ObtenerBombaProducto(AgrupacionID:integer; NoBomba:integer; PosicionCarga:integer; var BombaID:Integer; var ProductoID:Integer);
    Procedure ImprimirReporte(Estacion:Integer;SecuenciaIni:Integer;SecuenciaFin:Integer;Agrupacion:Integer);
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  FrmAplicarCorte: TFrmAplicarCorte;
  EstacionActual:integer;
  EstadoBoton:Boolean;
implementation

uses uDM, UtileriasComun, Modules, dmActions, LibraryCistemGas_Intf, dmImagenes,LibraryEmpresas_Intf;

{$R *.dfm}

{ TFrmAplicarCorte }

procedure TFrmAplicarCorte.ActionNuevo(Action: TBasicAction);
begin
  cdsCorte.Open;
  btnAplicarCorte.Enabled:=True;
  btnAplicarCorte.SetFocus;
  cdsCortePorSecuencia.Close;
  EstadoBoton:=True;
end;

procedure TFrmAplicarCorte.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);

end;

procedure TFrmAplicarCorte.UpdateActionsState;
begin
  inherited;
   if EstadoBoton then
    dmAppActions.actNuevo.Enabled:=False
   else
    dmAppActions.actNuevo.Enabled:=True;
end;


procedure TFrmAplicarCorte.btnAplicarCorteClick(Sender: TObject);
begin
  inherited;
  btnAplicarCorte.Enabled:=False;
  btnAplicarCorte.DragCursor:=crHourGlass;

  cdsObtenerAgrupacionesporEstacion.Close;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsObtenerAgrupacionesPorEstacion.ParamByName('Estacion').AsInteger:=EstacionActual;
  cdsObtenerAgrupacionesPorEstacion.Open;

  while Not cdsObtenerAgrupacionesPorEstacion.EOF do
  begin
    ObtenerDatosCorte;
    cdsObtenerAgrupacionesPorEstacion.Next;
  end;

  cdsCortePorSecuencia.Close;
  cdsCortePorSecuencia.ParamByName('Secuencia').AsInteger:=cdsCorte.FieldByName('Secuencia').AsInteger;
  cdsCortePorSecuencia.Open;

  cdsCorte.close;
  cdsCorte.open;
  EstadoBoton:=False;
  UpdateActionsState;   // se manda llamar al Procedimiento para activar el boton nuevo
  btnAplicarcorte.DragCursor:=crDefault;


end;

procedure TFrmAplicarCorte.btnAplicarCorteExit(Sender: TObject);
begin
  inherited;
  btnAplicarCorte.Enabled:=False;
end;

procedure TFrmAplicarCorte.cdsCortePorSecuenciaAfterPost(
  DataTable: TDADataTable);
begin
  inherited;
  // cdsCortePorSecuencia.ApplyUpdates();
end;

procedure TFrmAplicarCorte.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsProducto.Open;
  cdsBomba.Open;
  cdsCorte.Open;
  //cdsCorte.Append;
  ObtenerAgrupaciones;
end;

procedure TFrmAplicarCorte.ImprimirReporte(Estacion, SecuenciaIni, SecuenciaFin,
  Agrupacion: Integer);
var
  Aux: LibraryEmpresas_Intf.TReporte;
begin
  try
    Aux:=DM.Servidor.BuscaReporte('IMPRIMIR LECTURAS', 1);

    DM.Parametros.Estacion:=Estacion;
    DM.Parametros.SecuenciaIni:=SecuenciaIni;
    DM.Parametros.SecuenciaFin:=SecuenciaFin;
    DM.Parametros.Agrupacion:=Agrupacion;
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);

  finally
    Aux.Free;
  end;

end;

procedure TFrmAplicarCorte.ObtenerAgrupaciones;
begin
  cdsAgrupacion.Close;
  cdsAgrupacion.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsAgrupacion.Open;
end;

procedure TFrmAplicarCorte.ObtenerBombaProducto(AgrupacionID, NoBomba,
  PosicionCarga: integer; var BombaID:Integer; var ProductoID:Integer);
begin
  cdsObtenerBombaProductoID.Close;
  cdsObtenerBombaProductoID.ParamByName('AgrupacionID').AsInteger:=AgrupacionID;
  cdsObtenerBombaProductoID.ParamByName('NoBomba').AsInteger:=NoBomba;
  cdsObtenerBombaProductoID.ParamByName('PosicionCarga').AsInteger:=PosicionCarga;
  cdsObtenerBombaProductoID.Open;
  BombaID:=cdsObtenerBombaProductoID.FieldByName('BombaID').AsInteger;
  ProductoID:=cdsObtenerBombaProductoID.FieldByName('ProductoID').AsInteger;

  //Obtener la BomabaID de una bomba determinada
  {cdsBombaporEstacion.Close;
  cdsBombaPorEstacion.ParamByName('NoBomba').AsInteger:=BombaID;
  cdsBombaPorEstacion.ParamByName('EstacionID').AsInteger:=7073;
  cdsBombaPorEstacion.ParamByName('ProductoID').AsInteger:=1;
  cdsBombaPorEstacion.Open;
  BombaID:=cdsBombaPorEstacion.FieldByName('BombaID').AsInteger;}


end;

procedure TFrmAplicarCorte.ObtenerDatosCorte;
var
  AgrupacionID:integer;
  Bomba:Integer;
  I:integer;
  BombaID:integer;
  ProductoID:integer;
  NoCorte:Integer;
 // ButtonSelected:Integer;
  CorteAnterior:Integer;
begin
  cdsBombasAgrupacion.Close;
  cdsBombasAgrupacion.ParamByName('AgrupacionID').AsInteger:=cdsObtenerAgrupacionesporEstacion.FieldByName('AgrupacionID').AsInteger; //cdsCorte.FieldByName('AgrupacionID').AsInteger;
  cdsBombasAgrupacion.Open;
  AgrupacionID:=cdsBombasAgrupacion.ParamByName('AgrupacionID').AsInteger;
  cdsCorte.Cancel;
  while not cdsBombasAgrupacion.EOF do
  begin

  Bomba:=cdsBombasAgrupacion.FieldByName('NoBomba').AsInteger;
    NoCorte:=Dm.ServidorEstacion(EstacionActual).CorteBomba(Bomba); //DM.ObtenerDatosCorte(EstacionActual,Bomba); //Dm.ServidorEstacion(EstacionActual).CorteBomba(Bomba);
    If NoCorte>=1 then
    begin
      sleep(5000);
      DM.DatosCorte:=DM.ServidorEstacion(EstacionActual).DatosCorteBomba(Bomba,NoCorte);
      For I:=0 to DM.DatosCorte.Count-1 do
      begin
        cdsCorte.Append;
        cdsCorte.FieldByName('CorteID').AsInteger:=DM.Servidor.Folio('CorteID','');
        cdsCorte.FieldByName('Secuencia').AsInteger:=DM.DatosCorte.Items[I].TurnoID;


        cdsCorte.FieldByName('LecturaInicial').asFloat:=DM.DatosCorte.Items[I].LecturaInicial;
        cdsCorte.FieldByName('LecturaFinal').AsFloat:=DM.DatosCorte.Items[I].LecturaFinal;

       if cdsCorte.FieldByName('LecturaInicial').asFloat=0 then //********
        Begin
          //Obtener las lecturas Finales del Corte Anterior.
          CorteAnterior:= cdsCorte.FieldByName('Secuencia').AsInteger-1;
          cdsSecuenciaTurnoAnterior.Close;
          cdsSecuenciaTurnoAnterior.ParamByName('EstacionID').AsInteger:=EstacionActual;
          cdsSecuenciaTurnoAnterior.ParamByName('Secuencia').AsInteger:=CorteAnterior;
          cdsSecuenciaTurnoAnterior.ParamByName('Bomba').AsInteger:=BombaID;
          cdsSecuenciaTurnoAnterior.Open;
          cdsCorte.FieldByName('LecturaInicial').asFloat:=cdsSecuenciaTurnoAnterior.FieldByName('LecturaFinal').AsFloat;
        end;// *************

        cdsCorte.FieldByName('Precio').AsFloat:=DM.DatosCorte.Items[I].Precio;
        cdsCorte.FieldByName('VolumenVendido').AsFloat:=cdsCorte.FieldByName('LecturaFinal').AsFloat -
                                                      cdsCorte.FieldByName('LecturaInicial').AsFloat;
        cdsCorte.FieldByName('Importe').AsFloat:=cdsCorte.FieldByName('VolumenVendido').AsFloat *
                                               cdsCorte.FieldByName('Precio').AsFloat;
        cdsCorte.FieldByName('Inicio').AsDateTime:=DM.DatosCorte.Items[I].FechaInicio;
        cdsCorte.FieldByName('Final').AsDateTime:=DM.DatosCorte.Items[I].FechaFinal;
        cdsCorte.FieldByName('Ejercicio').Value:=FormatDateTime('yyyy',cdsCorte.FieldByName('Inicio').AsDateTime);
        cdsCorte.FieldByName('Periodo').Value:=FormatDateTime('mm',cdsCorte.FieldByName('Inicio').AsDateTime);
        cdsCorte.FieldByName('Dia').Value:=FormatDateTime('dd',cdsCorte.FieldByName('Inicio').AsDateTime);
        cdsCorte.FieldByName('Estado').AsString:='NA';

        cdsCorte.FieldByName('EstacionID').AsInteger:=EstacionActual;
        cdsCorte.FieldByName('DespachadorID').AsInteger:= 1;
        ObtenerBombaProducto(AgrupacionID,Bomba,
                            DM.DatosCorte.Items[I].MangueraID, BombaID, ProductoID);
        cdsCorte.FieldByName('BombaID').AsInteger:=BombaID;
        cdsCorte.FieldByName('ProductoID').AsInteger:=ProductoID;
        cdsCorte.FieldByName('AgrupacionID').AsInteger:=AgrupacionID;
        cdsCorte.Post;


      end;

      cdsCorte.ApplyUpdates();
      cdsBombasAgrupacion.Next;
    end
    else
    begin
     // mandar Mensaje que no se puedo realizar el corte
      ShowMessage('Error al Realizar el Corte');
      cdsCorte.close;
      cdsCorte.open;
      EstadoBoton:=False;
      UpdateActionsState;   // se manda llamar al Procedimiento para activar el boton nuevo
      break;

    end;
   // end;         //
   // cdsBombasAgrupacion.Next;   //
  end;

  EstadoBoton:=False;
end;


initialization
  ModuleInfoManager.RegisterModule('Aplicar Corte', TFrmAplicarCorte);
end.
