unit ufrmDatosCupon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxGraphics, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  Menus, cxLookAndFeelPainters, DB, uDAInterfaces, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, StdCtrls, cxButtons, cxCurrencyEdit,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp, ExtCtrls;

type
  TfrmDatosCupon = class(TfrmCustomModule)
    cdsProductos: TDACDSDataTable;
    DADataSource2: TDADataSource;
    Panel1: TPanel;
    lblProducto: TLabel;
    cbProducto: TcxLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbProductoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    ProductoID: Integer;
    IEPS :Float;
    PrecioVenta: Float;
  end;

var
  frmDatosCupon: TfrmDatosCupon;

implementation
uses UtileriasComun;

{$R *.dfm}

procedure TfrmDatosCupon.cbProductoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  if Key = #13 then
  begin
    cdsProductos.Locate('ProductoID', cbProducto.EditValue, []);

    ProductoID:= cbProducto.EditValue;
    IEPS:= cdsProductos.FieldByName('IEPS').AsFloat;
    PrecioVenta:= cdsProductos.FieldByName('PrecioVenta').AsFloat;

    close;
  end;
end;

procedure TfrmDatosCupon.FormCreate(Sender: TObject);
begin
  inherited;
  cdsProductos.Close;
  cdsProductos.Open;

  cbProducto.EditValue:= 1;
end;

end.
