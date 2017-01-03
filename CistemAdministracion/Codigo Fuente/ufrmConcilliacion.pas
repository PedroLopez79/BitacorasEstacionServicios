unit ufrmConcilliacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxCurrencyEdit, cxDBEdit, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, uDAScriptingProvider,
  uDADataTable, uDAMemDataTable, uDAInterfaces, cxImageComboBox,
  cxDBLookupComboBox;

type
  TfrmConcilliacion = class(TfrmCustomModule)
    gbConciliacion: TcxGroupBox;
    cxLabel1: TcxLabel;
    dtpFecha: TcxDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    dbgConciliacionDBTableView1: TcxGridDBTableView;
    dbgConciliacionLevel1: TcxGridLevel;
    dbgConciliacion: TcxGrid;
    dsConciliacion: TDADataSource;
    dsDetalle: TDADataSource;
    cdsConciliacion: TDAMemDataTable;
    cdsDetalle: TDAMemDataTable;
    dbgConciliacionDBTableView1FechaAplicacion: TcxGridDBColumn;
    dbgConciliacionDBTableView1Tipo: TcxGridDBColumn;
    dbgConciliacionDBTableView1Descripcion: TcxGridDBColumn;
    dbgConciliacionDBTableView1Importe: TcxGridDBColumn;
    cdsDeposito: TDAMemDataTable;
    cdsCuenta: TDAMemDataTable;
    dsCuenta: TDADataSource;
    dbgConciliacionDBTableView1Column1: TcxGridDBColumn;
    procedure cdsDetalleBeforePost(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetalleNewRecord(DataTable: TDADataTable);
    procedure cdsConciliacionNewRecord(DataTable: TDADataTable);
    procedure dtpFechaExit(Sender: TObject);
    procedure dbgConciliacionEnter(Sender: TObject);
    procedure dbgConciliacionExit(Sender: TObject);
    procedure cdsDetalleAfterPost(DataTable: TDADataTable);
    procedure dbgConciliacionDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
  public
    { Public declarations }
    Fecha: TDateTime;
    procedure UpdateActionsState; override;
    procedure RegisterActions; override;
  end;

var
  frmConcilliacion: TfrmConcilliacion;

implementation

uses uDM, Modules, dmActions, UtileriasComun, dmImagenes;

{$R *.dfm}

procedure TfrmConcilliacion.ActionCancelar(Action: TBasicAction);
begin
  cdsConciliacion.Close;
  cdsDetalle.Close;
end;

procedure TfrmConcilliacion.ActionGuardar(Action: TBasicAction);
begin
  cdsConciliacion.Post;
  if cdsDetalle.State in dsEditModes then
    cdsDetalle.Post;
  cdsConciliacion.ApplyUpdates();
  cdsDetalle.ApplyUpdates();
  ActionCancelar(nil);
end;

procedure TfrmConcilliacion.ActionNuevo(Action: TBasicAction);
begin
  cdsConciliacion.Close;
  cdsConciliacion.ParamByName('EstacionID').AsInteger:=0;
  cdsConciliacion.ParamByName('Fecha').AsDateTime:=0;
  cdsConciliacion.Open;
  cdsDetalle.Close;
  dtpFecha.Enabled:=True;
  dtpFecha.SetFocus;
end;

procedure TfrmConcilliacion.cdsConciliacionNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsConciliacion.FieldByName('ConciliacionID').AsInteger:=DM.Servidor.Folio('ConciliacionID', '');
  cdsConciliacion.FieldByName('EstacionID').AsInteger:=DM.Estacion;
  cdsConciliacion.FieldByName('Fecha').AsDateTime:=dtpFecha.Date;
  cdsConciliacion.FieldByName('Entregado').AsInteger:=0;
  cdsConciliacion.FieldByName('Diferencia').AsInteger:=0;
end;

procedure TfrmConcilliacion.cdsDetalleAfterPost(DataTable: TDADataTable);
begin
  inherited;
  if dbgConciliacionDBTableView1.DataController.Summary.FooterSummaryValues[0] <> null then
    cdsConciliacion.FieldByName('Entregado').AsCurrency:=dbgConciliacionDBTableView1.DataController.Summary.FooterSummaryValues[0]
  else
    cdsConciliacion.FieldByName('Entregado').AsCurrency:=0;
  cdsConciliacion.FieldByName('Diferencia').AsCurrency:=cdsConciliacion.FieldByName('Total').AsCurrency - cdsConciliacion.FieldByName('Entregado').AsCurrency;
end;

procedure TfrmConcilliacion.cdsDetalleBeforePost(DataTable: TDADataTable);
begin
  inherited;
  if cdsDetalle.FieldByName('DetalleConciliacionID').AsInteger = 0 then
  begin
    cdsDetalle.FieldByName('ConciliacionID').AsInteger:=cdsConciliacion.FieldByName('ConciliacionID').AsInteger;
    cdsDetalle.FieldByName('DetalleConciliacionID').AsInteger:=DM.Servidor.Folio('DetalleConciliacionID', '');
  end;
  cdsDetalle.FieldByName('UsuarioID').AsInteger:=DM.Seguridad.idEmpleado;
  Fecha:=Trunc(cdsDetalle.FieldByName('FechaAplicacion').AsDateTime);
end;

procedure TfrmConcilliacion.cdsDetalleNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsDetalle.FieldByName('Tipo').AsInteger:=1;
  cdsDetalle.FieldByName('FechaAplicacion').AsDateTime:=Trunc(Fecha);
  cdsDetalle.FieldByName('Descripcion').AsString:='';
end;

procedure TfrmConcilliacion.dbgConciliacionDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DELETE) and (cdsDetalle.State = dsBrowse) and (cdsDetalle.RecordCount > 0) then
  begin
    cdsDetalle.Delete;
  end;
