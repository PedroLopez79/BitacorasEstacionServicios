unit ufrmConsentrado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTextEdit, cxLabel, cxContainer, cxGroupBox, cxPC, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxDBEdit, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, uDAInterfaces, uDADataTable, uDAScriptingProvider, uDACDSDataTable;

type
  TfrmConcentrado = class(TfrmCustomModule)
    Depositos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    txtCombustible: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel11: TcxLabel;
    Fecha: TcxLabel;
    edtFechaInicial: TcxDateEdit;
    txtEstacion: TcxTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cbBtnBuscaEstacion: TcxButton;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cxGroupBox3: TcxGroupBox;
    cxLabel8: TcxLabel;
    dbTipoCambio: TcxDBTextEdit;
    dbImportePesos: TcxDBTextEdit;
    Cantidad: TcxLabel;
    Importe: TcxLabel;
    dbCantidad: TcxDBTextEdit;
    dbAceites: TcxDBTextEdit;
    dbCreditos: TcxDBTextEdit;
    cdsConcentradoAceites: TDACDSDataTable;
    dsConcentradoAceites: TDADataSource;
    cdsConcentradoCreditos: TDACDSDataTable;
    dsConcentradoCreditos: TDADataSource;
    cdsConcentradoDlls: TDACDSDataTable;
    dsConcentradoDlls: TDADataSource;
    txtTotal: TcxTextEdit;
    txtFichas: TcxTextEdit;
    txtDiferencia: TcxTextEdit;
    cdsConcentradoGastos: TDACDSDataTable;
    dsConcentradoGastos: TDADataSource;
    dbGastos: TcxDBTextEdit;
    cdsConcentradoDeposito: TDACDSDataTable;
    dsConcentradoDeposito: TDADataSource;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1EstacionID: TcxGridDBColumn;
    cxGrid1DBTableView1Secuencia: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Ejercicio: TcxGridDBColumn;
    cxGrid1DBTableView1Periodo: TcxGridDBColumn;
    cxGrid1DBTableView1Dia: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure txtCombustibleExit(Sender: TObject);
    procedure edtFechaInicialExit(Sender: TObject);
    procedure txtEstacionExit(Sender: TObject);
    procedure cbBtnBuscaEstacionClick(Sender: TObject);
  private
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);

    { Private declarations }
    Procedure CalculaTotal;
      public
      procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmConcentrado: TfrmConcentrado;
  Ejercicio,Periodo,Dia,Estacion:Integer;
  Total,Combustible,Aceites,Creditos,Gastos,DifCreditos,DifLitros,Dlls,Deposito:Double;
  BotonEstado:Integer;


implementation
uses Modules, uDM, dmActions,dmImagenes, UtileriasComun,ufrmBuscarEstacion2;

{$R *.dfm}
procedure TfrmConcentrado.ActionGuardar(Action: TBasicAction);
begin
  Botonestado:=1;

end;

procedure TfrmConcentrado.ActionNuevo(Action: TBasicAction);
begin
  BotonEstado:=2;

end;

procedure TfrmConcentrado.CalculaTotal;
begin
    Total:=(Combustible + Aceites) -(Creditos + Gastos + Dlls + DifLitros + DifCreditos);
    txtTotal.Text:=Floattostr(Total);
end;

procedure TfrmConcentrado.cbBtnBuscaEstacionClick(Sender: TObject);
begin
  inherited;
  frmBuscaEstaciones:=TfrmBuscaEstaciones.Create(Self);
  frmBuscaEstaciones.ShowModal;
  if frmBuscaEstaciones.OK then
  begin
    txtEstacion.Text:=inttostr(frmBuscaEstaciones.Clave);
    Estacion:=strtoint(txtestacion.Text);
    txtEstacion.SetFocus;
  end;
end;

procedure TfrmConcentrado.edtFechaInicialExit(Sender: TObject);
var
  Fecha:Datetime;
