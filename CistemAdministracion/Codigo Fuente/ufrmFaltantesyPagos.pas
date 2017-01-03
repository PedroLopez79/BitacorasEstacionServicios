unit ufrmFaltantesyPagos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxGraphics, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, uDADataTable, uDAScriptingProvider,
  uDACDSDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxLabel, cxContainer,
  cxGroupBox, cxPC, cxMemo, uDAInterfaces, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinSummer2008;

type
  TfrmFaltantesyPagos = class(TfrmCustomModule)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    dbEmpleadoID: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxEmpleado: TcxTextEdit;
    dbFecha: TcxDBDateEdit;
    dbTipoMovimiento: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxTextEdit2: TcxTextEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsEmpleado: TDACDSDataTable;
    dsCliente: TDADataSource;
    cdsFaltantesyPagos: TDACDSDataTable;
    dsFaltantesyPagos: TDADataSource;
    cxDBMemo1: TcxDBMemo;
    cxLabel6: TcxLabel;
    cdsTipoMovimiento: TDACDSDataTable;
    dsTipoMovimiento: TDADataSource;
    cdsFaltantesPorEmpleado: TDACDSDataTable;
    dsFaltantesPorEmpleado: TDADataSource;
    cxEmpleadoID: TcxTextEdit;
    cdsBuscarEmpleado: TDACDSDataTable;
    dsBuscarEmpleado: TDADataSource;
    cxCantidad: TcxCurrencyEdit;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1TipoFaltantePagoID: TcxGridDBColumn;
    cxGrid1DBTableView1Descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Abono: TcxGridDBColumn;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    edtFechaInicial: TcxDateEdit;
    edtFechaFinal: TcxDateEdit;
    cxProcesar: TcxButton;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cdsSaldoInicial: TDACDSDataTable;
    dsSaldoInicial: TDADataSource;
    cxLabel5: TcxLabel;
    edtSaldoInicial: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxSecuencia: TcxDBTextEdit;
    cdsTurnoALiquidacionID: TDACDSDataTable;
    dsTurnoALiquidacionID: TDADataSource;
    procedure cdsFaltantesyPagosNewRecord(DataTable: TDADataTable);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure cxProcesarClick(Sender: TObject);
    procedure cxPageControl1PageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure dbEmpleadoIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbEmpleadoIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsFaltantesyPagosAfterPost(DataTable: TDADataTable);
    procedure cxEmpleadoIDExit(Sender: TObject);
    procedure cxEmpleadoIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
  { Private declarations }
    NoEmpleado: Integer;
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionBuscar(Action: TBasicAction);
    Procedure BuscarEmpleado;
  protected
      procedure RegisterActions; override;
  public
    { Public declarations }
     procedure UpdateActionsState; override;
  end;

var
  frmFaltantesyPagos: TfrmFaltantesyPagos;
  SaldoInicial: Float;

implementation

uses Modules, uDM, dmActions,  ufrmBuscarCliente,dmImagenes, ufrmBuscarEmpleado;

{$R *.dfm}


procedure TfrmFaltantesyPagos.ActionBuscar(Action: TBasicAction);
begin
   BuscarEmpleado;
   cdsFaltantesyPagos.FieldByName('EmpleadoID').asInteger:=NoEmpleado;
end;

procedure TfrmFaltantesyPagos.ActionCancelar(Action: TBasicAction);
begin
   cdsFaltantesyPagos.CancelUpdates();
end;


