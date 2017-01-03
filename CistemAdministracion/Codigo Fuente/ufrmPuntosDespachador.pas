unit ufrmPuntosDespachador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxGraphics, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, StdCtrls, cxButtons,
  cxDropDownEdit, cxImageComboBox, cxMaskEdit, cxSpinEdit, cxDBEdit, ExtCtrls,
  cxContainer, cxGroupBox, cxCheckBox, cxRadioGroup, cxCheckListBox, cxPC,
  uDAScriptingProvider, uDADataTable, uDAMemDataTable, uDAInterfaces,
  uDACDSDataTable, dxmdaset, cxTimeEdit, cxCalendar, cxLookAndFeels,
  dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp;

type
  TfrmPuntosDespachador = class(TfrmCustomModule)
    pgcCatalogo: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    edtEjercicio: TcxSpinEdit;
    cbPeriodoIni: TcxImageComboBox;
    cbPeriodoFin: TcxImageComboBox;
    BtnConsultarSaldo: TcxButton;
    BtnImprimir: TcxButton;
    edtNombreCliente: TcxTextEdit;
    edtDespachadorID: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsSaldo: TDADataSource;
    cdsSaldo: TDAMemDataTable;
    cxGridDBTableView1RecID: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1REFERENCIA: TcxGridDBColumn;
    cxGridDBTableView1CARGO: TcxGridDBColumn;
    cxGridDBTableView1ABONO: TcxGridDBColumn;
    cxGridDBTableView1SALDO: TcxGridDBColumn;
    cdsDespachador: TDAMemDataTable;
    dsDespachador: TDADataSource;
    Label3: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxGroupBox4: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    tblArticulos: TdxMemData;
    DataSource1: TDataSource;
    cdsObtenArticulos: TDACDSDataTable;
    dsCliente: TDADataSource;
    tblArticulosArticuloID: TIntegerField;
    tblArticulosNombre: TStringField;
    tblArticulosCosto: TFloatField;
    tblArticulosPuntos: TIntegerField;
    cxGrid1DBTableView1Canjear: TcxGridDBColumn;
    cxGrid1DBTableView1ArticuloID: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Costo: TcxGridDBColumn;
    cxGrid1DBTableView1Puntos: TcxGridDBColumn;
    tblArticulosCanjear: TBooleanField;
    cxButton1: TcxButton;
    Label9: TLabel;
    cxTextEdit4: TcxTextEdit;
    Label10: TLabel;
    cxTextEdit5: TcxTextEdit;
    Label5: TLabel;
    cxTextEdit3: TcxTextEdit;
    btnPreeliminar: TcxButton;
    cdsInsertarAbono: TDACDSDataTable;
    cdsInsertaCompra: TDACDSDataTable;
    procedure edtDespachadorIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnConsultarSaldoClick(Sender: TObject);
    procedure edtDespachadorIDExit(Sender: TObject);
    procedure edtDespachadorIDEnter(Sender: TObject);
    procedure cxTextEdit4Exit(Sender: TObject);
    procedure cxTextEdit4Enter(Sender: TObject);
    procedure btnPreeliminarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ActionBuscar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  protected
    procedure RegisterActions; override;
  end;

var
  frmPuntosDespachador: TfrmPuntosDespachador;

implementation
uses Modules, uDM, dmActions, ufrmBuscarEmpleado,
     UtileriasComun, ufrmBuscar;

{$R *.dfm}

{ TfrmCustomModule1 }

procedure TfrmPuntosDespachador.ActionBuscar(Action: TBasicAction);
begin
  frmBuscarEmpleado:=TfrmBuscarEmpleado.Create(nil);
  frmBuscarEmpleado.ShowModal;
  if (frmBuscarEmpleado.OK) or (frmBuscarEmpleado.OKClienteNuevo) then
  begin
    edtDespachadorID.EditValue :=inttostr(frmBuscarEmpleado.Clave);
    cxTextEdit4.EditValue :=frmBuscarEmpleado.Clave;
    edtNombreCliente.EditingText:=frmBuscarEmpleado.Nombre;
  end;
end;

procedure TfrmPuntosDespachador.ActionImprimir(Action: TBasicAction);
begin
end;

