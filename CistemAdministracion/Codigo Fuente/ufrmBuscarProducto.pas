unit ufrmBuscarProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxPC,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxSkinsdxRibbonPainter, uDAInterfaces, dxRibbon, Menus, cxLookAndFeelPainters,
  dxStatusBar, dxRibbonStatusBar, StdCtrls, cxButtons, ExtCtrls, cxLabel,
  cxContainer, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime, dxRibbonSkins, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  cxPCdxBarPopupMenu, cxNavigator, uDAFields, uROComponent;

type
  TFrmBuscarProducto = class(TfrmBuscar)
    dbgBuscarDBTableView2ProductoID: TcxGridDBColumn;
    dbgBuscarDBTableView2Codigo: TcxGridDBColumn;
    dbgBuscarDBTableView2Nombre: TcxGridDBColumn;
    dbgBuscarDBTableView2PrecioVenta: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure IniciarBusqueda(Tipo:Byte);
  end;

var
  FrmBuscarProducto: TFrmBuscarProducto;

implementation

uses UtileriasComun, dmImagenes, uDM;

{$R *.dfm}

{ TFrmBuscarProducto }

procedure TFrmBuscarProducto.FormCreate(Sender: TObject);
begin
  inherited;
  Busqueda:=True;
  Nuevo:=False;
end;

procedure TFrmBuscarProducto.IniciarBusqueda(Tipo:Byte);
var
  EstacionActual:Integer;
begin
  EstacionActual:=DM.Estacion;
  cdsBuscar.Close;
  cdsBuscar.ParamByName('EstacionID').asInteger:=EstacionActual;
  cdsBuscar.ParamByName('Tipo').AsInteger:=Tipo;
  cdsBuscar.Open;
end;

end.
