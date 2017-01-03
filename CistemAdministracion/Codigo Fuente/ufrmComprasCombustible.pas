unit ufrmComprasCombustible;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox, cxDBEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxLabel, StdCtrls, cxContainer, cxGroupBox, cxPC, uDAInterfaces, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeelPainters,
  cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin,
  dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfrmComprasCombustible = class(TfrmCustomModule)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grbEncabezado: TcxGroupBox;
    Label1: TLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel13: TcxLabel;
    dbTxtFolio: TcxDBTextEdit;
    dbTxtProveedor: TcxDBTextEdit;
    cxDbNombre: TcxDBTextEdit;
    cxDbTxtFacturaCompra: TcxDBTextEdit;
    dbDatFecha: TcxDBDateEdit;
    dbCbxAlmacen: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    dbChCredito: TcxDBCheckBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3ProductoID: TcxGridDBColumn;
    cxGridDBTableView3Descripcion: TcxGridDBColumn;
    cxGridDBTableView3Cantidad: TcxGridDBColumn;
    cxGridDBTableView3Costo: TcxGridDBColumn;
    cxGridDBTableView3Importe: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    dsTransaccion: TDADataSource;
    cdsTransaccion: TDACDSDataTable;
    dsAlmacen: TDADataSource;
    cdsAlmacen: TDACDSDataTable;
    dsProveedor: TDADataSource;
    cdsProveedor: TDACDSDataTable;
    cdsDetalleTransaccion: TDACDSDataTable;
    dsDetalleTransaccion: TDADataSource;
    cdsProducto: TDACDSDataTable;
    dsProducto: TDADataSource;
    dsEstacion: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    cdsMovimientoAlmacen: TDACDSDataTable;
    cdsDetalleMovimiento: TDACDSDataTable;
    dsMovimientoalmacen: TDADataSource;
    dsDetalleMovimiento: TDADataSource;
    procedure cdsTransaccionAfterPost(DataTable: TDADataTable);
    procedure cdsTransaccionBeforePost(DataTable: TDADataTable);
    procedure cxGridDBTableView3CostoPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBTableView3CantidadPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsDetalleTransaccionCalcFields(DataTable: TDADataTable);
    procedure cdsDetalleTransaccionAfterPost(DataTable: TDADataTable);
    procedure cdsDetalleTransaccionNewRecord(DataTable: TDADataTable);
    procedure cxGridDBTableView3EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGridDBTableView3ProductoIDPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure dbTxtProveedorExit(Sender: TObject);
    procedure dbTxtProveedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbTxtProveedorEnter(Sender: TObject);
    procedure cdsTransaccionNewRecord(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
    procedure BuscarProveedor;
    procedure BuscarProducto;
    function ExisteProducto(ProductoID:Integer):Boolean;
    Procedure EliminarNulos;
    procedure AfectarInventario;
    function ObtenerSecuencia:integer;
    protected
    procedure RegisterActions; override;

  public
    { Public declarations }
     procedure UpdateActionsState; override;
  end;

var
  frmComprasCombustible: TfrmComprasCombustible;
  EstacionActual:Integer;
  ImpuestoPorcentaje:Float;
  Consulta:Byte;


implementation

uses Modules, uDM, dmActions, ufrmBuscarProveedor,
  LibraryEmpresas_Intf, UtileriasComun, ufrmBuscarProducto;

{$R *.dfm}
{ TfrmComprasCombustible }


procedure TfrmComprasCombustible.ActionBuscar(Action: TBasicAction);
begin

end;

procedure TfrmComprasCombustible.ActionCancelar(Action: TBasicAction);
begin

  cdsTransaccion.Cancel;
end;

procedure TfrmComprasCombustible.ActionGuardar(Action: TBasicAction);
begin
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

procedure TfrmComprasCombustible.ActionNuevo(Action: TBasicAction);

begin

  cdsTransaccion.Append;


end;

procedure TfrmComprasCombustible.AfectarInventario;
begin
  cdsMovimientoAlmacen.Open;
  cdsDetalleMovimiento.Open;
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

procedure TfrmComprasCombustible.BuscarProducto;
begin
  frmBuscarProducto:=TfrmBuscarProducto.Create(Self);
  frmBuscarProducto.IniciarBusqueda(2);
  frmBuscarProducto.ShowModal;
  if frmBuscarProducto.OK then
  begin
    if (cdsDetalleTransaccion.State = dsBrowse) then
      cdsDetalleTransaccion.Append;
    cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger:=frmBuscarProducto.Clave;
    cdsDetalleTransaccion.FieldByName('Costo').AsFloat:=DM.Servidor.CostoProducto(cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger);
  end;
end;

procedure TfrmComprasCombustible.BuscarProveedor;
begin
  frmBuscarProveedor:=TfrmBuscarProveedor.Create(Self);
  frmBuscarProveedor.ShowModal;
  if frmBuscarProveedor.OK then
  begin
    cdsTransaccion.FieldByName('ProveedorID').AsInteger:=frmBuscarProveedor.Clave;
    dbTxtProveedorExit(dbTxtProveedor);

  end;
end;

procedure TfrmComprasCombustible.cdsDetalleTransaccionAfterPost(
  DataTable: TDADataTable);

var
  Total:Real;
begin
  inherited;
  Total:=0;
  cdsDetalleTransaccion.First;
  While not cdsDetalleTransaccion.EOF do
  begin
     Total:=Total + cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat *
                    cdsDetalleTransaccion.FieldByName('Costo').AsFloat;
     cdsDetalleTransaccion.Next;
  end;
  {dsTransaccion.FieldByName('Total').AsFloat:=Total;
  cdsTransaccion.FieldByName('SubTotal').AsFloat:=Total/(1+(ImpuestoPorcentaje/100));
  cdsTransaccion.FieldByName('Impuesto').AsFloat:=cdsTransaccion.FieldByName('Total').AsFloat -
                                              cdsTransaccion.FieldByName('SubTotal').AsFloat;
   }
   cdsTransaccion.FieldByName('SubTotal').AsFloat:=Total;
   cdsTransaccion.FieldByName('Total').AsFloat:= cdsTransaccion.FieldByName('Subtotal').AsFloat *
                                                 (1+(ImpuestoPorcentaje/100));                                               ;
   cdsTransaccion.FieldByName('Impuesto').AsFloat:=cdsTransaccion.FieldByName('Total').AsFloat -
                                              cdsTransaccion.FieldByName('Subtotal').AsFloat;

end;

procedure TfrmComprasCombustible.cdsDetalleTransaccionCalcFields(
  DataTable: TDADataTable);
begin
  inherited;
 cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat *
                                                    cdsDetalleTransaccion.FieldByName('Costo').AsFloat;
end;

procedure TfrmComprasCombustible.cdsDetalleTransaccionNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleTransaccion.FieldByName('DetalleTransaccionID').AsInteger:=DM.Servidor.Folio('DetalleTransaccionID','');
  cdsDetalleTransaccion.FieldByName('TransaccionID').AsInteger:=cdsTransaccion.FieldByName('TransaccionID').AsInteger;
  cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat:=0;
  cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=0;
end;

procedure TfrmComprasCombustible.cdsTransaccionAfterPost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsTransaccion.ApplyUpdates(true);
  cdsDetalleTransaccion.ApplyUpdates(true);
  cdsMovimientoAlmacen.ApplyUpdates(true);
  cdsDetalleMovimiento.ApplyUpdates(true);
end;

procedure TfrmComprasCombustible.cdsTransaccionBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsTransaccion.FieldByName('Folio').AsInteger:=DM.Servidor.Folio('FolioCompra','');
  EliminarNulos;
  AfectarInventario;
end;

procedure TfrmComprasCombustible.cdsTransaccionNewRecord(
  DataTable: TDADataTable);
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
  cdsTransaccion.FieldByName('Secuencia').AsInteger:=ObtenerSecuencia;   /// Falta OBTENER LA SECUENCIA DE LA ESTACION ACTUAL
  cdsTransaccion.FieldByName('EstacionID').AsInteger:=EstacionActual;
  cdsTransaccion.FieldByName('Tipo').AsString:='CM';
end;

procedure TfrmComprasCombustible.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  Consulta:=2;
end;

procedure TfrmComprasCombustible.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  if (cdsDetalleTransaccion.State = dsEdit) or
    (cdsDetalleTransaccion.State = dsInsert) then
    cdsDetalleTransaccion.Cancel;
  Consulta:=0;
end;

procedure TfrmComprasCombustible.cxGridDBTableView3CantidadPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat:=DisplayValue;
  cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat *
                                                    cdsDetalleTransaccion.FieldByName('Costo').AsFloat;

end;

procedure TfrmComprasCombustible.cxGridDBTableView3CostoPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
    cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=DisplayValue;
  cdsDetalleTransaccion.FieldByName('Importe').AsFloat:=cdsDetalleTransaccion.FieldByName('Cantidad').AsFloat *
                                                    cdsDetalleTransaccion.FieldByName('Costo').AsFloat;
end;

procedure TfrmComprasCombustible.cxGridDBTableView3EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_F2 then
  begin
    BuscarProducto;
  end;
end;

procedure TfrmComprasCombustible.cxGridDBTableView3ProductoIDPropertiesValidate(
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

procedure TfrmComprasCombustible.dbTxtProveedorEnter(Sender: TObject);
begin
  inherited;
  Consulta:=1;
end;

procedure TfrmComprasCombustible.dbTxtProveedorExit(Sender: TObject);
begin
  inherited;
  cdsProveedor.Close;
  cdsProveedor.ParamByName('ProveedorID').AsInteger:=strtoint(dbtxtProveedor.text);

  cdsProveedor.Open;
  if cdsProveedor.RecordCount=0 then
  begin
    Showmessage('Proveedor No Existe');
    dbTxtProveedor.SetFocus;
  end;
  Consulta:=0;
end;

procedure TfrmComprasCombustible.dbTxtProveedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
   if Key=VK_F2 then
   begin
     case Consulta of
      1:BuscarProveedor;
      //2:BuscarProducto;
     end
  end;
end;

procedure TfrmComprasCombustible.EliminarNulos;
begin
  while not cdsDetalleTransaccion.EOF  do
  begin
    if (cdsDetalleTransaccion.FieldByName('ProductoID').AsInteger=0) then
      cdsDetalleTransaccion.Delete;
    cdsDetalleTransaccion.Next;
  end;
end;

function TfrmComprasCombustible.ExisteProducto(ProductoID: Integer): Boolean;
begin
  Result:=cdsProducto.Locate('ProductoID',ProductoID, [loCaseInsensitive]);
end;

procedure TfrmComprasCombustible.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','1111'));

  cdsAlmacen.Close;
  cdsAlmacen.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsAlmacen.Open;

  cdsProducto.Close;
  cdsProducto.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsProducto.ParamByName('Tipo').AsInteger:=4;
  cdsProducto.Open;

  cdsEstacion.Close;
  CdsEstacion.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsEstacion.Open;
  ImpuestoPorcentaje:=cdsEstacion.FieldByName('Impuesto').AsFloat;

  cdsTransaccion.Open;
end;

function TfrmComprasCombustible.ObtenerSecuencia: integer;
var
 Secuencia:Integer;
begin
  Secuencia:=Dm.ServidorEstacion(EstacionActual).SecuenciaBomba(1);
  Result:=Secuencia;
end;

procedure TfrmComprasCombustible.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);

end;

procedure TfrmComprasCombustible.UpdateActionsState;
begin
    inherited;
  dmAppActions.actNuevo.Enabled:=cdsTransaccion.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=(cdsTransaccion.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsTransaccion.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsTransaccion.State = dsBrowse) and (cdsTransaccion.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=((cdsTransaccion.State=dsEdit) or (cdsTransaccion.State=dsInsert));


end;

initialization
  ModuleInfoManager.RegisterModule('Compras Combustible', TfrmComprasCombustible);

end.
