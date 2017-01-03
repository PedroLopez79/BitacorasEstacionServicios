unit ufrmBombas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxTextEdit, cxDBEdit, cxContainer, cxGroupBox,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  uDAInterfaces, uDAMemDataTable;

type
  TfrmDistribucionBomba = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    txtBombaID: TcxDBTextEdit;
    LblNoEstacion: TcxLabel;
    txtNoBomba: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cbxProducto: TcxDBLookupComboBox;
    LblCategoria: TcxLabel;
    cdsProducto: TDACDSDataTable;
    dsProducto: TDADataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    dbgCatalogoDBTableView1BombaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1NoBomba: TcxGridDBColumn;
    dbgCatalogoDBTableView1PosicionCarga: TcxGridDBColumn;
    dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn;
    dbgCatalogoDBTableView1ProductoID: TcxGridDBColumn;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDistribucionBomba: TfrmDistribucionBomba;
  EstacionActual:Integer;

implementation

uses Modules, uDM, UtileriasComun;

{$R *.dfm}

procedure TfrmDistribucionBomba.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('BombaID').AsInteger:=DM.Servidor.Folio('BombaID','');
  cdsCatalogo.FieldByName('EstacionID').AsInteger:=EstacionActual;
  txtNoBomba.SetFocus;
end;

procedure TfrmDistribucionBomba.FormCreate(Sender: TObject);
begin
  inherited;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsProducto.Close;
  //cdsProducto.ParamByName('EstacionID').AsInteger:=EstacionActual;
  //cdsProducto.ParamByName('Tipo').AsInteger:=1;
  cdsProducto.Open;
end;

initialization
  ModuleInfoManager.RegisterModule('Distribución Bombas', TfrmDistribucionBomba);
end.
