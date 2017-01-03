unit ufrmTraspasos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBEdit, cxPC, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxLabel, cxContainer, cxGroupBox, ExtCtrls, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxDBLookupComboBox, cxLookupEdit,
  cxDBLookupEdit, cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDAInterfaces, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxPCdxBarPopupMenu, cxNavigator, uDAFields, uROComponent;

type
  TFrmTraspaso = class(TfrmCustomModule)
    cdsProveedor: TDACDSDataTable;
    dsProveedor: TDADataSource;
    dsProducto: TDADataSource;
    cdsProducto: TDACDSDataTable;
    dsDetalleTransaccion: TDADataSource;
    dsTransaccion: TDADataSource;
    cdsFormaPago: TDACDSDataTable;
    dsFormaPago: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    pgcFacturacion: TcxPageControl;
    cdsTransaccion: TDACDSDataTable;
    cdsDetalleTransaccion: TDACDSDataTable;
    cxPagTraspaso: TcxPageControl;
    cxTabTraspaso: TcxTabSheet;
    grbEncabezado: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel8: TcxLabel;
    dbTxtFolio: TcxDBTextEdit;
    dbDatFecha: TcxDBDateEdit;
    cxGroupBox6: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxLabel2: TcxLabel;
    cdsAlmacen: TDACDSDataTable;
    dsAlmacen: TDADataSource;
    cdsDetalleMovimiento: TDACDSDataTable;
    dsDetalleMovimiento: TDADataSource;
    cxGridDBTableView3Cantidad: TcxGridDBColumn;
    cxGridDBTableView3ProductoID: TcxGridDBColumn;
    cxGridDBTableView3Descripcion: TcxGridDBColumn;
    cdsMovimientoAlmacen: TDACDSDataTable;
    dsMovimientoAlmacen: TDADataSource;
    dbCbxAlmacenOrigen: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cdsAlmacenDestino: TDACDSDataTable;
    dsAlmacenDestino: TDADataSource;
    cdsEstaciones: TDACDSDataTable;
    dsEstaciones: TDADataSource;
    dbCbxEstacionDestino: TcxDBLookupComboBox;
    cdsObtenerNoBomba: TDACDSDataTable;
    dsObtenerNoBomba: TDADataSource;
    dbTurno: TcxDBLookupComboBox;
    txtTurnoActual: TcxLabel;
    procedure dbTurnoEnter(Sender: TObject);
    procedure dbTurnoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsTransaccionNewRecord(DataTable: TDADataTable);
    procedure cdsDetalleTransaccionNewRecord(DataTable: TDADataTable);
    procedure cdsTransaccionAfterPost(DataTable: TDADataTable);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cdsTransaccionBeforePost(DataTable: TDADataTable);
    procedure cxGridDBTableView3ProductoIDPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dbCbxAlmacenDestinoEnter(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure dbCbxAlmacenDestinoExit(Sender: TObject);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
    procedure EliminarNulos;
    procedure AfectarInventario;
    function ExisteProducto(ProductoID:Integer):Boolean;
    procedure BuscarProducto;
    function ObtenerSecuencia:integer;
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
     procedure UpdateActionsState; override;
  end;

var
  FrmTraspaso: TFrmTraspaso;
  ImpuestoPorcentaje:Real;
  EstacionActual:Integer;
  Consulta:Byte;
  Estacion:Integer;

implementation

  uses Modules, uDM, dmActions, ufrmBuscarProveedor,
  LibraryEmpresas_Intf, UtileriasComun, ufrmBuscarProducto;

{$R *.dfm}

procedure TFrmTraspaso.ActionNuevo(Action: TBasicAction);
begin
  dbTxtFolio.Enabled:=True;
  dbCbxAlmacenOrigen.Enabled:=True;
  //dbCbxAlmacenDestino.Enabled:=True;
  dbCbxEstacionDestino.Enabled:=True;
  cxGrid1.Enabled:=True;
  cdsTransaccion.Append;
  grbEncabezado.SetFocus;
  dbCbxAlmacenOrigen.SetFocus;
end;

procedure TFrmTraspaso.AfectarInventario;
begin
  cdsMovimientoAlmacen.Open;
  cdsDetalleMovimiento.Open;
  {Afectando al almacen origen}
  cdsMovimientoAlmacen.Append;
  cdsMovimientoAlmacen.FieldByName('MovimientoAlmacen').AsInteger:=DM.Servidor.Folio('MovimientoAlmacen','');
  cdsMovimientoAlmacen.FieldByName('AlmacenID').AsInteger:=cdsTransaccion.FieldByName('AlmacenID').AsInteger;
  cdsMovimientoAlmacen.FieldByName('EstacionID').AsInteger:=cdsTransaccion.FieldByName('EstacionID').AsInteger;
  cdsDetalleTransaccion.First;
  while not cdsDetalleTransaccion.EOF do
  begin
    cdsDetalleMovimiento.Append;
    cdsDetalleMovimiento.FieldByName('DetalleMovimientoID').AsInteger:=DM.Servidor.Folio('DetalleMovimientoID','');
    cdsDetalleMovimiento.FieldByName('Tipo').AsString:=cdsTransaccion.FieldByName('Tipo').AsString;
    cdsDetalleMovimiento.FieldByName('Operador').AsInteger:=-1;
    cdsDetalleMovimiento.FieldByName('Cantidad').AsFloat:=cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat;
    cdsDetalleMovimiento.FieldByName('Costo').AsFloat:=cdsDetalleTransaccion.FieldByName('Costo').AsFloat;
    cdsDetalleMovimiento.FieldByName('MovimientoAlmacen').AsInteger:=cdsMovimientoAlmacen.FieldByName('MovimientoAlmacen').AsInteger;
    cdsDetalleMovimiento.FieldByName('ProductoID').AsInteger:=cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger;
    cdsDetalleMovimiento.FieldByName('TransaccionID').AsInteger:=cdsTransaccion.FieldByName('TransaccionID').AsInteger;
    cdsDetalleMovimiento.Post;
    cdsDetalleTransaccion.Next;
  end;
  cdsMovimientoAlmacen.Post;
  {Afectando al almacen destino}
  cdsMovimientoAlmacen.Append;
  cdsMovimientoAlmacen.FieldByName('MovimientoAlmacen').AsInteger:=DM.Servidor.Folio('MovimientoAlmacen','');
  cdsMovimientoAlmacen.FieldByName('AlmacenID').AsInteger:=cdsTransaccion.FieldByName('AlmacenDestinoID').AsInteger;
  cdsMovimientoAlmacen.FieldByName('EstacionID').AsInteger:=cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger;
  cdsDetalleTransaccion.First;
  while not cdsDetalleTransaccion.EOF do
  begin
    cdsDetalleMovimiento.Append;
    cdsDetalleMovimiento.FieldByName('DetalleMovimientoID').AsInteger:=DM.Servidor.Folio('DetalleMovimientoID','');
    cdsDetalleMovimiento.FieldByName('Tipo').AsString:=cdsTransaccion.FieldByName('Tipo').AsString;
    cdsDetalleMovimiento.FieldByName('Operador').AsInteger:=1;
    cdsDetalleMovimiento.FieldByName('Cantidad').AsFloat:=cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat;
    cdsDetalleMovimiento.FieldByName('Costo').AsFloat:=cdsDetalleTransaccion.FieldByName('Costo').AsFloat;
    cdsDetalleMovimiento.FieldByName('MovimientoAlmacen').AsInteger:=cdsMovimientoAlmacen.FieldByName('MovimientoAlmacen').AsInteger;
    cdsDetalleMovimiento.FieldByName('ProductoID').AsInteger:=cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger;
    cdsDetalleMovimiento.FieldByName('TransaccionID').AsInteger:=cdsTransaccion.FieldByName('TransaccionID').AsInteger;
    cdsDetalleMovimiento.Post;
    cdsDetalleTransaccion.Next;
  end;
  cdsMovimientoAlmacen.Post;
end;

procedure TFrmTraspaso.BuscarProducto;
begin
  frmBuscarProducto:=TfrmBuscarProducto.Create(Self);
  frmBuscarProducto.IniciarBusqueda(2);
  frmBuscarProducto.ShowModal;
  if frmBuscarProducto.OK then
  begin
    if (cdsDetalleTransaccion.State = dsBrowse) then
      cdsDetalleTransaccion.Append;
    cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger:=frmBuscarProducto.Clave;
    cdsDetalleTransaccion.FieldByName('Costo').AsFloat:=DM.Servidor.CostoProducto(frmBuscarProducto.Clave);
  end;
end;

procedure TFrmTraspaso.ActionGuardar(Action: TBasicAction);
begin
  if (cdsTransaccion.FieldByName('EstacionID').AsInteger = cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger) and
    (cdsTransaccion.FieldByName('AlmacenID').AsInteger = cdsTransaccion.FieldByName('AlmacenDestinoID').AsInteger) then
  begin
    Showmessage('Traspaso al mismo Almacen');
//    dbCbxAlmacenDestino.SetFocus;
  end
  else
    if cdsDetalleTransaccion.RecordCount > 0 then
    begin
      if (cdsDetalleTransaccion.State = dsEdit) or
        (cdsDetalleTransaccion.State = dsInsert) then
        cdsDetalleTransaccion.Cancel;
      cdsTransaccion.Post;
    end
    else
      Showmessage('Registre al menos un Producto');
end;

procedure TFrmTraspaso.ActionCancelar(Action: TBasicAction);
begin
  dbTxtFolio.Enabled:=False;
  dbCbxAlmacenOrigen.Enabled:=False;
 // dbCbxAlmacenDestino.Enabled:=False;
  dbCbxEstacionDestino.Enabled:=False;
  cxGrid1.Enabled:=False;

  cdsTransaccion.Cancel;
  cdsDetalleTransaccion.Cancel;
end;

procedure TFrmTraspaso.ActionBuscar(Action: TBasicAction);
begin
  case Consulta of
    1:BuscarProducto;
  end;
end;

procedure TFrmTraspaso.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

procedure TFrmTraspaso.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsTransaccion.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=(cdsTransaccion.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsTransaccion.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsTransaccion.State = dsBrowse) and (cdsTransaccion.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=((cdsTransaccion.State=dsEdit) or (cdsTransaccion.State=dsInsert));
end;

procedure TFrmTraspaso.cdsDetalleTransaccionNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleTransaccion.FieldByName('DetalleTransaccionID').AsInteger:=DM.Servidor.Folio('DetalleTransaccionID','');
  cdsDetalleTransaccion.FieldByName('TransaccionID').AsInteger:=cdsTransaccion.FieldByName('TransaccionID').AsInteger;
  cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat:=0;
  cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=0;
end;

procedure TFrmTraspaso.cdsTransaccionAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdsTransaccion.ApplyUpdates(true);
  cdsDetalleTransaccion.ApplyUpdates(true);
  cdsMovimientoAlmacen.ApplyUpdates(true);
  cdsDetalleMovimiento.ApplyUpdates(true);
end;

procedure TFrmTraspaso.cdsTransaccionBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsTransaccion.FieldByName('Folio').AsInteger:=DM.Servidor.Folio('FolioCompra','');
  EliminarNulos;
  AfectarInventario;
end;

procedure TFrmTraspaso.cdsTransaccionNewRecord(DataTable: TDADataTable);
var
  Fecha:DateTime;
begin
  inherited;
   Fecha:=DM.Servidor.Fecha;
  cdsTransaccion.FieldByName('TransaccionID').AsInteger:=DM.Servidor.Folio('TransaccionID','');
  cdsTransaccion.FieldByName('Folio').AsInteger:=DM.Servidor.FolioActual('FolioCompra','');
  cdsTransaccion.FieldByName('Fecha').AsDateTime:=StrToDate(FormatDateTime('dd/mm/yyyy',Fecha));
  cdsTransaccion.FieldByName('Ejercicio').AsInteger:=StrToInt(FormatDateTime('yyyy',Fecha));
  cdsTransaccion.FieldByName('Periodo').AsInteger:=StrToInt(FormatDateTime('mm',Fecha));
  cdsTransaccion.FieldByName('Dia').AsInteger:=StrToInt(FormatDateTime('dd',Fecha));
//  cdsTransaccion.FieldByName('Secuencia').AsInteger:=ObtenerSecuencia;
  cdsTransaccion.FieldByName('EstacionID').AsInteger:=EstacionActual;
  cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger:=EstacionActual;
  cdsTransaccion.FieldByName('Tipo').AsString:='TR';
  cdsTransaccion.FieldByName('Referencia').AsString:='.';
  cdsTransaccion.FieldByName('Total').AsFloat:=0;
  cdsTransaccion.FieldByName('Subtotal').AsFloat:=0;
  cdsTransaccion.FieldByName('Impuesto').AsFloat:=0;
  cdsTransaccion.FieldByName('Plazo').AsInteger:=0;
  cdsTransaccion.FieldByName('Credito').AsBoolean:=False;
  cdsProveedor.Close;
end;

procedure TFrmTraspaso.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Consulta:=1;
end;

procedure TFrmTraspaso.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  if (cdsDetalleTransaccion.State = dsEdit) or
    (cdsDetalleTransaccion.State = dsInsert) then
    cdsDetalleTransaccion.Cancel;
  Consulta:=0;  
end;

procedure TFrmTraspaso.cxGridDBTableView3ProductoIDPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if DisplayValue > 0 then
  begin
    if ExisteProducto(DisplayValue) then
    begin
      cdsDetalleTransaccion.FieldByName('Costo').AsFloat:=DM.Servidor.CostoProducto(DisplayValue);
      cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger:=DisplayValue;
    end
    else
      Showmessage('Producto NO Existe o no es Inventariable');
  end;
end;

procedure TFrmTraspaso.dbCbxAlmacenDestinoEnter(Sender: TObject);
begin
  inherited;
  cdsAlmacenDestino.Close;
  cdsAlmacenDestino.ParamByName('EstacionID').asInteger:=cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger;
  cdsAlmacenDestino.Open;


end;

procedure TFrmTraspaso.dbCbxAlmacenDestinoExit(Sender: TObject);
begin
  inherited;
  //  obtenermos la secuencia
 cdsTransaccion.FieldByName('Secuencia').AsInteger:=ObtenerSecuencia;
 //***********************************
end;

procedure TFrmTraspaso.dbTurnoEnter(Sender: TObject);
begin
  inherited;
  cdsAlmacenDestino.Close;
  cdsAlmacenDestino.ParamByName('EstacionID').asInteger:=cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger;
  cdsAlmacenDestino.Open;
end;

procedure TFrmTraspaso.dbTurnoExit(Sender: TObject);
//var
 // Secuencia:integer;
begin
  inherited;
  if  cdsTransaccion.FieldByName('AlmacenDestinoID').AsInteger > 0 then
  begin
     cdsTransaccion.FieldByName('Secuencia').AsInteger:=ObtenerSecuencia;
     txtTurnoActual.Caption:=cdsTransaccion.FieldByName('Secuencia').AsString;
   // Secuencia:=cdsTransaccion.FieldByName('AlmacenDestinoID').AsInteger;
  end;
end;

procedure TFrmTraspaso.FormCreate(Sender: TObject);
begin
  inherited;


  dbTxtFolio.Enabled:=False;
  dbCbxAlmacenOrigen.Enabled:=False;
 // dbCbxAlmacenDestino.Enabled:=False;
  dbCbxEstacionDestino.Enabled:=False;
  cxGrid1.Enabled:=False;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  
  cdsAlmacen.Close;
  cdsAlmacen.ParamByName('EstacionID').asInteger:=EstacionActual;
  cdsAlmacen.Open;
  cdsAlmacenDestino.Close;
  cdsAlmacenDestino.ParamByName('EstacionID').asInteger:=cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger;
  cdsAlmacenDestino.Open;

  cdsEstacion.Close;
  cdsEstacion.ParamByName('EstacionID').asInteger:=EstacionActual;
  cdsEstacion.

  Open;
  cdsFormaPago.Open;
  cdsProducto.Close;
  cdsProducto.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsProducto.ParamByName('Tipo').AsInteger:=2;
  cdsProducto.Open;
  cdsTransaccion.Open;
  cdsDetalleTransaccion.Open;
  ImpuestoPorcentaje:=cdsEstacion.FieldByName('Impuesto').AsFloat;
end;


function TFrmTraspaso.ObtenerSecuencia: integer;
var
  NoBomba:Integer;
begin
  cdsObtenerNoBomba.Close;
  cdsObtenerNoBomba.ParamByName('AlmacenId').AsInteger:=cdsTransaccion.FieldByName('AlmacenDestinoID').AsInteger ;
  cdsObtenerNoBomba.Open;

  NoBomba:=cdsObtenerNoBomba.FieldByName('NoBomba').AsInteger;
  Estacion:=cdsTransaccion.FieldByName('EstacionDestinoID').AsInteger;
  //Result:=DM.ServidorEstacion(Estacion).SecuenciaBomba(inttostr(NoBomba));
  Result:=DM.ServidorEstacion(Estacion).SecuenciaBomba(NoBomba);
end;

procedure TFrmTraspaso.EliminarNulos;
begin
  while not cdsDetalleTransaccion.EOF  do
  begin
    if (cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger=0) then
      cdsDetalleTransaccion.Delete;
    cdsDetalleTransaccion.Next;
  end;
end;

function TFrmTraspaso.ExisteProducto(ProductoID: Integer): Boolean;
begin
  Result:=cdsProducto.Locate('ProductoID',ProductoID, [loCaseInsensitive]);
end;

initialization
  ModuleInfoManager.RegisterModule('Traspasos', TFrmTraspaso);
end.
