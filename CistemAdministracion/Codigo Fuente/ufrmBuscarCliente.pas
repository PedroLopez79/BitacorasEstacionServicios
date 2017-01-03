unit ufrmBuscarCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmBuscar, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, uDADataTable, uDAScriptingProvider, uDACDSDataTable,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxTextEdit, cxPC,
  cxCheckBox, cxDBEdit, cxLabel, cxContainer, cxGroupBox, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, cxCurrencyEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces, dxStatusBar,
  dxRibbonStatusBar, dxRibbon, ExtCtrls, dxSkinsdxRibbonPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSpringTime;

type
  TfrmBuscarCliente = class(TfrmBuscar)
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    cdsRFC: TDACDSDataTable;
    GrpBoxDatos: TcxGroupBox;
    LblClientes: TcxLabel;
    LblCliente: TcxLabel;
    LblCalle: TcxLabel;
    LblCiudad: TcxLabel;
    LblColonia: TcxLabel;
    LblTelefono: TcxLabel;
    LblCP: TcxLabel;
    LblRFC: TcxLabel;
    TxtCliente: TcxDBTextEdit;
    TxtNombre: TcxDBTextEdit;
    TxtCalle: TcxDBTextEdit;
    TxtColonia: TcxDBTextEdit;
    TxtCiudad: TcxDBTextEdit;
    TxtTelefono: TcxDBTextEdit;
    TxtRFC: TcxDBTextEdit;
    TxtCP: TcxDBTextEdit;
    CheckActivo: TcxDBCheckBox;
    btnCancelar: TcxButton;
    btnNuevo: TcxButton;
    btnGuardar: TcxButton;
    dbgBuscarDBTableView2ClienteID: TcxGridDBColumn;
    dbgBuscarDBTableView2Nombre: TcxGridDBColumn;
    dbgBuscarDBTableView2Calle: TcxGridDBColumn;
    dbgBuscarDBTableView2Colonia: TcxGridDBColumn;
    dbgBuscarDBTableView2Ciudad: TcxGridDBColumn;
    dbgBuscarDBTableView2Telefono: TcxGridDBColumn;
    dbgBuscarDBTableView2CodigoPostal: TcxGridDBColumn;
    dbgBuscarDBTableView2RFC: TcxGridDBColumn;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure btnNuevoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cdsClienteAfterPost(DataTable: TDADataTable);
    procedure btnGuardarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TxtRFCExit(Sender: TObject);
    procedure TxtCPExit(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure cxBusquedaEditing(Sender: TObject; var CanEdit: Boolean);
    procedure cxBusquedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    function ExisteClienteRFC:Boolean;
  public
    { Public declarations }
    Procedure Buscar; override;
  end;

var
  frmBuscarCliente: TfrmBuscarCliente;

implementation

uses uDM, dmImagenes, UtileriasComun;

{$R *.dfm}

procedure TfrmBuscarCliente.btnGuardarClick(Sender: TObject);
begin
  inherited;
  OkClienteNuevo:=True;
  Nuevo:=False;
  Clave:=cdsCliente.FieldByName('ClienteID').AsInteger;
  cdsCliente.Post;
  close;
end;

procedure TfrmBuscarCliente.btnNuevoClick(Sender: TObject);
begin
  inherited;
  GrpBoxDatos.Enabled:=True;
  cdsCliente.Where.AddCondition('ClienteID', cEqual, -100);
  cdsCliente.Open;
  cdsCliente.Append;
  cdsCliente.FieldByName('ClienteID').AsInteger:=DM.Servidor.Folio('ClienteID', '');
  cdsCliente.FieldByName('LimiteCredito').AsFloat:=0;
  cdsCliente.FieldByName('Credito').AsBoolean:=False;
  cdsCliente.FieldByName('DiasCredito').AsInteger:=0;
  cdsCliente.FieldByName('AutorizaCheque').AsBoolean:=False;
  cdsCliente.FieldByName('TicketBoucher').AsBoolean:=True;
  cdsCliente.FieldByName('AutorizaValeCredito').AsBoolean:=false;
  cdsCliente.FieldByName('Colonia').AsString:=' ';
  cdsCliente.FieldByName('Status').AsBoolean := True;

  Nuevo:=True;
  if TxtNombre.CanFocus then
    TxtNombre.SetFocus;
  btnNuevo.Enabled:=False;
end;

procedure TfrmBuscarCliente.Buscar;
begin
  if Trim(edtBusqueda.Text) <> '' then
  begin
    cdsBuscar.Close;
    cdsBuscar.ParamByName('Parametro').AsString:=edtBusqueda.Text;
    cdsBuscar.Open;
  end;
end;

procedure TfrmBuscarCliente.btnCancelarClick(Sender: TObject);
begin
  inherited;
  cdsCliente.Cancel;
  pgcBuscar.ActivePageIndex:=0;
end;

procedure TfrmBuscarCliente.cdsClienteAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdscliente.ApplyUpdates;
end;

procedure TfrmBuscarCliente.cxBusquedaEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  Busqueda:=False;
end;

procedure TfrmBuscarCliente.cxBusquedaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_RETURN) then
  begin
     if dbgBuscar.CanFocus then
       dbgBuscar.SetFocus;
  end;
end;

procedure TfrmBuscarCliente.cxButton2Click(Sender: TObject);
begin
  inherited;
  Close;
end;

function TfrmBuscarCliente.ExisteClienteRFC: Boolean;
begin
  cdsRFC.Close;
  cdsRFC.ParamByName('ClienteID').AsInteger:=cdsCliente.FieldByName('ClienteID').AsInteger;
  cdsRFC.ParamByName('Rfc').AsString:=cdsCliente.FieldByName('Rfc').AsString;
  cdsRFC.Open;
  Result:=cdsRFC.RecordCount > 0;
end;

procedure TfrmBuscarCliente.FormCreate(Sender: TObject);
begin
  inherited;
  Nuevo:=False;
end;

procedure TfrmBuscarCliente.FormPaint(Sender: TObject);
begin
  inherited;
  if edtBusqueda.CanFocus then
    edtBusqueda.SetFocus;
end;

procedure TfrmBuscarCliente.TxtCPExit(Sender: TObject);
begin
  inherited;
  if not isNumeric(txtCP.Text) then
  begin
    showMessage('No Es Un Numero');
    txtCP.Clear;
    if txtCP.CanFocus then
      txtCP.SetFocus;
  end;
end;

procedure TfrmBuscarCliente.TxtRFCExit(Sender: TObject);
begin
  inherited;
  if ExisteClienteRFC then
    begin
      IF DM.Seguridad.SeguridadPorNombre('Duplicar Clientes') <> nil then
      Begin
          //ShowMessage('Permiso Aceptado Para Duplicar');
      End
      else
      Begin
        ShowMessage('Cliente ya Existe'+#13+#10+'No Tiene Permisos para Duplicar Clientes');
        //cdsCatalogo.FieldByName('RFC').AsString:='';
        if txtRFC.CanFocus then
          txtRFC.SetFocus;
      End;
     { if not (MessageDlg('Existe RFC'+#13+#10+'Desea Registrar Cliente con identico RFC ',
      mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then
      begin
        cdsCliente.FieldByName('Rfc').AsString:='';
        txtRfc.SetFocus;
      end; }
    end;
  if not DM.ValidaRFC(TxtRFC.Text) then
  begin
    ShowMessage('El RFC no debe de llevar Espacios ni Guiones(-)');
    if txtRFC.CanFocus then
      txtRFC.SetFocus;
  end;
end;

end.
