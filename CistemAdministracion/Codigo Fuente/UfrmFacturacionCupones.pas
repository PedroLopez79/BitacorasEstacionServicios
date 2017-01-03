unit ufrmFacturacionCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDBEdit, cxPC, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxLabel, cxContainer, cxGroupBox, ExtCtrls, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxDBLookupComboBox, cxLookupEdit,
  cxDBLookupEdit;

type
  TFrmFacturacionCupones = class(TfrmCustomModule)
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    dsProducto: TDADataSource;
    cdsProducto: TDACDSDataTable;
    cdsDetalleFactura: TDACDSDataTable;
    dsDetalleFactura: TDADataSource;
    cdsFactura: TDACDSDataTable;
    dsFactura: TDADataSource;
    cdsFormaPago: TDACDSDataTable;
    dsFormaPago: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    pgcFacturacion: TcxPageControl;
    cxTabFacturacion: TcxTabSheet;
    cxTabTicket: TcxTabSheet;
    GrBoxDatos: TcxGroupBox;
    LblFolio: TcxLabel;
    LblNoCliente: TcxLabel;
    LblRFC: TcxLabel;
    LblFecha: TcxLabel;
    LblDireccion: TcxLabel;
    LblColnia: TcxLabel;
    LblCiudad: TcxLabel;
    LblCodigoPostal: TcxLabel;
    cxLabel1: TcxLabel;
    cxDbTxtFolio: TcxDBTextEdit;
    cxDBTxtCliente: TcxDBTextEdit;
    cxDBTxtNombre: TcxDBTextEdit;
    cxDBTxtRFC: TcxDBTextEdit;
    cxDBTxtDireccion: TcxDBTextEdit;
    cxDBTxtColonia: TcxDBTextEdit;
    cxDBTxtCiudad: TcxDBTextEdit;
    cxDBTxtCP: TcxDBTextEdit;
    cxDBDateFecha: TcxDBDateEdit;
    cxDBTxtSerie: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cbxFormaPago: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cdsTicketFactura: TDACDSDataTable;
    dsTicketFactura: TDADataSource;
    cxGroupBox1: TcxGroupBox;
    LblFacturacionIva: TcxLabel;
    LblFacturacionTotal: TcxLabel;
    txtTotalFactura: TcxDBTextEdit;
    txtImpuestoFactura: TcxDBTextEdit;
    txtSubTotalFactura: TcxDBTextEdit;
    LblFacturacionSubtotal: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    GridFacturacion: TcxGrid;
    GridFacturacionDBTableView1: TcxGridDBTableView;
    GridFacturacionDBTableView1ProductoID: TcxGridDBColumn;
    GridFacturacionDBTableView1Descripcion: TcxGridDBColumn;
    GridFacturacionDBTableView1Cantidad: TcxGridDBColumn;
    GridFacturacionDBTableView1PrecioCalculado: TcxGridDBColumn;
    GridFacturacionDBTableView1Importe: TcxGridDBColumn;
    GridFacturacionLevel1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    grdTicket: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TicketID: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Producto: TcxGridDBColumn;
    cxGridDBTableView1Volumen: TcxGridDBColumn;
    cxGridDBTableView1Precio: TcxGridDBColumn;
    cxGridDBTableView1Importe: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
    cbxListaTicket: TcxComboBox;
    procedure cdsDetalleFacturaCalcFields(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
    procedure cdsFacturaNewRecord(DataTable: TDADataTable);
    procedure cdsDetalleFacturaNewRecord(DataTable: TDADataTable);
    procedure cdsDetalleFacturaAfterPost(DataTable: TDADataTable);
    procedure cdsFacturaAfterPost(DataTable: TDADataTable);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cdsDetalleFacturaBeforePost(DataTable: TDADataTable);
    procedure cdsFacturaBeforePost(DataTable: TDADataTable);
    procedure cxDBTxtClienteExit(Sender: TObject);
    procedure cxDBTxtSerieExit(Sender: TObject);
    procedure cdsTicketFacturaNewRecord(DataTable: TDADataTable);
    procedure cdsTicketFacturaBeforePost(DataTable: TDADataTable);
    procedure cdsTicketFacturaBeforeDelete(DataTable: TDADataTable);
    procedure cxGridDBTableView1TicketIDPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsTicketFacturaAfterPost(DataTable: TDADataTable);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
    procedure AgregarProducto;
    procedure EliminarProducto;
    procedure EliminarNulos;
    function StatusTicket(Valor:Integer;var Mensaje:String):boolean;
    function ExisteTicketEnLista(Valor:Integer):boolean;
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
     procedure UpdateActionsState; override;
  end;

var
  FrmFacturacionCupones: TFrmFacturacionCupones;
  ImpuestoPorcentaje:Real;

implementation

  uses Modules, uDM, dmActions, uDAInterfaces, ufrmBuscar;

{$R *.dfm}

procedure TFrmFacturacionCupones.ActionNuevo(Action: TBasicAction);
begin
  cdsFactura.Append;
  pgcFacturacion.ActivePageIndex:=0;
  cxDBTxtSerie.SetFocus;
  cbxListaTicket.Clear;
end;

procedure TFrmFacturacionCupones.ActionGuardar(Action: TBasicAction);
begin
  if cdsDetalleFactura.RecordCount > 0 then
  begin
    if (cdsDetalleFactura.State = dsEdit) or
      (cdsDetalleFactura.State = dsInsert) then
      cdsDetalleFactura.Cancel;
    cdsFactura.Post;
    pgcFacturacion.ActivePageIndex:=0;
  end
  else
    Showmessage('Registre al menos un Producto');
end;

procedure TFrmFacturacionCupones.ActionCancelar(Action: TBasicAction);
begin
  cdsFactura.Cancel;
  cdsDetalleFactura.Cancel;
  cdsTicketFactura.Cancel;
  pgcFacturacion.ActivePageIndex:=0;
end;

procedure TFrmFacturacionCupones.ActionBuscar(Action: TBasicAction);
begin
  frmBuscar:=TFrmBuscar.Create(Self);
  frmBuscar.ShowModal;
  if frmBuscar.OK then
  begin
    cdsFactura.FieldByName('ClienteID').AsInteger:=frmBuscar.Clave;
    cxDBTxtClienteExit(cxDBTxtCliente);
  end;

end;

procedure TFrmFacturacionCupones.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

procedure TFrmFacturacionCupones.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsFactura.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=(cdsFactura.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsFactura.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsFactura.State = dsBrowse) and (cdsFactura.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=((cdsFactura.State=dsEdit) or (cdsFactura.State=dsInsert)) and (pgcFacturacion.ActivePageIndex=0);
end;


procedure TFrmFacturacionCupones.cdsDetalleFacturaAfterPost(
  DataTable: TDADataTable);
var
  Total:Real;
begin
  inherited;
  Total:=0;
  cdsDetalleFactura.First;
  While not cdsDetalleFactura.EOF do
  begin
     Total:=Total + cdsDetalleFactura.FieldByName('Cantidad').AsFloat *
                    cdsDetalleFactura.FieldByName('Precio').AsFloat;
     cdsDetalleFactura.Next;
  end;
  cdsFactura.FieldByName('Total').AsFloat:=Total;
  cdsFactura.FieldByName('SubTotal').AsFloat:=Total/(1.15);
  cdsFactura.FieldByName('Impuesto').AsFloat:=cdsFactura.FieldByName('Total').AsFloat -
                                              cdsFactura.FieldByName('SubTotal').AsFloat;
end;

procedure TFrmFacturacionCupones.cdsDetalleFacturaBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleFactura.FieldByName('Precio').AsFloat:=cdsDetalleFactura.FieldByName('PrecioCalculado').AsFloat;
end;

procedure TFrmFacturacionCupones.cdsDetalleFacturaCalcFields(
  DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleFactura.FieldByName('Importe').AsFloat:=cdsDetalleFactura.FieldByName('Cantidad').AsFloat *
                                                    cdsDetalleFactura.FieldByName('Precio').AsFloat;
end;

procedure TFrmFacturacionCupones.cdsDetalleFacturaNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleFactura.FieldByName('DetalleFacturaID').AsInteger:=DM.Servidor.Folio('DetalleFacturaID','');
  cdsDetalleFactura.FieldByName('FacturaID').AsInteger:=cdsFactura.FieldByName('FacturaID').AsInteger;
  cdsDetalleFactura.FieldByName('ItemNo').AsInteger:=cdsDetalleFactura.RecordCount+1;
  cdsDetalleFactura.FieldByName('Cantidad').AsFloat:=0;
  cdsDetalleFactura.FieldByName('Importe').AsFloat:=0;
end;

procedure TFrmFacturacionCupones.cdsFacturaAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdsFactura.ApplyUpdates(true);
  cdsDetalleFactura.ApplyUpdates(true);
end;

procedure TFrmFacturacionCupones.cdsFacturaBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsFactura.FieldByName('Folio').AsInteger:=DM.Servidor.Folio('FolioFactura',cdsFactura.FieldByName('Serie').AsString);
  EliminarNulos;
end;

procedure TFrmFacturacionCupones.cdsFacturaNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsFactura.FieldByName('FacturaID').AsInteger:=DM.Servidor.Folio('FacturaID','');
  cdsFactura.FieldByName('Fecha').AsDateTime:=StrToDate(FormatDateTime('dd/mm/yyyy',DM.Servidor.Fecha));
  cdsFactura.FieldByName('TipoFactura').AsInteger:=1;
  cdsFactura.FieldByName('Ejercicio').AsInteger:=StrToInt(FormatDateTime('yyyy',DM.Servidor.Fecha));
  cdsFactura.FieldByName('Periodo').AsInteger:=StrToInt(FormatDateTime('mm',DM.Servidor.Fecha));
  cdsFactura.FieldByName('Dia').AsInteger:=StrToInt(FormatDateTime('dd',DM.Servidor.Fecha));
  cdsFactura.FieldByName('ImpuestoPorcentaje').AsFloat:=ImpuestoPorcentaje;
  cdsFactura.FieldByName('Turno').AsInteger:=1;
  cdsFactura.FieldByName('EstacionID').AsInteger:=1;
  cdsFactura.FieldByName('Cancelada').AsInteger:=0;
  cdsCliente.Close;
end;

procedure TFrmFacturacionCupones.cdsTicketFacturaAfterPost(
  DataTable: TDADataTable);
begin
  inherited;
  cbxListaTicket.Properties.Items.Add(cdsTicketFactura.FieldByName('TicketID').AsString);
end;

procedure TFrmFacturacionCupones.cdsTicketFacturaBeforeDelete(
  DataTable: TDADataTable);
begin
  inherited;
  EliminarProducto;
  cbxListaTicket.Properties.Items.Delete(cbxListaTicket.Properties.Items.IndexOf(cdsTicketFactura.FieldByName('TicketID').AsString));
end;

procedure TFrmFacturacionCupones.cdsTicketFacturaBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsTicketFactura.FieldByName('TicketFacturaID').AsInteger:=DM.Servidor.Folio('TicketFacturaID','');
  AgregarProducto;
end;

procedure TFrmFacturacionCupones.cdsTicketFacturaNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  cdsTicketFactura.FieldByName('FacturaID').AsInteger:=cdsFactura.FieldByName('FacturaID').AsInteger;
  cdsTicketFactura.FieldByName('EstacionID').AsInteger:=cdsFactura.FieldByName('EstacionID').AsInteger;
end;

procedure TFrmFacturacionCupones.cxDBTxtClienteExit(Sender: TObject);
begin
  inherited;
  cdsCliente.Close;
  cdsCliente.ParamByName('ClienteID').AsInteger:=cdsFactura.FieldByName('ClienteID').AsInteger;
  cdsCliente.Open;
  if cdsCliente.RecordCount=0 then
  begin
    Showmessage('Cliente No Existe');
    cxDBTxtCliente.SetFocus;
  end
  else
    pgcFacturacion.Pages[1].Enabled:=True;
end;

procedure TFrmFacturacionCupones.cxDBTxtSerieExit(Sender: TObject);
var
  Folio:Integer;
begin
  inherited;
  Folio:=DM.Servidor.FolioActual('FolioFactura',cdsFactura.FieldByName('Serie').AsString);
  if Folio > 0 then
  begin
    if (cdsFactura.FieldByName('Folio').AsInteger=0) then
      cdsFactura.FieldByName('Folio').AsInteger:=Folio;
  end
  else
  begin
    Showmessage('Serie No Existe !!!');
    cxDBTxtSerie.SetFocus;
  end;
end;

procedure TFrmFacturacionCupones.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  if (cdsDetalleFactura.State = dsEdit) or
    (cdsDetalleFactura.State = dsInsert) then
    cdsDetalleFactura.Cancel;
end;

procedure TFrmFacturacionCupones.cxGridDBTableView1TicketIDPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
  MensajeError:='Capture Ticket';
  if not StatusTicket(DisplayValue,MensajeError) then
  begin
    Error:=True;
    ErrorText:=MensajeError;
    DisplayValue:='0';
  end;
end;

procedure TFrmFacturacionCupones.FormCreate(Sender: TObject);
begin
  inherited;
  dm.okenter:=false;
  pgcFacturacion.ActivePageIndex:=0;
  pgcFacturacion.Pages[1].Enabled:=False;
  cdsEstacion.Open;
  cdsEstacion.ParamByName('EstacionID').asInteger:=1;
  cdsEstacion.Open;
  ImpuestoPorcentaje:=cdsEstacion.FieldByName('Impuesto').AsFloat;
  cdsFormaPago.Open;
  cdsFactura.Open;
  cdsProducto.ParamByName('EstacionID').asInteger:=1;
  cdsProducto.Open;
  cdsDetalleFactura.Open;
end;

procedure TFrmFacturacionCupones.AgregarProducto();
var
   Insertar:boolean;
begin
  Insertar:=True;
  cdsDetalleFactura.First;
  while not cdsDetalleFactura.EOF  do
  begin
    if (cdsDetalleFactura.FieldByName('ProductoID').AsInteger=cdsTicketFactura.FieldByName('ProductoID').AsInteger) then
    begin
      cdsDetalleFactura.Edit;
      cdsDetalleFactura.FieldByName('Cantidad').AsFloat:= cdsDetalleFactura.FieldByName('Cantidad').AsFloat +
                                                          cdsTicketFactura.FieldByName('Volumen').AsFloat;
      cdsDetalleFactura.Post;
      Insertar:=False;
    end;
    cdsDetalleFactura.Next;
  end;
  if Insertar then
  begin
    cdsDetalleFactura.Append;
    cdsDetalleFactura.FieldByName('DetalleFacturaID').AsInteger:=DM.Servidor.Folio('DetalleFacturaID','');
    cdsDetalleFactura.FieldByName('FacturaID').AsInteger:=cdsFactura.FieldByName('FacturaID').AsInteger;
    cdsDetalleFactura.FieldByName('ItemNo').AsInteger:=cdsDetalleFactura.RecordCount+1;
    cdsDetalleFactura.FieldByName('ProductoID').AsInteger:=cdsTicketFactura.FieldByName('ProductoID').AsInteger;
    cdsDetalleFactura.FieldByName('Cantidad').AsFloat:=cdsTicketFactura.FieldByName('Volumen').AsFloat;
    cdsDetalleFactura.FieldByName('Precio').AsFloat:=cdsTicketFactura.FieldByName('Precio').AsFloat;
    cdsDetalleFactura.Post;
  end;
end;

procedure TFrmFacturacionCupones.EliminarNulos;
begin
  while not cdsDetalleFactura.EOF  do
  begin
    if (cdsDetalleFactura.FieldByName('ProductoID').AsInteger=0) then
      cdsDetalleFactura.Delete;
    cdsDetalleFactura.Next;
  end;
end;

procedure TFrmFacturacionCupones.EliminarProducto();
var
   Insertar:boolean;
begin
  Insertar:=True;
  cdsDetalleFactura.First;
  while not cdsDetalleFactura.EOF  do
  begin
    if (cdsDetalleFactura.FieldByName('ProductoID').AsInteger=cdsTicketFactura.FieldByName('ProductoID').AsInteger) then
    begin
      cdsDetalleFactura.Edit;
      cdsDetalleFactura.FieldByName('Cantidad').AsFloat:= cdsDetalleFactura.FieldByName('Cantidad').AsFloat -
                                                          cdsTicketFactura.FieldByName('Volumen').AsFloat;
      cdsDetalleFactura.Post;
      if cdsDetalleFactura.FieldByName('Cantidad').AsFloat = 0 then
        cdsDetalleFactura.Delete;
    end;
    cdsDetalleFactura.Next;
  end;
end;

function TFrmFacturacionCupones.ExisteTicketEnLista(Valor: integer): boolean;
begin
  Result:=cbxListaTicket.Properties.Items.IndexOf(IntToStr(Valor))>-1;
end;

function TFrmFacturacionCupones.StatusTicket(Valor:Integer;var Mensaje:String):boolean;
var
  EstacionID : integer;
  TicketID   : integer;
  Cuantos    : integer;
begin
  EstacionID:=cdsFactura.FieldByName('EstacionID').AsInteger;
  TicketID:=Valor;
  case DM.Servidor.StatusTicket(EstacionID, TicketID) of
    1:begin
        Mensaje:='Ticket utilizado';
        Result:=False;
    end;
    2:if ExisteTicketEnLista(TicketID) then
    begin
      Mensaje:='Ticket Existe En La Lista';
      Result:=False;
    end
    else
      Result:=True;
    3:begin
        Mensaje:='Ticket No Existe';
        Result:=False;
    end;
    4:begin
        Mensaje:='Ticket Existe En Liquidación';
        Result:=False;
    end;
  end;
end;
initialization
  ModuleInfoManager.RegisterModule('FacturaCupon', TFrmFacturacionCupones);
end.
