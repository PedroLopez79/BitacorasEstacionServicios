unit ufrmCancelarFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, DB,
  uDADataTable, uDAScriptingProvider, uDACDSDataTable, cxLabel, cxTextEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces,
  cxCurrencyEdit, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeelPainters, cxGraphics, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, dxSkinSummer2008, cxCalendar, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSpringTime;

type
  TfrmCancelarFactura = class(TfrmCustomModule)
    pgcFacturas: TcxPageControl;
    TabCancelaFactura: TcxTabSheet;
    grpCancelaFactura: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    DACDSDataTable1: TDACDSDataTable;
    DADataSource1: TDADataSource;
    edtFolio: TcxCurrencyEdit;
    edtSerie: TcxImageComboBox;
    cxLabel3: TcxLabel;
    dtpFecha: TcxDateEdit;
    procedure TxtFolioPropertiesChange(Sender: TObject);
    procedure pgcFacturasChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ActionCancelar(Action: TBasicAction);
  protected
     procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmCancelarFactura: TfrmCancelarFactura;

implementation

uses
  Modules, uDM, dmActions, dmImagenes, UtileriasComun,
  LibraryEmpresas_Intf;

{$R *.dfm}

{ TfrmCancelarFactura }

procedure TfrmCancelarFactura.ActionCancelar(Action: TBasicAction);
var
  S: String;
begin
  if MessageDlg('Deseas Cancelar la Factura', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    pgcFacturas.SetFocus;
    S:=DM.Servidor.CancelaFactura(Trunc(edtFolio.EditValue), edtSerie.EditValue, dtpFecha.Date, DM.Estacion, DM.Seguridad.idEmpleado);
    MessageDlg(S, mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmCancelarFactura.FormCreate(Sender: TObject);
begin
  inherited;
  with edtSerie.Properties.Items.Add do
  begin
    Description:=DM.Serie;
    Value:=DM.Serie;
  end;
  if DM.SerieExpress <> '' then
  begin
    edtSerie.Enabled:=True;
    with edtSerie.Properties.Items.Add do
    begin
      Description:=DM.SerieExpress;
      Value:=DM.SerieExpress;
    end;
  end;
  edtSerie.EditValue:=DM.Serie;
  dtpFecha.Date:=Trunc(Now);
end;

procedure TfrmCancelarFactura.pgcFacturasChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmCancelarFactura.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actCancelar, ActionCancelar);
end;

procedure TfrmCancelarFactura.TxtFolioPropertiesChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmCancelarFactura.UpdateActionsState;
begin
  inherited;
  dmAppActions.actCancelar.Enabled:=(edtFolio.Text <> '');
end;

initialization
  ModuleInfoManager.RegisterModule('Cancelar Factura', TfrmCancelarFactura);

end.
