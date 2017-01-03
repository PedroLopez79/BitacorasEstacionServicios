unit ufrmAgrupacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxTextEdit, cxContainer, cxGroupBox, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  uDAInterfaces, uDAMemDataTable;

type
  TfrmAgrupacion = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    txtAgrupacion: TcxDBTextEdit;
    txtDescripcion: TcxDBTextEdit;
    LblNombre: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    cdsAlmacen: TDACDSDataTable;
    dsAlmacen: TDADataSource;
    dbgCatalogoDBTableView1AgrupacionID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn;
    dbgCatalogoDBTableView1AlmacenID: TcxGridDBColumn;
    dsAgrupacionBomba: TDADataSource;
    cdsAgrupacionBomba: TDACDSDataTable;
    cdsBombas: TDACDSDataTable;
    dsBombas: TDADataSource;
    cdsBombasDisponibles: TDACDSDataTable;
    dsBombasDisponibles: TDADataSource;
    cdsProductos: TDACDSDataTable;
    dsProductos: TDADataSource;
    cdsObtenerBombasDeAgrupacion: TDACDSDataTable;
    dsObtenerBombasDeAgrupacion: TDADataSource;
    cbxAlmacen: TcxDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cbxBombasDblClick(Sender: TObject);
    procedure cbxBombasEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgrupacion: TfrmAgrupacion;
  EstacionActual:Integer;

implementation

uses Modules, uDM, UtileriasComun;

{$R *.dfm}
procedure TfrmAgrupacion.cbxBombasDblClick(Sender: TObject);
begin
  inherited;
  cdsAgrupacionBomba.FieldByName('AgrupacionID').AsInteger:=cdsCatalogo.FieldByName('AgrupacionID').AsInteger;
  cdsAgrupacionBomba.FieldByName('BombaID').AsInteger:=cdsObtenerBombasDeAgrupacion.FieldByName('BombaID').AsInteger;
  cdsAgrupacionBomba.Post;
  cdsAgrupacionBomba.ApplyUpdates(true);
  cdsObtenerBombasDeAgrupacion.Close;
  cdsObtenerBombasDeAgrupacion.ParamByName('Agrupacion').AsInteger:=cdsCatalogo.FieldByName('AgrupacionID').AsInteger;
  cdsObtenerBombasDeAgrupacion.Open;
end;

procedure TfrmAgrupacion.cbxBombasEnter(Sender: TObject);
begin
  inherited;
  cdsAgrupacionBomba.Append;
end;

procedure TfrmAgrupacion.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('AgrupacionID').AsInteger:=DM.Servidor.Folio('AgrupacionID','');
  cdsCatalogo.FieldByName('EstacionID').AsInteger:=EstacionActual;
  txtDescripcion.SetFocus;
end;

procedure TfrmAgrupacion.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsAlmacen.Open;
  cdsAgrupacionBomba.Open;
  cdsBombas.Open;
  cdsProductos.Close;
  cdsProductos.ParamByName('EstacionID').AsInteger:=EstacionActual;
  cdsProductos.ParamByName('Tipo').AsInteger:=1;
  cdsProductos.Open;
  cdsBombasDisponibles.Close;
  cdsBombasDisponibles.ParamByName('Estacion').AsInteger:=EstacionActual;
  cdsBombasDisponibles.Open;
 // cdsAgrupacionPorEstacion.Close;
 // cdsAgrupacionPorEstacion.ParamByName('EstacionID').AsInteger:=1;
 // cdsAgrupacionPorEstacion.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Agrupaciones', TfrmAgrupacion);
end.