begin
  inherited;
  Dlls:=0;
  Aceites:=0;
  Creditos:=0;
  Gastos:=0;
  Deposito:=0;
  Fecha:=edtFechaInicial.EditValue;
  Ejercicio:=strtoint(FormatDateTime('yyyy',Fecha));
  Periodo:=strtoint(FormatDateTime('mm',Fecha));
  Dia:= strtoint(FormatDateTime('dd',Fecha));

  cdsConcentradoDlls.Close;
  cdsConcentradoDlls.ParamByName('Ejercicio').AsInteger:=Ejercicio;
  cdsConcentradoDlls.ParamByName('Periodo').AsInteger:=Periodo;
  cdsConcentradoDlls.ParamByName('Dia').AsInteger:=Dia;
  cdsConcentradoDlls.ParamByName('Estacion').AsInteger:=Estacion;
  cdsConcentradoDlls.Open;
  Dlls:=cdsConcentradoDlls.FieldByName('Importe').AsFloat;

  cdsConcentradoAceites.Close;
  cdsConcentradoAceites.ParamByName('Ejercicio').AsInteger:=Ejercicio;
  cdsConcentradoAceites.ParamByName('Periodo').AsInteger:=Periodo;
  cdsConcentradoAceites.ParamByName('Dia').AsInteger:=Dia;
  cdsConcentradoAceites.ParamByName('Estacion').AsInteger:=Estacion;
  cdsConcentradoAceites.Open;
  Aceites:=cdsConcentradoAceites.FieldByName('Aceites').AsFloat;

  cdsConcentradoCreditos.Close;
  cdsConcentradoCreditos.ParamByName('ejercicio').AsInteger:=Ejercicio;
  cdsConcentradoCreditos.ParamByName('Periodo').AsInteger:=Periodo;
  cdsConcentradoCreditos.ParamByName('Dia').AsInteger:=Dia;
  cdsConcentradoCreditos.ParamByName('Estacion').AsInteger:=Estacion;
  cdsConcentradoCreditos.Open;
  Creditos:=cdsConcentradoCreditos.FieldByName('Credito').AsFloat;

  cdsConcentradoGastos.Close;
  cdsConcentradoGastos.ParamByName('Ejercicio').AsInteger:=Ejercicio;
  cdsConcentradoGastos.ParamByName('Periodo').AsInteger:=Periodo;
  cdsConcentradoGastos.ParamByName('Dia').AsInteger:=Dia;
  cdsConcentradoGastos.ParamByName('Estacion').AsInteger:=Estacion;
  cdsConcentradoGastos.Open;
  Gastos:=cdsConcentradoGastos.FieldByName('GAstos').AsFloat;

  cdsConcentradoDeposito.Close;
  cdsConcentradoDeposito.ParamByName('ejercicio').AsInteger:=Ejercicio;
  cdsConcentradoDeposito.ParamByName('Periodo').AsInteger:=Periodo;
  cdsConcentradoDeposito.ParamByName('Dia').AsInteger:=Dia;
  cdsConcentradoDeposito.ParamByName('Estacion').AsInteger:=Estacion;
  cdsConcentradoDeposito.Open;

  cdsConcentradoDeposito.First;
  Deposito:=0;
  while not cdsConcentradoDeposito.EOF do
  Begin
    Deposito:=Deposito + cdsConcentradoDeposito.FieldByName('Cantidad').AsFloat;
    cdsConcentradoDeposito.Next;
  end;
  txtFichas.Text:=floattostr(Deposito);

end;

procedure TfrmConcentrado.FormCreate(Sender: TObject);
begin
  inherited;
  botonEstado:=1;
end;

procedure TfrmConcentrado.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
end;

procedure TfrmConcentrado.txtCombustibleExit(Sender: TObject);
begin
  inherited;

  if txtCombustible.Text='' then
    txtCombustible.Text:='0';
  If Not isNumeric(txtCombustible.Text) then
  begin
    showMessage('Debes de Teclear un Numero');
    txtCombustible.SetFocus;
  end
  else
  begin
    Combustible:=strtofloat(txtCombustible.Text);
    CalculaTotal;
  end;
end;

procedure TfrmConcentrado.txtEstacionExit(Sender: TObject);
begin
  inherited;

  if Not isNumeric(txtEstacion.Text) then
  begin
    showMessage('Debes de Teclear un Numero');
    txtEstacion.SetFocus;
  end
  else
  begin
    cdsEstacion.Close;
    cdsEstacion.ParamByName('EstacionID').AsInteger:=txtEstacion.EditValue;
    cdsEstacion.Open;
  end;

end;

procedure TfrmConcentrado.UpdateActionsState;
begin
  inherited;
  If BotonEstado=1 then
  begin
    dmAppActions.actNuevo.Enabled:=true;
    dmAppActions.actGuardar.Enabled:=false;
  end
  else
    dmAppActions.actNuevo.Enabled:=false;

  If BotonEstado=2 then
  begin
    dmAppActions.actGuardar.Enabled:=true;
    dmAppActions.actNuevo.Enabled:=False;
  end
  else
    dmAppActions.actGuardar.Enabled:=false;
end;

initialization
  ModuleInfoManager.RegisterModule('Concentrado', TfrmConcentrado);

end.
