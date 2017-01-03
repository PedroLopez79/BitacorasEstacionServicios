unit ufrmQuemaCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, DB, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  cxCalendar, cxDBLookupComboBox, cxTimeEdit, cxMaskEdit, cxDropDownEdit,
  cxDBEdit, cxLabel, cxContainer, cxGroupBox, cxPC, uDAInterfaces,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmQuemaCupones = class(TForm)
    cxGroupBox1: TcxGroupBox;
    edtCupon: TcxTextEdit;
    procedure edtCuponKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Cupon: String;
  end;

  function QuemarCupon: String;

implementation

uses uDM;

{$R *.dfm}

function QuemarCupon: String;
var
  frmQuemaCupones: TfrmQuemaCupones;
begin
  frmQuemaCupones:=TfrmQuemaCupones.Create(nil);
  frmQuemaCupones.ShowModal;
  Result:=frmQuemaCupones.Cupon;
  FreeAndNil(frmQuemaCupones);
end;

procedure TfrmQuemaCupones.edtCuponKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Cupon:=edtCupon.Text;
    Close;
  end;
end;

procedure TfrmQuemaCupones.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

end.