procedure TfrmFaltantesyPagos.ActionGuardar(Action: TBasicAction);
begin
  If cdsFaltantesyPagos.FieldByName('TipoFaltantePagoID').AsInteger=1 then //Es Faltante
    cdsFaltantesyPagos.FieldByName('Cargo').AsFloat:=cxCantidad.EditValue
  else //Es un Pago
    cdsFaltantesyPagos.FieldByName('Abono').AsFloat:=cxCantidad.EditValue;
    cdsFaltantesyPagos.FieldByName('Fecha').AsDateTime := Trunc(dbFecha.Date);

    cdsTurnoALiquidacionID.Close;
    cdsTurnoALiquidacionID.ParamByName('EstacionID').AsInteger := DM.Estacion;
    cdsTurnoALiquidacionID.ParamByName('TurnoID').AsInteger := StrToInt(cxSecuencia.Text);
    cdsTurnoALiquidacionID.Open;
    if cdsTurnoALiquidacionID.RecordCount = 0 then
    begin
      ShowMessage('Secuencia no existe o no pertenece a la estacion de servicio');
      Exit;
    end
    else
    begin
    cdsFaltantesyPagos.FieldByName('LiquidacionID').AsInteger := cdsTurnoALiquidacionID.FieldByName('LiquidacionID').AsInteger;
    end;

  cdsFaltantesyPagos.Post;
  cxEmpleado.Clear;
  dbEmpleadoID.Clear;
  dbTipoMovimiento.Clear;
  cxCantidad.Clear;
  cxDBMemo1.Clear;
  cxGroupBox1.Enabled:=False;
  cxSecuencia.Clear;
end;

procedure TfrmFaltantesyPagos.ActionNuevo(Action: TBasicAction);
begin
  cxPageControl1.ActivePage:=cxTabSheet2;
  cxGroupBox1.Enabled:=True;
  cxEmpleado.Clear;
  dbEmpleadoID.Clear;
  dbTipoMovimiento.Clear;
  cxCantidad.Clear;
  cxDBMemo1.Clear;
  dbEmpleadoID.SetFocus;
  cdsFaltantesyPagos.Append;
  cdsFaltantesyPagos.FieldByName('FaltanteyPagoID').AsInteger:=DM.Servidor.Folio('FaltanteyPago','');

  cdsFaltantesyPagos.FieldByName('Fecha').AsDateTime:=Trunc(DM.Servidor.Fecha);

  dbEmpleadoID.SetFocus;
end;

procedure TfrmFaltantesyPagos.BuscarEmpleado;
begin
  frmBuscarEmpleado:=TfrmBuscarEmpleado.Create(Self);
  frmBuscarEmpleado.ShowModal;
   If frmBuscarEmpleado.OK then
   begin
      NoEmpleado:=frmBuscarEmpleado.Clave;
   end;
end;

procedure TfrmFaltantesyPagos.cdsFaltantesyPagosAfterPost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsFaltantesyPagos.ApplyUpdates();
end;

procedure TfrmFaltantesyPagos.cdsFaltantesyPagosNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
    cdsFaltantesyPagos.FieldByName('Cargo').AsFloat:=0;
    cdsFaltantesyPagos.FieldByName('Abono').AsFloat:=0;
end;

procedure TfrmFaltantesyPagos.cxEmpleadoIDExit(Sender: TObject);
begin
  inherited;
  if (cxEmpleadoID.Text='') then
  begin
     ShowMessage('Clave de despachador invalida');
     cxEmpleadoID.SetFocus;
  end
  else
  begin
    cdsBuscarEmpleado.Close;
    cdsBuscarEmpleado.ParamByName('EmpleadoID').asInteger:=strtoint(cxEmpleadoID.EditValue);
    cdsBuscarEmpleado.Open;
    cxTextEdit2.Text:=cdsBuscarEmpleado.FieldByName('Nombre').AsString;

  if cdsBuscarEmpleado.RecordCount <= 0 then
  begin
     ShowMessage('El Numero de empleado no existe');
     cxEmpleadoID.SetFocus;
  end;
  end;

end;

procedure TfrmFaltantesyPagos.cxEmpleadoIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_F2 then
  Begin
    BuscarEmpleado;
    cxEmpleadoId.Text:=inttostr(NoEmpleado);
  End;
end;

function GetSummaryValue(Data: TcxGridViewData; RowIndex, ColIndex: Integer): Double;
var
  I: Integer;
begin
  Result := SaldoInicial;
  for I := RowIndex downto 0 do
  begin
    if Data.Rows[I].IsData then
      Result := (Result + (Data.Rows[I].Values[ColIndex])) - Data.Rows[I].Values[ColIndex + 1]
    else
      Break;
  end;
end;

procedure TfrmFaltantesyPagos.cxGrid1DBTableView1Column1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
  const ValueColumnFieldName = 'Cargo';
  var Col: TcxCustomGridTableItem;
