unit ufrmConsultaSaldos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxTextEdit, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, uDARemoteDataAdapter, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, dxmdaset, cxGridCardView,
  cxGridDBCardView, cxInplaceContainer, cxVGrid, cxDBVGrid, cxNavigator,
  cxDBNavigator, ExtCtrls, cxBlobEdit, cxDropDownEdit, cxImageComboBox,
  cxMaskEdit, cxSpinEdit, cxDBEdit, StdCtrls, cxGroupBox, cxCalendar,
  cxCheckBox, cxListBox, Menus, cxLookAndFeelPainters, cxButtons, cxTimeEdit,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCheckListBox, cxDBCheckListBox, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, uDAInterfaces, uDAMemDataTable, CustomModule,
  cxCurrencyEdit, cxLookAndFeels, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmConsultaSaldos = class(TfrmCustomModule)
    cxGroupBox1: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    edtEjercicio: TcxSpinEdit;
    cbPeriodoIni: TcxImageComboBox;
    cbPeriodoFin: TcxImageComboBox;
    BtnConsultarSaldo: TcxButton;
    BtnImprimir: TcxButton;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CargoAbonoID: TcxGridDBColumn;
    cxGrid1DBTableView1FechaMovimiento: TcxGridDBColumn;
    cxGrid1DBTableView1Referencia: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Abono: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdsSaldo: TDACDSDataTable;
    dsSaldo: TDADataSource;
    cdsSaldoInicial: TDACDSDataTable;
    dsSaldoInicial: TDADataSource;
    Label1: TLabel;
    Label2: TLabel;
    cxEmpleadoID: TcxTextEdit;
    edtNombreCliente: TcxTextEdit;
    edtClienteID: TcxTextEdit;
    cdsDatosCliente: TDACDSDataTable;
    dsDatosCliente: TDADataSource;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1Column1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure edtClienteIDExit(Sender: TObject);
    procedure BtnConsultarSaldoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaSaldos: TfrmConsultaSaldos;
  SaldoInicial: Float;

implementation

uses Modules, uDM, LibraryEmpresas_Intf;

{$R *.dfm}

procedure TfrmConsultaSaldos.BtnConsultarSaldoClick(Sender: TObject);
begin
  inherited;
  if edtClienteID.Text='' then
  begin
    showMessage('Codigo de Cliente No Valido');
    Exit;
  end;
  cdsSaldo.Close;
  cdsSaldo.ParamByName('ClienteIni').AsInteger:=cdsDatosCliente.FieldByName('ClienteID').AsInteger;
  cdsSaldo.ParamByName('Ejercicio').AsInteger:=edtEjercicio.EditValue;
  cdsSaldo.ParamByName('Periodo').AsInteger:= cbPeriodoIni.EditValue;
  cdsSaldo.ParamByName('PeriodoFin').AsInteger:= cbPeriodoFin.EditValue;
  cdsSaldo.ParamByName('EstacionID').AsInteger:= DM.Estacion;

  cdsSaldo.Open;
  cdsSaldoInicial.Close;
  cdsSaldoInicial.ParamByName('ClienteIni').AsInteger:=cdsDatosCliente.FieldByName('ClienteID').AsInteger;
  cdsSaldoInicial.ParamByName('Ejercicio').AsInteger:=edtEjercicio.EditValue;
  cdsSaldoInicial.ParamByName('Periodo').AsInteger:=cbPeriodoIni.EditValue;
  cdsSaldoInicial.ParamByName('EstacionID').AsInteger:= DM.Estacion;
  cdsSaldoInicial.Open;
  SaldoInicial:=cdsSaldoInicial.FieldByName('SaldoInicial').AsFloat;
end;

function GetSummaryValue(Data: TcxGridViewData; RowIndex, ColIndex: Integer): Double;
var
  I: Integer;
begin
  Result := SaldoInicial;
  for I := RowIndex downto 0 do
    if Data.Rows[I].IsData then
    begin
    Result := (Result + (Data.Rows[I].Values[ColIndex])) - Data.Rows[I].Values[ColIndex + 1];
    end
    else
      Break;
end;

procedure TfrmConsultaSaldos.BtnImprimirClick(Sender: TObject);
var
  MiReporte: LibraryEmpresas_Intf.TReporte;
begin
   MiReporte:=DM.Servidor.BuscaReporte('SALDO CLIENTES CARTERA', 1);
  if MiReporte <> nil then
  begin
    DM.Parametros.ClienteIni:=edtClienteID.EditValue;
    DM.Parametros.Ejercicio:=edtEjercicio.EditValue;
    DM.Parametros.Periodo:=cbPeriodoIni.EditValue;
    DM.Parametros.PeriodoFin:=cbPeriodoFin.EditValue;
    DM.Parametros.Estacion:=DM.Estacion;
    DM.Imprimir(MiReporte.SQL1, MiReporte.SQL2, MiReporte.Template, '', '');
    MiReporte.Free;
  end;
end;

procedure TfrmConsultaSaldos.cxGrid1DBTableView1Column1GetDisplayText(
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

procedure TfrmConsultaSaldos.edtClienteIDExit(Sender: TObject);
begin
  inherited;
    cdsDatosCliente.Close;
    cdsDatosCliente.ParamByName('ClienteID').AsInteger:=StrToInt(edtClienteID.Text);
    cdsDatosCliente.Open;
    edtNombreCliente.Text:=cdsDatosCliente.FieldByName('Nombre').AsString;
end;

procedure TfrmConsultaSaldos.FormCreate(Sender: TObject);
begin
  inherited;
  edtEjercicio.EditValue:=FormatDateTime('yyyy', Now);
  cbPeriodoIni.EditValue:=FormatDateTime('m', Now);
  cbPeriodoFin.EditValue:=FormatDateTime('m', Now);
end;

procedure TfrmConsultaSaldos.FormShow(Sender: TObject);
begin
  inherited;
  edtClienteID.SetFocus;
end;

initialization
  ModuleInfoManager.RegisterModule('Consulta de Saldos', TfrmConsultaSaldos);

end.
