unit ufrmSalidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, cxTextEdit, cxDBEdit, cxContainer, cxGroupBox,
  dxSkinsCore, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator,
  uDAFields, uROComponent, uDAMemDataTable;

type
  TfrmSalidas = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    txtSalida: TcxDBTextEdit;
    LblNoEstacion: TcxLabel;
    txtNombre: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    LookUpCmboxNombre: TcxDBLookupComboBox;
    LblCategoria: TcxLabel;
    cdsConceptoSalida: TDACDSDataTable;
    dsConceptoSalida: TDADataSource;
    dbgCatalogoDBTableView1SalidaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1ConceptoSalidaID: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSalidas: TfrmSalidas;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmSalidas.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  cdsCatalogo.FieldByName('SalidaID').AsInteger:=DM.Servidor.Folio('SalidaID','');
  TxtNombre.SetFocus;
end;

procedure TfrmSalidas.FormCreate(Sender: TObject);
begin
  inherited;
  cdsConceptoSalida.Open;
end;
initialization
  ModuleInfoManager.RegisterModule('Salidas', TfrmSalidas);
end.