begin
  with Sender.GridView do
  begin
    Col := TcxDBDataController(DataController).GetItemByFieldName(ValueColumnFieldName) as TcxCustomGridTableItem;
    AText := Format('%m', [GetSummaryValue(ViewData as TcxGridViewData, ARecord.Index, Col.Index)]);
  end;
end;

procedure TfrmFaltantesyPagos.cxPageControl1PageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  inherited;
  if NewPage.TabIndex = 0 then
  begin
    dmAppActions.actNuevo.Enabled:=(cdsFaltantesyPagos.State in dsEditModes);
    dmAppActions.actGuardar.Enabled:=(cdsFaltantesyPagos.State in dsEditModes);
    dmAppActions.actCancelar.Enabled:=cdsFaltantesyPagos.State in dsEditModes;
  end
  else
  begin
    dmAppActions.actNuevo.Enabled:=cdsFaltantesyPagos.State = dsBrowse;
    dmAppActions.actGuardar.Enabled:=(cdsFaltantesyPagos.State in dsEditModes);
    dmAppActions.actCancelar.Enabled:=cdsFaltantesyPagos.State in dsEditModes;
  end;
end;

procedure TfrmFaltantesyPagos.cxProcesarClick(Sender: TObject);
begin
  inherited;
    cdsSaldoInicial.Close;
    cdsSaldoInicial.ParamByName('EmpleadoID').AsInteger:= strtoint(cxEmpleadoID.text);
    cdsSaldoInicial.ParamByName('FechaIni').AsDateTime:=edtFechaInicial.Date;
    cdsSaldoInicial.Open;
    edtSaldoInicial.EditValue:=cdsSaldoInicial.FieldByName('SaldoInicial').AsFloat;
    SaldoInicial:=edtSaldoInicial.EditValue;

    if cxEmpleadoID.Text='' then
    begin
      ShowMessage('Clave de Empleado Invalida');
      exit;
    end;
    if edtFechaInicial.EditValue=Null then
    begin
       ShowMessage('Fecha Inicial Invalida');
       exit;
    end;
    if edtFechaFinal.EditValue=Null then
    begin
       ShowMessage('Fecha Final Invalida');
       exit;
    end;

    cdsFaltantesporEmpleado.Close;
    cdsFaltantesporEmpleado.ParamByName('EmpleadoID').AsInteger:=strtoint(cxEmpleadoID.text);
    cdsFaltantesporEmpleado.ParamByName('FechaIni').AsDateTime:=edtFechaInicial.Date;
    cdsFaltantesporEmpleado.ParamByName('FechaFin').AsDateTime:=edtFechaFinal.Date;
    cdsFaltantesporEmpleado.Open;
end;

procedure TfrmFaltantesyPagos.dbEmpleadoIDExit(Sender: TObject);
begin
  inherited;
  cdsEmpleado.Close;
  cdsEmpleado.ParamByName('EmpleadoID').asInteger:=cdsFaltantesyPagos.FieldByName('EmpleadoID').asInteger;
  cdsEmpleado.Open;
  cxEmpleado.Text:=cdsEmpleado.FieldByName('Nombre').AsString;
  if cdsEmpleado.RecordCount <= 0 then
  begin
     ShowMessage('El Numero de empleado no existe');
     dbEmpleadoID.SetFocus;
  end;
end;

procedure TfrmFaltantesyPagos.dbEmpleadoIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_F2 then
  Begin
    BuscarEmpleado;
    cdsFaltantesyPagos.FieldByName('EmpleadoID').asInteger:=NoEmpleado;
  End;
end;

procedure TfrmFaltantesyPagos.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFaltantesyPagos.Open;
  cdsEmpleado.Open;
  cdsTipoMovimiento.Open;
end;

procedure TfrmFaltantesyPagos.RegisterActions;
begin
  //inherited;
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

procedure TfrmFaltantesyPagos.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=cdsFaltantesyPagos.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=(cdsFaltantesyPagos.State in dsEditModes);
  dmAppActions.actCancelar.Enabled:=cdsFaltantesyPagos.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsFaltantesyPagos.State = dsBrowse) and (cdsFaltantesyPagos.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=((cdsFaltantesyPagos.State=dsEdit) or (cdsFaltantesyPagos.State=dsInsert));

end;

initialization
  ModuleInfoManager.RegisterModule('Faltantes y Pagos', TfrmFaltantesyPagos);

end.
