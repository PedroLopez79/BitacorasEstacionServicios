unit ufrmAgrupacionEstacion;

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
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxLabel,
  cxTextEdit, cxDBEdit, cxGroupBox, dxmdaset, uDAInterfaces, uDADataTable,
  uDAScriptingProvider, uDAMemDataTable, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, ComCtrls, cxListView, Menus, StdCtrls,
  cxButtons;

type
  TfrmAgrupacionEstacion = class(TfrmCatalogo)
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edtNombre: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    dbgCatalogoDBTableView1RecID: TcxGridDBColumn;
    dbgCatalogoDBTableView1AgrupacionEstacionID: TcxGridDBColumn;
    dbgCatalogoDBTableView1Nombre: TcxGridDBColumn;
    DADataSource1: TDADataSource;
    cdsDetalleAgrupacionEstacion: TDAMemDataTable;
    lbSeleccionEstacion: TcxListView;
    cdsEstacion: TDAMemDataTable;
    lbEstacion: TcxListView;
    btnTransferir: TcxButton;
    btnQuitar: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    procedure cdsCatalogoAfterScroll(DataTable: TDADataTable);
    procedure FormCreate(Sender: TObject);
    procedure cdsCatalogoNewRecord(DataTable: TDADataTable);
    procedure btnTransferirClick(Sender: TObject);
    procedure cdsDetalleAgrupacionEstacionNewRecord(DataTable: TDADataTable);
    procedure btnQuitarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Abriendo, Nuevo: Boolean;
    procedure ActionGuardar(Action: TBasicAction); override;
    procedure Asignacion;
    function EstacionAsignada(EstacionID: Integer): Boolean;
    function EstacionNombre(EstacionID: Integer): String;
  public
    { Public declarations }
  end;

var
  frmAgrupacionEstacion: TfrmAgrupacionEstacion;

implementation

uses uDM, Modules;

{$R *.dfm}

procedure TfrmAgrupacionEstacion.ActionGuardar(Action: TBasicAction);
begin
  if Nuevo then
  begin
    Nuevo := False;
    cdsCatalogo.FieldByName('AgrupacionEstacionID').AsInteger := DM.Servidor.Folio('AgrupacionEstacionID', '');
  end;
  inherited;
end;

procedure TfrmAgrupacionEstacion.Asignacion;
begin
    lbEstacion.Items.Clear;
    lbSeleccionEstacion.Items.Clear;

    cdsDetalleAgrupacionEstacion.Close;
    cdsDetalleAgrupacionEstacion.ParamByName('AgrupacionEstacionID').AsInteger := cdsCatalogo.FieldByName('AgrupacionEstacionID').AsInteger;
    cdsDetalleAgrupacionEstacion.Open;

    while not cdsDetalleAgrupacionEstacion.EOF do
    begin
      with lbEstacion.Items.Add do
      begin
        Tag := cdsDetalleAgrupacionEstacion.FieldByName('EstacionID').AsInteger;
        StateIndex := cdsDetalleAgrupacionEstacion.FieldByName('EstacionID').AsInteger;
        Caption := EstacionNombre(cdsDetalleAgrupacionEstacion.FieldByName('EstacionID').AsInteger);
        ImageIndex := 57;
      end;
      cdsDetalleAgrupacionEstacion.Next;
    end;

    cdsEstacion.First;
    while not cdsEstacion.EOF do
    begin
      if not EstacionAsignada(cdsEstacion.FieldByName('EstacionID').AsInteger) then
        with lbSeleccionEstacion.Items.Add do
        begin
          Tag := cdsEstacion.FieldByName('EstacionID').AsInteger;
          StateIndex := cdsEstacion.FieldByName('EstacionID').AsInteger;
          Caption := cdsEstacion.FieldByName('Nombre').AsString;
          ImageIndex := 57;
        end;
      cdsEstacion.Next;
    end;
end;

procedure TfrmAgrupacionEstacion.btnQuitarClick(Sender: TObject);
begin
  inherited;
  if lbEstacion.ItemFocused <> nil then
  begin
    //UpdateActionsState;
    cdsDetalleAgrupacionEstacion.Locate('EstacionID', lbEstacion.ItemFocused.StateIndex, []);
    cdsDetalleAgrupacionEstacion.Delete;
    cdsDetalleAgrupacionEstacion.ApplyUpdates();
    Asignacion;
  end;
end;

procedure TfrmAgrupacionEstacion.btnTransferirClick(Sender: TObject);
begin
  inherited;
  if lbSeleccionEstacion.ItemFocused <> nil then
  begin
    //UpdateActionsState;
    cdsDetalleAgrupacionEstacion.Insert;
    cdsDetalleAgrupacionEstacion.FieldByName('EstacionID').AsInteger := lbSeleccionEstacion.ItemFocused.StateIndex;
    cdsDetalleAgrupacionEstacion.Post;
    cdsDetalleAgrupacionEstacion.ApplyUpdates();
    Asignacion;
  end;
end;

procedure TfrmAgrupacionEstacion.cdsCatalogoAfterScroll(
  DataTable: TDADataTable);
begin
  inherited;
  if (not Abriendo) and (DataTable.State = dsBrowse) then
  begin
    Asignacion;
  end;
end;

procedure TfrmAgrupacionEstacion.cdsCatalogoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  Nuevo := True;
  edtNombre.SetFocus;
end;

procedure TfrmAgrupacionEstacion.cdsDetalleAgrupacionEstacionNewRecord(
  DataTable: TDADataTable);
begin
  inherited;
  DataTable.FieldByName('AgrupacionEstacionID').AsInteger := cdsCatalogo.FieldByName('AgrupacionEstacionID').AsInteger;
end;

function TfrmAgrupacionEstacion.EstacionAsignada(EstacionID: Integer): Boolean;
var
  X: Integer;
begin
  Result := False;
  for X := 0 to lbEstacion.Items.Count - 1 do
  begin
    if lbEstacion.Items.Item[X].StateIndex = EstacionID then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function TfrmAgrupacionEstacion.EstacionNombre(EstacionID: Integer): String;
begin
  Result := '';
  cdsEstacion.First;
  while not cdsEstacion.EOF do
  begin
    if EstacionID = cdsEstacion.FieldByName('EstacionID').AsInteger then
    begin
      Result := cdsEstacion.FieldByName('Nombre').AsString;
      Break;
    end;
    cdsEstacion.Next;
  end;
end;

procedure TfrmAgrupacionEstacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsEstacion.Close;
  cdsDetalleAgrupacionEstacion.Close;
end;

procedure TfrmAgrupacionEstacion.FormCreate(Sender: TObject);
begin
  Abriendo := True;
  inherited;
  Abriendo := False;
  cdsEstacion.Open;
  cdsCatalogoAfterScroll(cdsCatalogo);
end;

initialization
  ModuleInfoManager.RegisterModule('Agrupación Estación', TfrmAgrupacionEstacion);

end.
