unit ufrmReenviaCorreoSAT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit, StdCtrls,
  cxButtons, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  uDAInterfaces, uDADataTable, dxmdaset, uDAScriptingProvider, uDACDSDataTable,
  ExtDlgs, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator,
  uDAFields, uROComponent;

type
  TfrmReenviaCorreoSAT = class(TfrmCustomModule)
    cxGroupBox4: TcxGroupBox;
    Label9: TLabel;
    btnPreeliminar: TcxButton;
    cdsFacturas: TDACDSDataTable;
    tblFacturas: TdxMemData;
    DataSource1: TDataSource;
    dsFacturas: TDADataSource;
    Label1: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    tblFacturasImpuesto: TFloatField;
    tblFacturasTotal: TFloatField;
    tblFacturasFolio: TIntegerField;
    tblFacturasSerie: TStringField;
    tblFacturasRFC: TStringField;
    tblFacturasVigencia: TBooleanField;
    tblFacturasFECHANOAPROBACION: TStringField;
    tblFacturasFECHAHORA: TStringField;
    tblFacturasFacturaID: TIntegerField;
    DADataSource1: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1Reenviar: TcxGridDBColumn;
    cxGrid1DBTableView1RFC: TcxGridDBColumn;
    cxGrid1DBTableView1Serie: TcxGridDBColumn;
    cxGrid1DBTableView1Folio: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Impuesto: TcxGridDBColumn;
    procedure btnPreeliminarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ActionProcesar(Action: TBasicAction);
    function GuardaArchivo(Texto: String; FileArch: String):Integer;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  protected
    procedure RegisterActions; override;
  end;

var
  frmReenviaCorreoSAT: TfrmReenviaCorreoSAT;

implementation

uses  Modules, dmActions, uDM;

{$R *.dfm}

procedure TfrmReenviaCorreoSAT.ActionProcesar(Action: TBasicAction);
var
  Cadena:String;
begin
  Cadena:= Cadena + '(';

  tblFacturas.First;
  while not tblFacturas.Eof do
  begin
      if (tblFacturas.FieldByName('Reenviar').AsBoolean) then
      begin
         Cadena:= Cadena + tblFacturas.FieldByName('FACTURAID').AsString;
         if not tblFacturas.Eof then Cadena:= Cadena + ',';
      end;
      tblFacturas.Next;
  end;
  Delete(Cadena, length(Cadena),1);
  Cadena:= Cadena + ')';

  DM.cdsMaestro.Close;
  DM.cdsDetalle.Close;

  DM.cdsMaestro.Fields.Clear;
  DM.cdsDetalle.Fields.Clear;

  DM.rdaMaestro.GetDataCall.ParamByName('SQL').AsString:= 'UPDATE FACTURAELECTRONICA SET ENVIADO = 0 WHERE FACTURAID IN'+ CADENA + ' SELECT 1';
  DM.rdaMaestro.GetDataCall.ParamByName('Parametros').AsComplexType:=DM.Parametros;
  DM.cdsMaestro.Open;

  tblFacturas.Close;
  cdsFacturas.Close;
end;

procedure TfrmReenviaCorreoSAT.btnPreeliminarClick(Sender: TObject);
begin
  inherited;

  cdsFacturas.Close;
  cdsFacturas.ParamByName('FECHAINI').AsDateTime:= cxDateEdit1.Date;
  cdsFacturas.ParamByName('FECHAFIN').AsDateTime:= cxDateEdit2.Date;
  cdsFacturas.ParamByName('ESTACIONID').AsInteger:= cxLookupComboBox1.EditValue;
  cdsFacturas.Open;

  tblFacturas.Close;
  tblFacturas.Open;
  while not cdsFacturas.EOF do
  begin
    tblFacturas.Append;
    tblFacturas.FieldByName('Reenviar').AsBoolean:= False;
    tblFacturas.FieldByName('RFC').AsString:= cdsFacturas.FieldByName('RFC').AsString;
    tblFacturas.FieldByName('Serie').AsString:= cdsFacturas.FieldByName('Serie').AsString;
    tblFacturas.FieldByName('Folio').AsInteger:= cdsFacturas.FieldByName('Folio').AsInteger;
    tblFacturas.FieldByName('Total').AsFloat:= cdsFacturas.FieldByName('Total').AsFloat;
    tblFacturas.FieldByName('Impuesto').AsFloat:= cdsFacturas.FieldByName('Impuesto').AsFloat;
    tblFacturas.FieldByName('FECHANOAPROBACION').AsString:= cdsFacturas.FieldByName('FECHANOAPROBACION').AsString;
    tblFacturas.FieldByName('FECHAHORA').AsString:= cdsFacturas.FieldByName('FECHAHORA').AsString;
    tblFacturas.FieldByName('FacturaID').AsInteger:= cdsFacturas.FieldByName('FacturaID').AsInteger;
    cdsFacturas.Next;
  end;

  UpdateActionsState;
end;


procedure TfrmReenviaCorreoSAT.FormShow(Sender: TObject);
begin
  inherited;
  cdsEstacion.Close;
  cdsEstacion.Open;
end;

function TfrmReenviaCorreoSAT.GuardaArchivo(Texto: String; FileArch: String): Integer;
var
  F: TextFile;
begin
    {$I-}
    AssignFile( F, FileArch );
    Reset(F);
    {$I+}

    If (IOResult <> 0) then begin
      Rewrite(F);
      WriteLN( F, Texto );
      CloseFile( F );
    end
    else begin
      Append(F);
      WriteLN( F, Texto );
      CloseFile( F );
    end;
end;

procedure TfrmReenviaCorreoSAT.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actProcesar, ActionProcesar);
end;

procedure TfrmReenviaCorreoSAT.UpdateActionsState;
begin
  inherited;
  dmAppActions.actProcesar.Enabled:=cdsFacturas.State = dsBrowse;
end;

initialization
  ModuleInfoManager.RegisterModule('Reenvio de Facturas', TfrmReenviaCorreoSAT);

end.
