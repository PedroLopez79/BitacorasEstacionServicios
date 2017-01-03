unit ufrmReporteSAT;

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
  ExtDlgs, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmReporteSAT = class(TfrmCustomModule)
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
    spActualizaFacturaElectronica: TDACDSDataTable;
    DADataSource1: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1Vigencia: TcxGridDBColumn;
    cxGrid1DBTableView1RFC: TcxGridDBColumn;
    cxGrid1DBTableView1Serie: TcxGridDBColumn;
    cxGrid1DBTableView1Folio: TcxGridDBColumn;
    cxGrid1DBTableView1Total: TcxGridDBColumn;
    cxGrid1DBTableView1Impuesto: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    SaveDialog1: TSaveDialog;
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
  frmReporteSAT: TfrmReporteSAT;

implementation

uses  Modules, dmActions;

{$R *.dfm}

procedure TfrmReporteSAT.ActionProcesar(Action: TBasicAction);
var
  Cadena: String;
  NOMARCH:String;
begin

  SaveDialog1.FileName:= '01'+cdsEstacion.FieldByName('RFC').AsString+FormatDateTime('MM',cxDateEdit1.Date)+FormatDateTime('YYYY',cxDateEdit1.Date)+'.txt';

  if not SaveDialog1.Execute then exit;
  NOMARCH := SaveDialog1.FileName;

  if FileExists(NOMARCH) then  DeleteFile(NOMARCH);

  tblFacturas.First;
  while not tblFacturas.Eof do
  begin
      Cadena:= '|'+ tblFacturas.FieldByName('RFC').AsString+'|'+tblFacturas.FieldByName('Serie').AsString+'|'+tblFacturas.FieldByName('Folio').AsString+'|'+tblFacturas.FieldByName('FECHANOAPROBACION').AsString+'|'+tblFacturas.FieldByName('FECHAHORA').AsString+'|'+FormatFloat('#0.00',tblFacturas.FieldByName('TOTAL').AsFloat)+'|'+FormatFloat('#0.00',tblFacturas.FieldByName('IMPUESTO').AsFloat)+'|'+'1'+'|I||||';
      GuardaArchivo(cadena, NOMARCH);

      if not(tblFacturas.FieldByName('Vigencia').AsBoolean) then
      begin
         Cadena:= '|'+ tblFacturas.FieldByName('RFC').AsString+'|'+tblFacturas.FieldByName('Serie').AsString+'|'+tblFacturas.FieldByName('Folio').AsString+'|'+tblFacturas.FieldByName('FECHANOAPROBACION').AsString+'|'+tblFacturas.FieldByName('FECHAHORA').AsString+'|'+FormatFloat('#0.00', tblFacturas.FieldByName('TOTAL').AsFloat)+'|'+FormatFloat('#0.00',tblFacturas.FieldByName('IMPUESTO').AsFloat)+'|'+'0'+'|I||||';
         GuardaArchivo(cadena, NOMARCH);
      end;

      tblFacturas.Next;
  end;

  spActualizaFacturaElectronica.Close;
  spActualizaFacturaElectronica.ParamByName('VIGENCIA').AsBoolean:= tblFacturas.FieldByName('Vigencia').AsBoolean;
  spActualizaFacturaElectronica.ParamByName('FACTURAID').AsInteger:= tblFacturas.FieldByName('FacturaID').AsInteger;
  spActualizaFacturaElectronica.Open;
  spActualizaFacturaElectronica.Close;

  tblFacturas.Close;
  cdsFacturas.Close;
end;

procedure TfrmReporteSAT.btnPreeliminarClick(Sender: TObject);
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
    tblFacturas.FieldByName('Vigencia').AsBoolean:= cdsFacturas.FieldByName('Vigencia').AsBoolean;
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


procedure TfrmReporteSAT.FormShow(Sender: TObject);
begin
  inherited;
  cdsEstacion.Close;
  cdsEstacion.Open;
end;

function TfrmReporteSAT.GuardaArchivo(Texto: String; FileArch: String): Integer;
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

procedure TfrmReporteSAT.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actProcesar, ActionProcesar);
end;

procedure TfrmReporteSAT.UpdateActionsState;
begin
  inherited;
  dmAppActions.actProcesar.Enabled:=cdsFacturas.State = dsBrowse;
end;

initialization
  ModuleInfoManager.RegisterModule('Reporte SAT', TfrmReporteSAT);

end.
