unit ufrmDatosSAT;

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
  cxData, cxDataStorage, cxEdit, DB, cxDBData, dxmdaset, uDAInterfaces,
  uDADataTable, uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPC, cxContainer, StdCtrls, cxLabel, cxTextEdit, cxDBEdit, cxGroupBox,
  uDACDSDataTable, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox, cxCalendar, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, cxPCdxBarPopupMenu, cxNavigator, uDAFields,
  uROComponent;

type
  TfrmDatosSAT = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    Button3: TButton;
    cxLabel10: TcxLabel;
    cbxAlmacen: TcxDBLookupComboBox;
    cdsEstacion: TDACDSDataTable;
    DADataSource1: TDADataSource;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    Edit1: TEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    dbgCatalogoDBTableView1RecID: TcxGridDBColumn;
    dbgCatalogoDBTableView1DatosSatEmpresasID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn;
    dbgCatalogoDBTableView1RFC: TcxGridDBColumn;
    dbgCatalogoDBTableView1IVA: TcxGridDBColumn;
    dbgCatalogoDBTableView1NoExterior: TcxGridDBColumn;
    dbgCatalogoDBTableView1Localidad: TcxGridDBColumn;
    dbgCatalogoDBTableView1Municipio: TcxGridDBColumn;
    dbgCatalogoDBTableView1Estado: TcxGridDBColumn;
    dbgCatalogoDBTableView1Pais: TcxGridDBColumn;
    dbgCatalogoDBTableView1noAprobacion: TcxGridDBColumn;
    dbgCatalogoDBTableView1Colonia: TcxGridDBColumn;
    dbgCatalogoDBTableView1CodigoPostal: TcxGridDBColumn;
    dbgCatalogoDBTableView1NoCertificado: TcxGridDBColumn;
    dbgCatalogoDBTableView1ArchivoClavePrivada: TcxGridDBColumn;
    dbgCatalogoDBTableView1ArchivoCertificado: TcxGridDBColumn;
    dbgCatalogoDBTableView1ClavePriv: TcxGridDBColumn;
    dbgCatalogoDBTableView1Certificado: TcxGridDBColumn;
    dbgCatalogoDBTableView1PasswordFCTElect: TcxGridDBColumn;
    dbgCatalogoDBTableView1EmpresaID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Sucursal: TcxGridDBColumn;
    dbgCatalogoDBTableView1SucursalDE: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono1: TcxGridDBColumn;
    dbgCatalogoDBTableView1Telefono2: TcxGridDBColumn;
    dbgCatalogoDBTableView1AnoAprobacion: TcxGridDBColumn;
    dbgCatalogoDBTableView1FolioInicial: TcxGridDBColumn;
    dbgCatalogoDBTableView1FolioFinal: TcxGridDBColumn;
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxDBCheckBox1PropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
  protected
    procedure RegisterActions; override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmDatosSAT: TfrmDatosSAT;

implementation

uses Modules, dmActions, uDM, ShellAPI, UtileriasComun;

{$R *.dfm}

procedure TfrmDatosSAT.ActionCancelar(Action: TBasicAction);
begin
  cdsCatalogo.Cancel;
end;

procedure TfrmDatosSAT.ActionGuardar(Action: TBasicAction);
begin
  inherited;
  cdsCatalogo.Post;
end;

procedure TfrmDatosSAT.Button3Click(Sender: TObject);
begin
  Showmessage(DM.Servidor.LlavePrivaCertificado(cdsCatalogo.FieldByName('ArchivoClavePrivada').AsString, cdsCatalogo.FieldByName('ArchivoCertificado').AsString, cdsCatalogo.FieldByName('DatosSatEmpresasID').AsInteger, cdsCatalogo.FieldByName('PasswordFCTElect').AsString, cdsCatalogo.FieldByName('EmpresaID').AsInteger));
end;

procedure TfrmDatosSAT.cxDBCheckBox1PropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  cxDBLookupComboBox1.Enabled:= cxDBCheckBox1.Checked;
end;

procedure TfrmDatosSAT.Edit1Change(Sender: TObject);
begin
  cdsCatalogo.Edit;
  cdsCatalogo.FieldByName('PasswordFCTElect').AsString:= Edit1.Text;
end;

procedure TfrmDatosSAT.FormCreate(Sender: TObject);
begin
  inherited;
  cdsCatalogo.Open;
  cdsEstacion.Close;
  cdsEstacion.Open;
  
  Edit1.Text:= cdsCatalogo.FieldByName('PasswordFCTElect').AsString;
  cdsCatalogo.Cancel;

  if cdsCatalogo.RecordCount = 0 then
    cdsCatalogo.Append;

end;

procedure TfrmDatosSAT.FormShow(Sender: TObject);
begin
  inherited;
  cxDBLookupComboBox1.Enabled:= cdsCatalogo.FieldByName('Sucursal').AsBoolean;
end;

procedure TfrmDatosSAT.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
end;

procedure TfrmDatosSAT.UpdateActionsState;
begin
  inherited UpdateActionsState;
  AppActions.actGuardar.Enabled:=cdsCatalogo.State in dsEditModes;
  AppActions.actCancelar.Enabled:=cdsCatalogo.State in dsEditModes;
end;

initialization
  ModuleInfoManager.RegisterModule('Datos SAT', TfrmDatosSAT);

end.
