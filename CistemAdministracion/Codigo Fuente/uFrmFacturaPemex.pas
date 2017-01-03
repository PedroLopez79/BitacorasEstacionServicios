unit uFrmFacturaPemex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxLookAndFeelPainters, cxGraphics, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  uDAInterfaces, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxCurrencyEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, cxDBEdit, cxLabel, cxContainer, cxGroupBox, cxPC, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp, StdCtrls;

type
  TfrmFacturaPemex = class(TfrmCustomModule)
    cxPagFacturacion: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grbEncabezado: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxLabel18: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    grbDetalles: TcxGroupBox;
    dsDetalleFactura: TDADataSource;
    dsFactura: TDADataSource;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cdsTipoValorPemex: TDACDSDataTable;
    dsTipoValorPemex: TDADataSource;
    dbNombre: TcxDBTextEdit;
    dbSerie: TcxDBTextEdit;
    dbFolio: TcxDBCurrencyEdit;
    cdsFactura: TDACDSDataTable;
    cdsDetalleFactura: TDACDSDataTable;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid1DBTableView1TipoValorPemexID: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Importe: TcxGridDBColumn;
    cxGrid1DBTableView1Precio: TcxGridDBColumn;
    lblProducto: TLabel;
    cbProducto: TcxLookupComboBox;
    cdsProductos: TDACDSDataTable;
    DADataSource2: TDADataSource;
    procedure cxGrid1Enter(Sender: TObject);
    procedure cxGrid1Exit(Sender: TObject);
    procedure cdsDetalleFacturaAfterPost(DataTable: TDADataTable);
    procedure cxDBTextEdit10PropertiesChange(Sender: TObject);
    procedure cdsDetalleFacturaNewRecord(DataTable: TDADataTable);
    procedure cdsFacturaNewRecord(DataTable: TDADataTable);
    procedure cdsDetalleFacturaBeforePost(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure TotalFactura;
    procedure GrabarFactura;
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmFacturaPemex: TfrmFacturaPemex;

implementation
  uses UtileriasComun, dmActions, LibraryEmpresas_Intf, ufrmParametros,
  Modules, uDM;

{$R *.dfm}

{ TfrmFacturasPemex }

procedure TfrmFacturaPemex.ActionCancelar(Action: TBasicAction);
begin
  cdsDetalleFactura.Cancel;
  cdsFactura.Cancel;
  cxPagFacturacion.Enabled:=True;
  //dbTxtSerie.SetFocus;
  cdsTipoValorPemex.close;
  cdsFactura.Close;
  cdsDetalleFactura.Close;

  grbEncabezado.Enabled := False;
  grbDetalles.Enabled := False;
end;

procedure TfrmFacturaPemex.ActionGuardar(Action: TBasicAction);
begin
   GrabarFactura;

   cdsTipoValorPemex.close;
   cdsFactura.Close;
   cdsDetalleFactura.Close;
   grbEncabezado.Enabled := False;
   grbDetalles.Enabled := False;
end;

procedure TfrmFacturaPemex.ActionNuevo(Action: TBasicAction);
var Folio:Integer;
    Parametros: LibraryEmpresas_Intf.TParametros;
begin                   
  cdsFactura.Open;
  cdsDetalleFactura.Open;

  cdsFactura.ClearRows;
  cdsDetalleFactura.ClearRows;

  Parametros:=ObtenParametros('P', 'Secuencia del Corte');
  if Parametros <> nil then
  begin
    cxDBTextEdit1.EditValue:=Parametros.SecuenciaIni;
    if cxDBTextEdit1.EditValue < 1 then
      Exit;
  end;

  grbEncabezado.Enabled := True;
  grbDetalles.Enabled := True;

  cdsFactura.Append;
  cdsFactura.FieldByName('TurnoID').AsInteger:= Parametros.SecuenciaIni;
  cdsFactura.FieldByName('EstacionID').AsInteger:= DM.Estacion;
end;

procedure TfrmFacturaPemex.cdsDetalleFacturaAfterPost(DataTable: TDADataTable);
begin
  inherited;
  TotalFactura;
end;

procedure TfrmFacturaPemex.cdsDetalleFacturaBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsTipoValorPemex.Locate('TipoValorPemexID',cdsDetalleFactura.FieldByName('TipoValorPemexID').AsInteger,[loCaseInsensitive]);
  cdsDetalleFactura.FieldByName('Importe').AsFloat:= cdsDetalleFactura.FieldByName('Importe').AsFloat * cdsTipoValorPemex.FieldByName('Operador').AsInteger;
end;

procedure TfrmFacturaPemex.cdsDetalleFacturaNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsDetalleFactura.FieldByName('FacturaPemexID').AsInteger:= cdsFactura.FieldByName('FacturaPemexID').AsInteger;
end;

procedure TfrmFacturaPemex.cdsFacturaNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsFactura.FieldByName('FacturaPemexID').AsInteger:=DM.Servidor.Folio('FacturaPemexID','');
end;

procedure TfrmFacturaPemex.cxDBTextEdit10PropertiesChange(Sender: TObject);
begin
  inherited;
  cxCurrencyEdit3.EditValue:= cxDBTextEdit10.EditValue;
end;

procedure TfrmFacturaPemex.cxGrid1Enter(Sender: TObject);
begin
  inherited;
  cdsTipoValorPemex.Close;
  cdsTipoValorPemex.Open;
end;

procedure TfrmFacturaPemex.cxGrid1Exit(Sender: TObject);
begin
  inherited;
  if (cdsDetalleFactura.State = dsEdit) or
    (cdsDetalleFactura.State = dsInsert) then
    cdsDetalleFactura.Cancel;
end;

procedure TfrmFacturaPemex.FormCreate(Sender: TObject);
begin
  inherited;
  cdsProductos.Close;
  cdsProductos.Open;
end;

procedure TfrmFacturaPemex.GrabarFactura;
var
  Datos:TDatosFacturaPemex;
  Detalles: TDetalleFacturaPemex;
begin
  Datos:=TDatosFacturaPemex.Create();
  Detalles:=TDetalleFacturaPemex.Create();

  Datos:=TDatosFacturaPemex.Create;
  Datos.Serie:=cdsFactura.FieldByName('Serie').AsString;
  Datos.Folio:=cdsFactura.FieldByName('Folio').AsInteger;
  Datos.ProductoID:= cbProducto.EditValue;

  Datos.Fecha:=cdsFactura.FieldByName('Fecha').AsDateTime;
  Datos.Total:=cdsFactura.FieldByName('Total').AsFloat;
  Datos.EstacionID:=cdsFactura.FieldByName('EstacionID').AsInteger;
  Datos.TurnoID:=cdsFactura.FieldByName('TurnoID').AsInteger;
  Datos.Nombre:=cdsFactura.FieldByName('Nombre').AsString;
  Datos.FacturaPemexID:= cdsFactura.FieldByName('FacturaPemexID').AsInteger;

  cdsDetalleFactura.First;
  while not cdsDetalleFactura.EOF do
  begin
    Detalles:=TDetalleFacturaPemex.Create;
    Detalles.FacturaPemexID:=cdsDetalleFactura.FieldByName('FacturaPemexID').AsInteger;
    Detalles.Precio:=cdsDetalleFactura.FieldByName('Precio').AsFloat;
    Detalles.Importe:=cdsDetalleFactura.FieldByName('Importe').AsFloat;
    Detalles.Cantidad:=cdsDetalleFactura.FieldByName('Cantidad').AsFloat;
    Detalles.TipoValorPemexID:=cdsDetalleFactura.FieldByName('TipoValorPemexID').AsInteger;
    Datos.DetalleFactura.Add(Detalles);
    cdsDetalleFactura.Next;
  end;
  DM.Servidor.GuardarDatosFacturaPemex(Datos);
end;

procedure TfrmFacturaPemex.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
end;

procedure TfrmFacturaPemex.TotalFactura;
var
  Total:Real;
begin
  inherited;
  Total:=0;
  cdsDetalleFactura.First;
  While not cdsDetalleFactura.EOF do
  begin
     Total:=Total + cdsDetalleFactura.FieldByName('Importe').AsFloat; 
     cdsDetalleFactura.Next;
  end;
  cdsFactura.FieldByName('Total').AsFloat:=Decimales(Total, 2);

end;

procedure TfrmFacturaPemex.UpdateActionsState;
begin
  inherited;
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsFactura.State = dsInactive;
  dmAppActions.actGuardar.Enabled:=(cdsFactura.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsFactura.State in dsEditModes;
  grbEncabezado.Enabled := not (dmAppActions.actNuevo.Enabled);
  grbDetalles.Enabled := not(dmAppActions.actNuevo.Enabled);
end;

initialization
  ModuleInfoManager.RegisterModule('FacturasPemex', TFrmFacturaPemex);

end.
