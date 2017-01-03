unit ufrmCierreMensual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, uDAInterfaces, uDADataTable, uDAScriptingProvider,
  uDAMemDataTable, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCurrencyEdit,
  cxDBEdit, ppBands, ppCache, ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppModule, raCodMod, ppCtrls, jpeg, ppVar, ppPrnabl, ppParameter,
  cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue;

type
  TfrmCierreMensual = class(TfrmCustomModule)
    cxGroupBox1: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsCierre: TDAMemDataTable;
    dsCierre: TDADataSource;
    cxGrid1DBTableView1GrupoCierre: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Cantidad: TcxGridDBColumn;
    cdsEstaciones: TDAMemDataTable;
    dsEstaciones: TDADataSource;
    cbEstacion: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    dtpFechaFin: TcxDateEdit;
    dtpFechaIni: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cdsMermaRango: TDAMemDataTable;
    dbpCierre: TppDBPipeline;
    repCierre: TppReport;
    ppParameterList1: TppParameterList;
    edtMagna: TcxCurrencyEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edtPremium: TcxCurrencyEdit;
    cxLabel6: TcxLabel;
    edtDiesel: TcxCurrencyEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel28: TppLabel;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape1: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLine8: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLine9: TppLine;
    raCodeModule1: TraCodeModule;
    procedure FormCreate(Sender: TObject);
    procedure cdsCierreCalcFields(DataTable: TDADataTable);
  private
    { Private declarations }
    procedure ActionProcesar(Action: TBasicAction);
    procedure ActionImprimir(Action: TBasicAction);
  protected
    { Protected declarations }
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmCierreMensual: TfrmCierreMensual;

implementation

uses Modules, uDM, dmActions;

{$R *.dfm}

{ TfrmCierreMensual }

procedure TfrmCierreMensual.ActionImprimir(Action: TBasicAction);
begin
  repCierre.Print;
end;

procedure TfrmCierreMensual.ActionProcesar(Action: TBasicAction);
var
  Aux: Integer;
  MiTemp: Double;
  MAINVE: Currency;
begin
  cdsCierre.Close;
  cdsCierre.ParamByName('EstacionID').AsInteger:=cbEstacion.EditValue;
  cdsCierre.ParamByName('FechaINI').AsDateTime:=Trunc(dtpFechaIni.Date);
  cdsCierre.ParamByName('FechaFIN').AsDateTime:=Trunc(dtpFechaFin.Date);
  cdsCierre.Open;
  DM.ServidorEstacion(cbEstacion.EditValue);
  cdsMermaRango.Close;
  cdsMermaRango.ParamByName('TurnoINI').AsInteger:=cdsCierre.FieldByName('TurnoINI').AsInteger;
  cdsMermaRango.ParamByName('TurnoFIN').AsInteger:=cdsCierre.FieldByName('TurnoFIN').AsInteger;
  cdsMermaRango.Open;
  Aux:=1;
  MiTemp:=0;
  MAINVE:=0;
  while not cdsMermaRango.EOF do
  begin
    MAINVE:=MAINVE + cdsMermaRango.FieldByName('Diferencia').AsInteger;
    cdsMermaRango.Next;
  end;
  cdsMermaRango.First;
  while not cdsMermaRango.EOF do
  begin
    cdsCierre.Locate('TipoValorID', cdsMermaRango.FieldByName('ProductoID').AsInteger, []);
    cdsCierre.Edit;
    cdsCierre.FieldByName('Cantidad').AsFloat:=cdsMermaRango.FieldByName('Volumen').AsFloat;
    if Aux <> cdsMermaRango.RecordCount then
    begin
      MiTemp:=MiTemp + cdsMermaRango.FieldByName('Diferencia').AsFloat;
      cdsCierre.FieldByName('Importe').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat - cdsMermaRango.FieldByName('Diferencia').AsFloat;
    end
    else
      cdsCierre.FieldByName('Importe').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat - (MAINVE - MiTemp);
    cdsCierre.Post;
    cdsMermaRango.Next;
    Inc(Aux);
  end;
  cdsCierre.Locate('TipoValorID', 6, []);
  cdsCierre.Edit;
  cdsCierre.FieldByName('Cantidad').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat - MAINVE;
  cdsCierre.FieldByName('Importe').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat - MAINVE;
  cdsCierre.Post;
end;

procedure TfrmCierreMensual.cdsCierreCalcFields(DataTable: TDADataTable);
var
  IVA, IEPS: Double;
begin
  inherited;
  if cdsCierre.FieldByName('Operador').AsInteger = -1 then
  begin
    cdsCierre.FieldByName('Cargos').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat;
    cdsCierre.FieldByName('Abonos').AsFloat:=0;
  end
  else
  begin
    cdsCierre.FieldByName('Abonos').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat;
    cdsCierre.FieldByName('Cargos').AsFloat:=0;
  end;
  if (cdsCierre.FieldByName('GrupoCierre').AsString = 'COMBUSTIBLES') or
     (cdsCierre.FieldByName('GrupoCierre').AsString = 'PRODUCTOS') then
  begin
    IVA:=cdsCierre.FieldByName('IVA').AsFloat;
    IEPS:=0;
    case cdsCierre.FieldByName('TipoValorID').AsInteger of
      1: IEPS:=edtMagna.EditValue;
      2: IEPS:=edtPremium.EditValue;
      3: IEPS:=edtDiesel.EditValue;
    end;
    cdsCierre.FieldByName('CIEPS').AsFloat:=IEPS * cdsCierre.FieldByName('Cantidad').AsFloat;
    cdsCierre.FieldByName('CSubTotal').AsFloat:=(cdsCierre.FieldByName('Importe').AsFloat - cdsCierre.FieldByName('CIEPS').AsFloat) / (1 + (IVA / 100));
    cdsCierre.FieldByName('CIVA').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat - cdsCierre.FieldByName('CSubTotal').AsFloat - cdsCierre.FieldByName('CIEPS').AsFloat;
    cdsCierre.FieldByName('CImporte').AsFloat:=cdsCierre.FieldByName('Importe').AsFloat;
  end;
end;

procedure TfrmCierreMensual.FormCreate(Sender: TObject);
begin
  inherited;
  cdsEstaciones.Open;
  dtpFechaIni.Date:=Trunc(Now);
  dtpFechaFin.Date:=Trunc(Now);
  cbEstacion.EditValue:=cdsEstaciones.FieldByName('EstacionID').AsInteger;
end;

procedure TfrmCierreMensual.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actProcesar, ActionProcesar);
  RegisterAction(AppActions.actImprimir, ActionImprimir);
end;

procedure TfrmCierreMensual.UpdateActionsState;
begin
  inherited;
  dmAppActions.actProcesar.Enabled:=True;
  dmAppActions.actImprimir.Enabled:=cdsCierre.Active;
end;

initialization
  ModuleInfoManager.RegisterModule('Cierre Mensual', TfrmCierreMensual);

end.
