unit ufrmTipoCambio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, cxLabel, cxContainer, cxEdit, cxGroupBox,
  cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxDBEdit, DB, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,uDAInterfaces, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxLookAndFeels, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxPCdxBarPopupMenu,
  cxNavigator, uDAFields, uROComponent;

type
  TfrmTipodeCambio = class(TfrmCustomModule)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    dbTipoCambio: TcxDBTextEdit;
    dbEStacion: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cdsTipoCambio: TDACDSDataTable;
    dsTipoCambio: TDADataSource;
    cxTabSheet2: TcxTabSheet;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cdsHistorialTipoCambio: TDACDSDataTable;
    dsHistorialTipoCambio: TDADataSource;
    cxGrid1DBTableView1TipoCambio: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxButton1: TcxButton;
    cdsEstacionHistorial: TDACDSDataTable;
    dsEstacionHistorial: TDADataSource;
    cxEstacion: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxNombreEstacion: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure cdsTipoCambioAfterPost(DataTable: TDADataTable);
    procedure cdsTipoCambioBeforePost(DataTable: TDADataTable);
    procedure cxButton1Click(Sender: TObject);
    Procedure BuscarEstacion;
    procedure cxEstacionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxEstacionExit(Sender: TObject);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
  public
    { Public declarations }
    procedure RegisterActions; override;
    public
    procedure UpdateActionsState; override;
  end;

var
  frmTipodeCambio: TfrmTipodeCambio;
  EstacionActual: Integer;

implementation

uses Modules,uDM, dmActions, dmImagenes,UtileriasComun,ufrmBuscarEstacion2, ufrmPrincipal;

{$R *.dfm}

{ TfrmTipodeCambio }

procedure TfrmTipodeCambio.ActionBuscar(Action: TBasicAction);
begin

end;

procedure TfrmTipodeCambio.ActionCancelar(Action: TBasicAction);
begin
  cdsTipoCambio.CancelUpdates();
end;



procedure TfrmTipodeCambio.ActionGuardar(Action: TBasicAction);
begin

  cdsTipoCambio.Post;
  frmPrincipal.StatusBar.Panels[3].Text:=formatfloat('#0.00',DM.Servidor.ObtenerTipoCambioPorEstacion(7073));
end;

procedure TfrmTipodeCambio.ActionNuevo(Action: TBasicAction);
begin
  cxPageControl1.ActivePage:=cxTabSheet1;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cdsTipoCambio.Append;
  cdsTipoCambio.FieldByName('EstacionID').asInteger:=EstacionActual;
  dbTipoCambio.SetFocus;

end;

procedure TfrmTipodeCambio.BuscarEstacion;
begin
  frmBuscaEstaciones:=TfrmBuscaEstaciones.Create(Self);
  frmBuscaEstaciones.ShowModal;
  if frmBuscaEstaciones.OK then
  begin
    cxEstacion.Text:=inttostr(frmBuscaEstaciones.Clave);
    cxEstacion.SetFocus;
  end;
end;

procedure TfrmTipodeCambio.cdsTipoCambioAfterPost(DataTable: TDADataTable);
begin
  inherited;

  cdsTipoCambio.ApplyUpdates();
end;

procedure TfrmTipodeCambio.cdsTipoCambioBeforePost(DataTable: TDADataTable);
begin
  inherited;
  cdsTipoCambio.FieldByName('TipoCambioID').AsInteger:=DM.Servidor.Folio('TipoCambio','');
  cdsTipoCambio.FieldByName('Fecha').asDatetime:=DM.Servidor.Fecha;
end;

procedure TfrmTipodeCambio.cxButton1Click(Sender: TObject);
begin
  inherited;
    if not isNumeric(cxEstacion.Text) then
  begin
    showMessage('No Es Una Estacion');
    cxEstacion.Clear;
    cxEstacion.SetFocus;
  end
  else
  Begin
    cdsHistorialTipoCambio.Close;
    cdsHistorialTipoCambio.ParamByName('EstacionID').AsInteger:=strtoint(cxEstacion.Text); //cdsEstacionHistorial.FieldByName('EstacionID').AsInteger;
    cdsHistorialTipoCambio.Open;
  End;
end;

procedure TfrmTipodeCambio.cxEstacionExit(Sender: TObject);
begin
  inherited;
  cdsEstacionHistorial.Close;
  cdsEstacionHistorial.ParamByName('EstacionID').asinteger:=strtoint(cxEstacion.EditValue);
  cdsEstacionHistorial.open;
  cxNombreEstacion.Text:=cdsEstacionHistorial.FieldByName('Nombre').asString;
end;

procedure TfrmTipodeCambio.cxEstacionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key=VK_F2 then
  Begin
    BuscarEstacion;
    cdsEstacionHistorial.Close;
    cdsEstacionHistorial.ParamByName('EstacionID').asinteger:=strtoint(cxEstacion.EditValue);
    cdsEstacionHistorial.open;
    cxNombreEstacion.Text:=cdsEstacionHistorial.FieldByName('Nombre').asString;
  End;
end;

procedure TfrmTipodeCambio.FormCreate(Sender: TObject);
begin
  inherited;
  cdsTipoCambio.Open;
  cdsEstacion.Open;
  cdsEstacionHistorial.Open;
  EstacionActual:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));
  cxEstacion.Text:=inttoStr(EstacionActual);
end;

procedure TfrmTipodeCambio.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);

end;

procedure TfrmTipodeCambio.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsTipoCambio.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=(cdsTipoCambio.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsTipoCambio.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsTipoCambio.State = dsBrowse) and (cdsTipoCambio.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=((cdsTipoCambio.State=dsEdit) or (cdsTipoCambio.State=dsInsert));

end;

initialization
  ModuleInfoManager.RegisterModule('Tipo de Cambio', TfrmTipodeCambio);

end.