procedure TfrmPuntosDespachador.BtnConsultarSaldoClick(Sender: TObject);
begin
  inherited;
  if edtDespachadorID.EditValue <> '' then
  begin
  cdsSaldo.Close;
  cdsSaldo.ParamByName('EJERCICIO').AsInteger:= edtEjercicio.EditValue;
  cdsSaldo.ParamByName('DESPACHADORID').AsInteger:= strtoint(edtDespachadorID.EditingText);
  cdsSaldo.ParamByName('INI').AsInteger:= cbPeriodoIni.EditValue;
  cdsSaldo.ParamByName('FIN').AsInteger:= cbPeriodoFin.EditValue;
  cdsSaldo.Open;

  cxTextEdit1.EditValue:= cdsSaldo.FieldByName('SALDO').AsInteger;
  cdsSaldo.Last;
  cxTextEdit2.EditValue:= cdsSaldo.FieldByName('SALDO').AsInteger;
  end;
end;

procedure TfrmPuntosDespachador.btnPreeliminarClick(Sender: TObject);
begin
  inherited;
  if cxTextEdit4.Text <> '' then
  begin
  cdsObtenArticulos.Close;
  cdsObtenArticulos.ParamByName('Puntos').AsInteger:= strtoint(cxTextEdit3.Text);
  cdsObtenArticulos.Open;

  tblArticulos.Close;
  tblArticulos.Open;
  while not cdsObtenArticulos.EOF do
  begin
    tblArticulos.Append;
    tblArticulos.FieldByName('Canjear').AsBoolean:= False;
    tblArticulos.FieldByName('ArticuloID').AsInteger:= cdsObtenArticulos.FieldByName('ArticuloID').AsInteger;
    tblArticulos.FieldByName('Nombre').AsString:= cdsObtenArticulos.FieldByName('Nombre').AsString;
    tblArticulos.FieldByName('Costo').AsFloat:= cdsObtenArticulos.FieldByName('Costo').AsFloat;
    tblArticulos.FieldByName('Puntos').AsInteger:= cdsObtenArticulos.FieldByName('Puntos').AsInteger;
    cdsObtenArticulos.Next;
  end;
  end;
end;

procedure TfrmPuntosDespachador.cxButton1Click(Sender: TObject);
var
  TotalPuntos : Integer;
  Year, Month, Day: Word;
begin
  TotalPuntos:= 0;
  DecodeDate(Now(), Year, Month, Day);
  if tblArticulos.Active then
  begin

    tblArticulos.First;

    while not tblArticulos.Eof do
    begin
      if tblArticulos.FieldByName('Canjear').AsBoolean then
      begin
         TotalPuntos:= TotalPuntos + tblArticulos.FieldByName('Puntos').AsInteger;
      end;
      tblArticulos.Next;
    end;

    if TotalPuntos > cxTextEdit3.EditValue then
    begin
       showmessage('No Junta los suficientes Puntos para tantos Articulos');
       Exit;
    end else
    begin
       tblArticulos.First;

       while not tblArticulos.Eof do
       begin
         if tblArticulos.FieldByName('Canjear').AsBoolean then
         begin
            cdsInsertarAbono.Close;
            cdsInsertarAbono.ParamByName('MOVIMIENTODESPACHADORID').AsInteger:=DM.Servidor.Folio('MovimientoDespachadorID','');
            cdsInsertarAbono.ParamByName('FECHA').AsDateTime:= Now();
            cdsInsertarAbono.ParamByName('EJERCICIO').AsInteger:= Year;
            cdsInsertarAbono.ParamByName('PERIODO').AsInteger:=  Month;
            cdsInsertarAbono.ParamByName('USUARIOID').AsInteger:= DM.EmpleadoID;;
            cdsInsertarAbono.ParamByName('DESPACHADORID').AsInteger:= strtoint(cxTextEdit4.Text);
            cdsInsertarAbono.ParamByName('TURNOID').AsInteger:= 0;
            cdsInsertarAbono.ParamByName('LIQUIDACIONID').AsInteger:= 0;
            cdsInsertarAbono.ParamByName('ESTACIONID').AsInteger:= DM.Estacion;
            cdsInsertarAbono.ParamByName('REFERENCIA').AsString:= tblArticulos.FieldByName('NOMBRE').AsString;
            cdsInsertarAbono.ParamByName('PRODUCTOID').AsInteger:= 0;
            cdsInsertarAbono.ParamByName('CARGO').AsInteger:= 0;
            cdsInsertarAbono.ParamByName('ABONO').AsInteger:= tblArticulos.FieldByName('PUNTOS').AsInteger;
            cdsInsertarAbono.ParamByName('DIA').AsInteger:= Day;
            cdsInsertarAbono.Open;

            cdsInsertaCompra.Close;
            cdsInsertaCompra.ParamByName('COMPRAPUNTOSID').AsInteger:=DM.Servidor.Folio('CompraPuntosID','');
            cdsInsertaCompra.ParamByName('CONCEPTO').AsString:= tblArticulos.FieldByName('NOMBRE').AsString;
            cdsInsertaCompra.ParamByName('DESPACHADORID').AsInteger:= strtoint(cxTextEdit4.Text);
            cdsInsertaCompra.ParamByName('USUARIOID').AsInteger:=  DM.EmpleadoID;
            cdsInsertaCompra.ParamByName('VALORARTICULO').AsFloat:= tblArticulos.FieldByName('COSTO').AsFloat;
            cdsInsertaCompra.ParamByName('PUNTOS').AsInteger:= tblArticulos.FieldByName('PUNTOS').AsInteger;
            cdsInsertaCompra.Open;
         end;
         tblArticulos.Next;
       end;
    end;
  end;
  cdsObtenArticulos.Close;
  tblArticulos.Close;
  cdsSaldo.Close;

  cxTextEdit3.EditValue:=0;
  cxTextEdit5.EditingText:='';
  cxTextEdit4.EditingText:='';
