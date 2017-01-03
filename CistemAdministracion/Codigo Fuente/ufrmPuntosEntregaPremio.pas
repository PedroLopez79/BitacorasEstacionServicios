unit ufrmPuntosEntregaPremio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, DB, uDAInterfaces, uDADataTable, uDAScriptingProvider,
  uDAMemDataTable, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxTextEdit, cxDBEdit, cxLabel, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxGraphics, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime;

type
  TfrmPuntosEntregaPremio = class(TfrmCustomModule)
    cdsPuntos: TDAMemDataTable;
    cdsPremio: TDAMemDataTable;
    dsPuntos: TDADataSource;
    dsPremio: TDADataSource;
    gbDatos: TcxGroupBox;
    cxLabel1: TcxLabel;
    edtCliente: TcxTextEdit;
    cxLabel2: TcxLabel;
    cbPremio: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    edtNombre: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtSaldo: TcxCurrencyEdit;
    edtCantidad: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    procedure edtClienteEnter(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure edtClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
  protected
    { Protected declarations }
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmPuntosEntregaPremio: TfrmPuntosEntregaPremio;

implementation

uses uDM, Modules, dmActions, ufrmBuscarCliente, LibraryEmpresas_Intf, UtileriasComun;

{$R *.dfm}

{ TfrmPuntosEntregaPremio }

procedure TfrmPuntosEntregaPremio.ActionBuscar(Action: TBasicAction);
begin
  frmBuscarCliente:=TfrmBuscarCliente.Create(nil);
  frmBuscarCliente.ShowModal;
  if (frmBuscarCliente.OK) or (frmBuscarCliente.OKClienteNuevo) then
  begin
    cdsPuntos.FieldByName('ClienteID').AsInteger := frmBuscarCliente.Clave;
    edtCliente.EditValue := frmBuscarCliente.Clave;
    edtClienteExit(nil);
  end;
end;

procedure TfrmPuntosEntregaPremio.ActionCancelar(Action: TBasicAction);
begin
  if MessageDlg('�Desea cancelar la entrega del premio?', mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    edtCliente.Text := '';
    cdsPuntos.Cancel;
    gbDatos.Enabled := False;
    edtNombre.Text := '';
    edtSaldo.EditValue := 0;
    cbPremio.EditValue := Null;
  end;
end;

procedure TfrmPuntosEntregaPremio.ActionGuardar(Action: TBasicAction);
var
  TotalPuntos, Saldo: Double;
  aTotalPuntos, aSaldo: String;
begin
  if cdsPuntos.FieldByName('ClienteID').AsInteger < 1 then
  begin
    MessageDlg('Debe seleccionar un cliente', mtError, [mbOK], 0);
    Exit;
  end;
  if cbPremio.EditValue <> Null then
  begin
    cdsPremio.Locate('PuntosPremioID', cbPremio.EditValue, []);
    //TotalPuntos := StrToFloat(FloatToStr(cdsPremio.FieldByName('Puntos').AsFloat * edtCantidad.EditValue));
    //Saldo := StrToFloat(FloatToStr(edtSaldo.EditValue));
    TotalPuntos := cdsPremio.FieldByName('Puntos').AsFloat * edtCantidad.EditValue;
    Saldo := edtSaldo.EditValue;

    if TotalPuntos > Saldo then
    begin
      MessageDlg('El saldo no es suficiente para entregar el premio.', mtError, [mbOK], 0);
      Exit;
    end;
    cdsPuntos.FieldByName('Fecha').AsDateTime:=Trunc(Now);
    cdsPuntos.FieldByName('Cargo').AsFloat:=TotalPuntos;
    cdsPuntos.FieldByName('Abono').AsFloat:=0;
    cdsPuntos.FieldByName('Descripcion').AsString:=Format('%d PREMIO(S) [%s]', [Trunc(TotalPuntos),  cdsPremio.FieldByName('Descripcion').AsString]);
    cdsPuntos.FieldByName('UsuarioID').AsInteger:=DM.Seguridad.idEmpleado;
    cdsPuntos.Post;
    cdsPuntos.ApplyUpdates();
    edtCliente.Clear;
    gbDatos.Enabled:=False;
    MuestraMensaje('Entrega de  premio completado.');
  end
  else
    MessageDlg('Debe seleccionar un premio', mtError, [mbOK], 0);
end;

procedure TfrmPuntosEntregaPremio.ActionNuevo(Action: TBasicAction);
begin
  gbDatos.Enabled:=True;
  edtCliente.Text:='';
  edtNombre.Text:='';
  edtSaldo.EditValue:=0;
  cbPremio.EditValue:=Null;
  cdsPuntos.Append;
  edtCantidad.EditValue:=1;
  edtCliente.SetFocus;
end;

procedure TfrmPuntosEntregaPremio.edtClienteEnter(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;

procedure TfrmPuntosEntregaPremio.edtClienteExit(Sender: TObject);
var
  Datos: TDatosCliente;
  Aux: Integer;
begin
  inherited;
  UpdateActionsState;
  if (edtCliente.Text <> '') then
  begin
    Datos:=TDatosCliente.Create;
    try
      Aux:=0;
      if (Length(edtCliente.Text) < 8) and (IsNumeric(edtCliente.Text)) then
        Aux:=StrToInt(edtCliente.Text);
      Datos.Assign(DM.Servidor.DatosCliente(Aux, edtCliente.Text));
      edtNombre.Text:=Datos.Nombre;
      edtSaldo.EditValue:=Datos.Saldo;
      cdsPuntos.FieldByName('ClienteID').AsInteger:=Datos.ClienteID;
      edtCliente.Text:=IntToStr(Datos.ClienteID);
      if Datos.ClienteID < 1 then
      begin
        edtCliente.Text:='';
        edtCliente.SetFocus;
        MessageDlg('Cliente NO Existe', mtError, [mbOK], 0);
      end;
    finally
      Datos.Free;
    end;
  end;
end;

procedure TfrmPuntosEntregaPremio.edtClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
    ActionBuscar(nil);
end;

procedure TfrmPuntosEntregaPremio.FormCreate(Sender: TObject);
begin
  inherited;
  cdsPuntos.Open;
  cdsPremio.ParamByName('EstacionID').AsInteger := DM.Estacion;
  cdsPremio.Open;
end;

procedure TfrmPuntosEntregaPremio.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

procedure TfrmPuntosEntregaPremio.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsPuntos.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=cdsPuntos.State in dsEditModes;
  dmAppActions.actCancelar.Enabled:=cdsPuntos.State in dsEditModes;
  dmAppActions.actBuscar.Enabled:=(cdsPuntos.State in dsEditModes) and (edtCliente.Focused);
end;

initialization
  ModuleInfoManager.RegisterModule('Entregar Premio', TfrmPuntosEntregaPremio);

end.