end;

procedure TfrmConcilliacion.dbgConciliacionEnter(Sender: TObject);
begin
  inherited;
  OkEnter:=False;
end;

procedure TfrmConcilliacion.dbgConciliacionExit(Sender: TObject);
begin
  inherited;
  OkEnter:=True;
end;

procedure TfrmConcilliacion.dtpFechaExit(Sender: TObject);
begin
  inherited;
  dtpFecha.Enabled:=False;
  cdsConciliacion.Close;
  cdsConciliacion.ParamByName('EstacionID').AsInteger:=DM.Estacion;
  cdsConciliacion.ParamByName('Fecha').AsDateTime:=Trunc(dtpFecha.Date);
  cdsConciliacion.Open;
  if cdsConciliacion.IsEmpty then
    cdsConciliacion.Append
  else
    cdsConciliacion.Edit;
  cdsDetalle.ParamByName('ConciliacionID').AsInteger:=cdsConciliacion.FieldByName('ConciliacionID').AsInteger;
  cdsDetalle.Open;
  cdsDeposito.ParamByName('EstacionID').AsInteger:=DM.Estacion;
  cdsDeposito.ParamByName('Fecha').AsDateTime:=Trunc(dtpFecha.Date);
  cdsDeposito.Open;
  cdsConciliacion.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', dtpFecha.Date);
  cdsConciliacion.FieldByName('Periodo').AsString:=FormatDateTime('m', dtpFecha.Date);
  cdsConciliacion.FieldByName('Dia').AsString:=FormatDateTime('d', dtpFecha.Date);
  cdsConciliacion.FieldByName('Total').AsCurrency:=cdsDeposito.FieldByName('Total').AsCurrency;
  if dbgConciliacionDBTableView1.DataController.Summary.FooterSummaryValues[0] <> null then
    cdsConciliacion.FieldByName('Entregado').AsCurrency:=dbgConciliacionDBTableView1.DataController.Summary.FooterSummaryValues[0]
  else
    cdsConciliacion.FieldByName('Entregado').AsCurrency:=0;
  cdsConciliacion.FieldByName('Diferencia').AsCurrency:=cdsConciliacion.FieldByName('Total').AsCurrency - cdsConciliacion.FieldByName('Entregado').AsCurrency;
  cdsDeposito.Close;
end;

procedure TfrmConcilliacion.FormCreate(Sender: TObject);
begin
  inherited;
  Fecha:=Trunc(Now);
  dtpFecha.Date:=Trunc(Now);
  cdsCuenta.ParamByName('EstacionID').AsInteger:=DM.Estacion;
  cdsCuenta.Open;
end;

procedure TfrmConcilliacion.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(dmAppActions.actNuevo, ActionNuevo);
  RegisterAction(dmAppActions.actGuardar, ActionGuardar);
  RegisterAction(dmAppActions.actCancelar, ActionCancelar);
end;

procedure TfrmConcilliacion.UpdateActionsState;
begin
  inherited;
  dmAppActions.actNuevo.Enabled:=(not cdsConciliacion.Active);
  dmAppActions.actGuardar.Enabled:=not dmAppActions.actNuevo.Enabled;
  dmAppActions.actCancelar.Enabled:=not dmAppActions.actNuevo.Enabled;
end;

initialization
  ModuleInfoManager.RegisterModule('Conciliación', TfrmConcilliacion);

end.