end;

procedure TfrmPuntosDespachador.cxTextEdit4Enter(Sender: TObject);
begin
  inherited;
  dmAppActions.actBuscar.Enabled:= edtDespachadorID.Focused;
end;

procedure TfrmPuntosDespachador.cxTextEdit4Exit(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  inherited;
  if cxTextEdit4.Text <> '' then
  begin

  cdsDespachador.Close;
  cdsDespachador.ParamByName('DespachadorID').asInteger:= strtoint(cxTextEdit4.Text);
  cdsDespachador.Open;

  if not cdsDespachador.EOF then
     cxTextEdit5.EditingText:= cdsDespachador.FieldByName('Nombre').AsString;
  end;

  DecodeDate(Now(), Year, Month, Day);

  cdsSaldo.Close;
  cdsSaldo.ParamByName('EJERCICIO').AsInteger:= Year;
  cdsSaldo.ParamByName('DESPACHADORID').AsInteger:= cxTextEdit4.EditValue;
  cdsSaldo.ParamByName('INI').AsInteger:= Month;
  cdsSaldo.ParamByName('FIN').AsInteger:= Month;
  cdsSaldo.Open;

  cdsSaldo.Last;
  cxTextEdit3.EditValue:= cdsSaldo.FieldByName('SALDO').AsInteger;
end;

procedure TfrmPuntosDespachador.cxTextEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_F2 then
     ActionBuscar(nil);
end;

procedure TfrmPuntosDespachador.edtDespachadorIDEnter(Sender: TObject);
begin
  inherited;
  dmAppActions.actBuscar.Enabled:= edtDespachadorID.Focused;
end;

procedure TfrmPuntosDespachador.edtDespachadorIDExit(Sender: TObject);
begin
  inherited;
  if edtDespachadorID.Text <> '' then
  begin

  cdsDespachador.Close;
  cdsDespachador.ParamByName('DespachadorID').asInteger:= strtoint(edtDespachadorID.EditingText);
  cdsDespachador.Open;

  if not cdsDespachador.EOF then
     edtNombreCliente.EditValue:= cdsDespachador.FieldByName('Nombre').AsString;
  end;
end;

procedure TfrmPuntosDespachador.edtDespachadorIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_F2 then
     ActionBuscar(nil);
end;

procedure TfrmPuntosDespachador.FormShow(Sender: TObject);
var
  Year, Month, Day: Word;
begin
  DecodeDate(Now(), Year, Month, Day);
  edtEjercicio.EditValue:= Year;
end;

procedure TfrmPuntosDespachador.RegisterActions;
begin
  inherited;
  RegisterAction(AppActions.actBuscar, ActionBuscar);
  RegisterAction(AppActions.actImprimir, ActionImprimir);
end;

procedure TfrmPuntosDespachador.UpdateActionsState;
begin
  inherited;
  dmAppActions.actBuscar.Enabled:= edtDespachadorID.Focused;
  dmAppActions.actImprimir.Enabled:=cdsSaldo.Opening;
end;

initialization
  ModuleInfoManager.RegisterModule('Puntos Despachador', TfrmPuntosDespachador);

end.
