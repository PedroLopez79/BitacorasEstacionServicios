unit ufrmPuntosCatalogoDesingCriterio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer, cxCheckListBox,
  cxLabel, cxTextEdit, cxDBEdit, cxGroupBox, dxmdaset, uDAInterfaces,
  uDADataTable, uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmPuntosCatalogoDesingCriterio = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edtNombre: TcxDBTextEdit;
    clbParametros: TcxCheckListBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    dbgCatalogoDBTableView1RecID: TcxGridDBColumn;
    dbgCatalogoDBTableView1PuntosCriterioID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    comboZona: TcxDBLookupComboBox;
    cdsAgrupacionEstacion: TDAMemDataTable;
    dsAgrupacionEstacion: TDADataSource;
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure cdsCatalogoAfterScroll(DataTable: TDADataTable);
    procedure cdsCatalogoBeforePost(DataTable: TDADataTable);
    procedure clbParametrosClickCheck(Sender: TObject; AIndex: Integer;
      APrevState, ANewState: TcxCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  protected
    procedure RegisterActions; override;
  private
    { Private declarations }
    Nuevo: Boolean;
    procedure ActionGuardar(Action: TBasicAction); override;
    procedure LetrasAParametros(Cad: String);
    function ParametrosALetras: String;
  public
    procedure UpdateActionsState; override;
  end;

var
  frmPuntosCatalogoDesingCriterio: TfrmPuntosCatalogoDesingCriterio;

implementation

uses uDM, Modules, dmActions;

{$R *.dfm}

{ TfrmPuntosCatalogoCriterio }

procedure TfrmPuntosCatalogoDesingCriterio.ActionGuardar(Action: TBasicAction);
begin
  if Nuevo then
  begin
    Nuevo := False;
    cdsCatalogo.FieldByName('PuntosCriterioID').AsInteger := DM.Servidor.Folio('PuntosCriterioID', '');
  end;
  inherited;
end;

procedure TfrmPuntosCatalogoDesingCriterio.cdsCatalogoAfterScroll(
  DataTable: TDADataTable);
begin
  inherited;
  if cdsCatalogo.State = dsBrowse then
    LetrasAParametros(cdsCatalogo.FieldByName('Parametros').AsString);
end;

procedure TfrmPuntosCatalogoDesingCriterio.cdsCatalogoBeforePost(
  DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('Parametros').AsString := ParametrosALetras;
end;

procedure TfrmPuntosCatalogoDesingCriterio.cdsCatalogoNewRecord(
  DataTable: TDADataTable);
var
  X: Integer;
begin
  inherited;
  Nuevo := True;
  edtNombre.SetFocus;
  DataTable.FieldByName('Parametros').AsString := '';
  DataTable.FieldByName('AgrupacionEstacionID').AsInteger := cdsAgrupacionEstacion.FieldByName('AgrupacionEstacionID').AsInteger;

  for X := 0 to clbParametros.Items.Count - 1 do
    clbParametros.Items.Items[X].Checked := False;
end;

procedure TfrmPuntosCatalogoDesingCriterio.clbParametrosClickCheck(
  Sender: TObject; AIndex: Integer; APrevState, ANewState: TcxCheckBoxState);
begin
  inherited;
  if cdsCatalogo.State = dsBrowse then
    cdsCatalogo.Edit;
end;

procedure TfrmPuntosCatalogoDesingCriterio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsAgrupacionEstacion.Close;
end;

procedure TfrmPuntosCatalogoDesingCriterio.FormCreate(Sender: TObject);
begin
  inherited;
  cdsAgrupacionEstacion.Open;
end;

procedure TfrmPuntosCatalogoDesingCriterio.LetrasAParametros(Cad: String);
var
  I: Integer;
begin
  for I := 0 to clbParametros.Items.Count - 1 do
    clbParametros.Items[I].Checked := Pos(Chr(clbParametros.Items[I].Tag), Cad) > 0;
end;

function TfrmPuntosCatalogoDesingCriterio.ParametrosALetras: String;
var
  I: Integer;
begin
  Result := '';
  for I := 0 to clbParametros.Items.Count - 1 do    // Iterate
  begin
    if clbParametros.Items[I].Checked then
      Result := Result + Chr(clbParametros.Items[I].Tag);
  end;    // for
  if Result = '' then
    Result := '1';   //esto es para los reportes donde no tienen parametros
end;

procedure TfrmPuntosCatalogoDesingCriterio.RegisterActions;
begin
  inherited;
  RegisterAction(AppActions.actGuardar, ActionGuardar);
end;

procedure TfrmPuntosCatalogoDesingCriterio.UpdateActionsState;
begin
  inherited;
  dmAppActions.actGuardar.Enabled := (cdsCatalogo.State in dsEditModes);
end;

initialization
  ModuleInfoManager.RegisterModule('Catálogo Diseño Criterio', TfrmPuntosCatalogoDesingCriterio);

end.
