unit ufrmGeneraFacturas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, cxCurrencyEdit, cxLabel, cxTextEdit,
  cxContainer, cxEdit, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxCalendar,
  uDAScriptingProvider, uDADataTable, uDACDSDataTable, DB, uDAInterfaces,
  cxDBEdit, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmGeneraFacturas = class(TfrmCustomModule)
    pgcGenerar: TcxPageControl;
    tsGenerar: TcxTabSheet;
    tsImprimir: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    edtSerieImprime: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edtFolioImprime: TcxCurrencyEdit;
    cxGroupBox2: TcxGroupBox;
    edtSerie: TcxTextEdit;
    cxLabel1: TcxLabel;
    dtpFecha: TcxDateEdit;
    cxLabel2: TcxLabel;
    dsCliente: TDADataSource;
    cdsCliente: TDACDSDataTable;
    cxLabel5: TcxLabel;
    edtCliente: TcxTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    procedure pgcGenerarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure ActionProcesar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmGeneraFacturas: TfrmGeneraFacturas;

implementation

uses Modules, dmActions, dmImagenes, uDM, UtileriasComun, ufrmBuscarCliente,
  LibraryEmpresas_Intf;

{$R *.dfm}

{ TfrmGeneraFacturas }

procedure TfrmGeneraFacturas.ActionImprimir(Action: TBasicAction);
begin
  DM.ImprimirFactura(DM.Servidor.FacturaID(edtSerieImprime.Text, Trunc(edtFolioImprime.EditValue)));
end;

procedure TfrmGeneraFacturas.ActionProcesar(Action: TBasicAction);
var
  MiFolio: Integer;
begin
  MiFolio:=DM.Servidor.GeneraFactura(DM.Estacion, edtSerie.Text, dtpFecha.Date, cdsCliente.FieldByName('ClienteID').AsInteger, DM.Seguridad.idEmpleado);
  if MiFolio > 0 then
  begin
    edtSerieImprime.Text:=edtSerie.Text;
    edtFolioImprime.Value:=MiFolio;
    pgcGenerar.ActivePageIndex:=1;
  end
  else
  begin
    MessageDlg('No existen movimientos del cliente a la fecha para facturar.', mtError, [mbOK], 0);
  end;
end;

procedure TfrmGeneraFacturas.edtClienteExit(Sender: TObject);
begin
  inherited;
  if IsNumeric(edtCliente.Text) then
  begin
    cdsCliente.Close;
    cdsCliente.ParamByName('ClienteID').AsInteger:=StrToInt(edtCliente.Text);
    cdsCliente.Open;
    if cdsCliente.RecordCount < 1 then
    begin
      Beep;
      MessageDlg('El cliente que selecciono no existe.', mtError, [mbOK], 0);
      edtCliente.Text:='';
    end;
  end;
  UpdateActionsState;
end;

procedure TfrmGeneraFacturas.edtClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  frmBuscarCliente: TfrmBuscarCliente;
begin
  inherited;
  if Key = VK_F2 then
  begin
    frmBuscarCliente:=TfrmBuscarCliente.Create(nil);
    frmBuscarCliente.ShowModal;
    if (frmBuscarCliente.OK) or (frmBuscarCliente.OKClienteNuevo) then
    begin
      edtCliente.EditValue:=frmBuscarCliente.Clave;
      edtClienteExit(nil);
    end;
  end;
end;

procedure TfrmGeneraFacturas.FormCreate(Sender: TObject);
begin
  inherited;
  pgcGenerar.ActivePageIndex:=0;
  edtSerieImprime.Text:=DM.Serie;
  edtSerie.Text:=DM.Serie;
  dtpFecha.Date:=Trunc(Now);
end;

procedure TfrmGeneraFacturas.pgcGenerarChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmGeneraFacturas.RegisterActions;
begin
  inherited;
  RegisterAction(dmAppActions.actProcesar, ActionProcesar);
  RegisterAction(dmAppActions.actImprimir, ActionImprimir);
end;

procedure TfrmGeneraFacturas.UpdateActionsState;
begin
  inherited;
  dmAppActions.actProcesar.Enabled:=(pgcGenerar.ActivePageIndex = 0) and (cdsCliente.Active) and (cdsCliente.RecordCount > 0);
  dmAppActions.actImprimir.Enabled:=(pgcGenerar.ActivePageIndex = 1);
end;

initialization
  ModuleInfoManager.RegisterModule('Generar Facturas', TfrmGeneraFacturas);

end.
