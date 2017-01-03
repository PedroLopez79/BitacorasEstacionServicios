unit ufrmAnticipos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxGraphics, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, cxLabel, cxControls, cxContainer, cxEdit, cxGroupBox, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB, uDADataTable,
  uDAScriptingProvider, uDACDSDataTable, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTimeEdit,
  cxPC, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, uDAInterfaces,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinSilver, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeelPainters, cxLookAndFeels, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSpringTime;

type

  TEx=Class(Exception);


  TfrmMovimientos = class(TfrmCustomModule)
    cdsDespachador: TDACDSDataTable;
    dsDespachador: TDADataSource;
    dsAgrupacion: TDADataSource;
    cdsEstacion: TDACDSDataTable;
    dsEstacion: TDADataSource;
    cdsAnticipo: TDACDSDataTable;
    dsAnticipo: TDADataSource;
    cdsAnticipoDetalle: TDACDSDataTable;
    dsAnticipoDetalle: TDADataSource;
    cdsBanco: TDACDSDataTable;
    dsBanco: TDADataSource;
    cdsSalida: TDACDSDataTable;
    dsSalida: TDADataSource;
    cdsTipoValorSeleccionado: TDACDSDataTable;
    dsTipoValorSeleccionado: TDADataSource;
    cdsValeCredito: TDACDSDataTable;
    dsCartevaValeCredito: TDADataSource;
    cdsCupon: TDACDSDataTable;
    cdsTipoValor: TDACDSDataTable;
    dsTipoValor: TDADataSource;
    cdsAgrupacion: TDACDSDataTable;
    cdsNoBombaPorAgrupacion: TDACDSDataTable;
    dsNoBombaPorAgrupacion: TDADataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grpAnticiposGlobales: TcxGroupBox;
    dbgAnticipos: TcxGrid;
    dbgAnticiposDBTableView1: TcxGridDBTableView;
    dbgAnticiposDBTableView1Column1: TcxGridDBColumn;
    dbgAnticiposDBTableView1TotalEntregado: TcxGridDBColumn;
    dbgAnticiposDBTableView1Column2: TcxGridDBColumn;
    dbgAnticiposDBTableView1Column3: TcxGridDBColumn;
    dbgAnticiposLevel1: TcxGridLevel;
    grpAnticipoDetallado: TcxGroupBox;
    dbgAnticipoDetalle: TcxGrid;
    dbgAnticipoDetalleDBTableView1: TcxGridDBTableView;
    dbgAnticipoDetalleDBTableView1TipoValorID: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1ClienteID: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1Ticket: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1CuponID: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1BancoID: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1SalidaID: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1Referencia: TcxGridDBColumn;
    dbgAnticipoDetalleDBTableView1Importe: TcxGridDBColumn;
    dbgAnticipoDetalleLevel1: TcxGridLevel;
    cbxListaCupon: TcxComboBox;
    cbxListaTicket: TcxComboBox;
    cdsAgrupacion2: TDACDSDataTable;
    dsAgrupacion2: TDADataSource;
    cxTabClientes: TcxTabSheet;
    cxTabCupones: TcxTabSheet;
    cxTabOtros: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    grpDatos: TcxGroupBox;
    cxAgrupacion: TcxLabel;
    cxDespachador: TcxLabel;
    dbAgrupacion: TcxDBLookupComboBox;
    dbDespachador: TcxDBLookupComboBox;
    cdsAnticipoDetalleOtros: TDACDSDataTable;
    dsAnticipoDetalleOtros: TDADataSource;
    GridOtros: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    OtrosImporte: TcxGridDBColumn;
    OtrosReferencia: TcxGridDBColumn;
    OtrosTicket: TcxGridDBColumn;
    OtrosTipoValorId: TcxGridDBColumn;
    OtrosSalidaID: TcxGridDBColumn;
    cdsTipoValorOtros: TDACDSDataTable;
    dsTipoValorOtros: TDADataSource;
    GridCupones: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    CuponTipoValorId: TcxGridDBColumn;
    CuponClienteID: TcxGridDBColumn;
    CuponTicket: TcxGridDBColumn;
    CuponCuponId: TcxGridDBColumn;
    CuponReferencia: TcxGridDBColumn;
    CuponImporte: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cdsAnticipoDetalleCupones: TDACDSDataTable;
    dsAnticipoDetalleCupones: TDADataSource;
    cdsTipoValorCupones: TDACDSDataTable;
    dsTipoValorCupones: TDADataSource;
    cdsAnticipoDetalleClientes: TDACDSDataTable;
    dsAnticipoDetalleClientes: TDADataSource;
    cdsTipoValorClientes: TDACDSDataTable;
    dsTipoValorClientes: TDADataSource;
    GridClientes: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    ClientesTipoValorID: TcxGridDBColumn;
    ClientesClienteID: TcxGridDBColumn;
    ClientesTicket: TcxGridDBColumn;
    ClientesReferencia: TcxGridDBColumn;
    ClientesImporte: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cdsAnticipoDetalleMoneda: TDACDSDataTable;
    dsAnticipoDetalleMoneda: TDADataSource;
    GridMoneda: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    MonedaTipoValor: TcxGridDBColumn;
    MonedaClienteID: TcxGridDBColumn;
    MonedaTicket: TcxGridDBColumn;
    MonedaReferencia: TcxGridDBColumn;
    MonedaImporte: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cdsTipoValorMoneda: TDACDSDataTable;
    dsTipoValorMoneda: TDADataSource;
    lblNoCorte: TcxLabel;
    MonedaBanco: TcxGridDBColumn;
    CuponNombre: TcxGridDBColumn;
    cdsCliente: TDACDSDataTable;
    dsCliente: TDADataSource;
    clientesNombre: TcxGridDBColumn;
    MonedaNombreCliente: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure cdsAnticipoAfterPost(DataTable: TDADataTable);
    procedure cdsAnticipoBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoNewRecord(DataTable: TDADataTable);
    procedure dsAnticipoStateChange(Sender: TObject);
    procedure dbAgrupacionExit(Sender: TObject);
    procedure dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesEditValueChanged(
      Sender: TObject);
    procedure cdsAnticipoDetalleBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleAfterPost(DataTable: TDADataTable);
    procedure dbgAnticipoDetalleDBTableView1CuponIDPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbDespachadorExit(Sender: TObject);
    procedure dsCartevaValeCreditoStateChange(Sender: TObject);
    procedure cdsAnticipoDetalleBeforeDelete(DataTable: TDADataTable);
    procedure dbgAnticipoDetalleDBTableView1EditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure dbgAnticipoDetalleDBTableView1ImportePropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgAnticipoDetalleDBTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure dbgAnticipoDetalleDBTableView1TicketPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesValidate(
      Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesChange(
      Sender: TObject);
    procedure dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesPopup(
      Sender: TObject);
    procedure cdsAnticipoDetalleOtrosBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleOtrosAfterPost(DataTable: TDADataTable);
    procedure OtrosTicketPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CuponTipoValorIdPropertiesEditValueChanged(Sender: TObject);
    procedure CuponTicketPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure CuponCuponIdPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsAnticipoDetalleCuponesBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleCuponesAfterPost(DataTable: TDADataTable);
    procedure ClientesTipoValorIDPropertiesEditValueChanged(Sender: TObject);
    procedure ClientesTicketPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cxGridDBTableView3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MonedaTipoValorPropertiesEditValueChanged(Sender: TObject);
    procedure cdsAnticipoDetalleClientesBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleClientesAfterPost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleMonedaBeforePost(DataTable: TDADataTable);
    procedure cdsAnticipoDetalleMonedaAfterPost(DataTable: TDADataTable);
    procedure cxGridDBTableView3EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    procedure ActionNuevo(Action: TBasicAction);
    procedure ActionGuardar(Action: TBasicAction);
    procedure ActionCancelar(Action: TBasicAction);
    procedure ActionEliminar(Action: TBasicAction);
    function ExisteCuponEnLista(Valor: String): Boolean;
    function StatusCupon(Valor:string;var Mensaje:String):boolean;
    function RequiereCupon: boolean;
    Function RequiereCupon1(Valor:Integer):Boolean;
    function RequiereReferencia: boolean;
    Function RequiereReferencia1(Valor:Integer):Boolean;
    function RequiereCliente: Boolean;
    function RequiereCliente1(Valor:Integer):Boolean;
    function RequiereTicket: boolean;
    Function RequiereTicket1(Valor:Integer):Boolean;
    function RequiereBanco: Boolean;
    Function RequiereBanco1(Valor:Integer):Boolean;
    function StatusTicket(Valor:String;var Mensaje:String):boolean;
    function ExisteTicketEnLista(Valor: String): boolean;
    procedure ActionBuscar(Action: TBasicAction);
    procedure BuscarCliente;
    Procedure BuscarCliente1;
    Procedure ConsumirCupon;
  protected
    procedure RegisterActions; override;
    procedure Imprimir(const secuencia:Integer;const Estacion:Integer;const Agrupacion:Integer);
   // procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
  public
    { Public declarations }
    procedure UpdateActionsState; override;
  end;

var
  frmMovimientos: TfrmMovimientos;
  Estacion:Integer;
  TipoAnticipo: String;
  Secuencia: Integer;
  Agrupacion:integer;
  Despachador:Integer;
  Agrupar:Boolean;
  Importe_Grupo:Real;
  TipoValorID_Grupo:integer;
  ClienteID_Grupo:Integer;
  Ticket_Grupo:integer;
  Suma_Grupo:Real;
  ConvierteADolar:Boolean;



  TipoValor:record
    TipoValorID:Integer;
    ClienteID:Integer;
    Ticket:Integer;
    CuponID:Integer;
    BancoID:Integer;
    SalidaID:Integer;
    Referencia:string;
    Importe:Float;
  end;
  AgregarRegistro:Boolean;

implementation

{$R *.dfm}

uses Modules, uDM, dmActions, UtileriasComun, ufrmBuscarCliente,
  LibraryEmpresas_Intf, dmImagenes;

procedure TfrmMovimientos.ActionGuardar(Action: TBasicAction);
begin
   cdsAgrupacion2.Cancel;
  if TipoAnticipo='G' then
    cdsAnticipo.Post

  else
  begin
    ConsumirCupon;

    cdsAnticipoDetalle.ApplyUpdates;
    dbgAnticipoDetalle.Enabled:=False;
    cdsAnticipoDetalle.Close;
    cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
    cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalle.Open;

    cdsAnticipoDetalleOtros.ApplyUpdates(True);
    GridOtros.Enabled:=False;
    cdsAnticipoDetalleOtros.Close;
    cdsAnticipoDEtalleOtros.ParamByName('EstacionID').AsInteger:=Estacion;
    cdsAnticipoDetalleOtros.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalleOtros.Open;

    cdsAnticipoDetalleCupones.ApplyUpdates(True);
    GridCupones.Enabled:=False;
    cdsAnticipoDetalleCupones.Close;
    cdsAnticipoDetalleCupones.ParamByName('EstacionID').AsInteger:=Estacion;
    cdsAnticipoDetalleCupones.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalleCupones.Open;

    cdsAnticipoDetalleClientes.ApplyUpdates(True);
    GridClientes.Enabled:=False;
    cdsAnticipoDetalleClientes.Close;
    cdsAnticipoDetalleClientes.ParamByName('EstacionID').AsInteger:=Estacion;
    cdsAnticipoDetalleClientes.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalleClientes.Open;

    cdsAnticipoDetalleMoneda.ApplyUpdates(True);
    gridMoneda.Enabled:=False;
    cdsAnticipoDetalleMoneda.Close;
    cdsAnticipoDetalleMoneda.ParamByName('EstacionID').AsInteger:=Estacion;
    cdsAnticipoDetalleMoneda.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalleMoneda.Open;

    IMPRIMIR(Secuencia,Estacion,Agrupacion); //Mandamos imprimir el reporte del anticipo;
  end;
    //cdsAnticipoDetalle.Post;
end;

procedure TfrmMovimientos.ActionNuevo(Action: TBasicAction);
begin
 AgregarRegistro:=True;
 cdsAgrupacion2.Open;
 cdsAgrupacion2.Append;
 if TipoAnticipo='G' then
   cdsAnticipo.Append
 else
 begin
   cbxListaCupon.Clear;
   dbAgrupacion.Enabled:=True;

   cdsAnticipoDetalle.Close;
    cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
    cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalle.Open;

   cdsAnticipoDetalle.Append;
   dbAgrupacion.SetFocus;


{  cdsAnticipoDetalle.Close;
  cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
  cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=Secuencia;

  cdsAnticipoDetalle.Open;
//  cdsAnticipoDetalle.Append;
   dbAgrupacion.SetFocus;}
 end;
end;

procedure TfrmMovimientos.cdsAnticipoAfterPost(DataTable: TDADataTable);
begin
  inherited;
  cdsAnticipo.ApplyUpdates;
end;

procedure TfrmMovimientos.cdsAnticipoBeforePost(DataTable: TDADataTable);
var
  Fecha: TDateTime;
begin
  inherited;
  cdsAnticipo.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipo.FieldByName('Fecha').AsDateTime);
  cdsAnticipo.FieldByName('AnticipoID').AsInteger:=DM.Servidor.Folio('AnticipoID', '');
  cdsAnticipo.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipo.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipo.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipo.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipo.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipo.FieldByName('Secuencia').AsInteger:=Secuencia;
end;

procedure TfrmMovimientos.cdsAnticipoDetalleAfterPost(DataTable: TDADataTable);
var
  buttonSelected:Integer;
begin
  inherited;
  if Agrupar then
  begin
    TipoValorID_Grupo:=cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger;
    ClienteID_Grupo:=cdsAnticipoDetalle.FieldByName('ClienteID').AsInteger;
    Ticket_Grupo:=cdsAnticipoDetalle.FieldByName('Ticket').AsInteger;
    //Importe_Grupo:=500;
    Suma_Grupo:=Suma_Grupo+cdsAnticipoDetalle.FieldByName('Importe').AsFloat;
    if Suma_Grupo = Importe_Grupo then
      dbgAnticipoDetalleDBTableView1TipoValorID.Options.Focusing:=True;
  end;
  if Agrupar then
  begin
    if Suma_Grupo < Importe_Grupo then
    begin
      cdsAnticipoDetalle.Append;
      cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger:=TipoValorID_Grupo;
      cdsAnticipoDetalle.FieldByName('ClienteID').AsInteger:=ClienteID_Grupo;
      cdsAnticipoDetalle.FieldByName('Ticket').AsInteger:=Ticket_Grupo;
      dbgAnticipoDetalleDBTableView1TipoValorID.Options.Focusing:=False;
      dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=False;
      dbgAnticipoDetalleDBTableView1Ticket.Options.Focusing:=False;
      dbgAnticipoDetalleDBTableView1Referencia.Options.Focusing:=True;
    end
    else
    begin
      Agrupar:=False;
      dbgAnticipoDetalleDBTableView1TipoValorID.Options.Focusing:=true;
      Suma_Grupo:=0;
    end;
  end;


  buttonSelected := MessageDlg('Deseas Agregar registro del mismo Tipo',mtConfirmation,[ mbNo,mbOK], 0);
  //buttonSelected:=mrOk;
  if buttonSelected=mrOk then
  begin
    AgregarRegistro:=True;
    TipoValor.TipoValorID:=cdsAnticipoDetalle.FieldByName('TipoValorId').AsInteger;
   // cdsAnticipoDetalle.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;
    TipoValor.Ticket:=cdsAnticipoDetalle.FieldByName('Ticket').AsInteger;
    TipoValor.CuponID:=cdsAnticipoDetalle.FieldByName('CuponID').AsInteger;
    TipoValor.BancoID:=cdsAnticipoDetalle.FieldByName('BancoID').AsInteger;
    TipoValor.SalidaID:=cdsAnticipoDetalle.FieldByName('SalidaID').AsInteger;
    TipoValor.Referencia:=cdsAnticipoDetalle.FieldByName('Referencia').AsString;

    //showmessage('Has presionado Ok');
    cdsAnticipoDetalle.Append;
   // if cdsTipoValorSeleccionado.FieldByName('Referencia').AsInteger=-1 then
      cdsAnticipodetalle.FieldByName('Referencia').AsString:=TipoValor.Referencia;

    //if cdsTipoValorSeleccionado.FieldByName('ConsumoInterno').AsInteger=-1 then
       cdsAnticipodetalle.FieldByName('SalidaID').AsInteger:=Tipovalor.SalidaID;

    //If cdsTipoValorSeleccionado.FieldByName('Banco').AsInteger=-1 then
       cdsAnticipoDetalle.FieldByName('BancoID').AsInteger:=TipoValor.BancoID;

    //if cdsTipoValorSeleccionado.FieldByName('Cupon').AsInteger=-1 then
      cdsAnticipoDetalle.FieldByName('CuponID').AsInteger:=TipoValor.CuponID;

    //if cdsTipoValorSeleccionado.FieldByName('Ticket').AsInteger=-1 then
      if TipoValor.Ticket>0 then
        cdsAnticipoDetalle.FieldByName('Ticket').AsInteger:=Tipovalor.Ticket;

   //if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
     cdsAnticipoDetalle.FieldByName('ClienteId').AsInteger:=Tipovalor.ClienteID;

    cdsAnticipoDetalle.FieldByName('TipovalorId').AsInteger:=TipoValor.TipoValorID;
  end
  else
  begin
      //ShowMessage('Has Presionado No');
      AgregarRegistro:=False;
  end;





end;

procedure TfrmMovimientos.cdsAnticipoDetalleBeforeDelete(
  DataTable: TDADataTable);
begin
  inherited;
  if RequiereCupon then
    cbxListaCupon.Properties.Items.Delete(cbxListaCupon.Properties.Items.IndexOf(cdsAnticipoDetalle.FieldByName('CuponID').AsString));



end;

procedure TfrmMovimientos.cdsAnticipoDetalleBeforePost(DataTable: TDADataTable);
var
  Fecha:Datetime;
begin
  inherited;
  if RequiereCupon then
   cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('CuponID').AsString);

  cdsAnticipoDetalle.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipoDetalle.FieldByName('Fecha').AsDateTime);
  cdsAnticipoDetalle.FieldByName('AnticipoDetalleID').AsInteger:=DM.Servidor.Folio('AnticipoDetalleID', '');
  cdsAnticipoDetalle.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipoDetalle.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipoDetalle.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipoDetalle.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipoDetalle.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetalle.FieldByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalle.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalle.FieldByName('DespachadorID').AsInteger:=Despachador;


  If AgregarRegistro=True then
    cdsAnticipoDetalle.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;

{  TipoValor.TipoValorID:=cdsAnticipoDetalle.FieldByName('TipoValorId').AsInteger;
  cdsAnticipoDetalle.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;
  TipoValor.Ticket:=cdsAnticipoDetalle.FieldByName('Ticket').AsInteger;
  TipoValor.CuponID:=cdsAnticipoDetalle.FieldByName('CuponID').AsInteger;
  TipoValor.BancoID:=cdsAnticipoDetalle.FieldByName('BancoID').AsInteger;
  TipoValor.SalidaID:=cdsAnticipoDetalle.FieldByName('SalidaID').AsInteger;
  TipoValor.Referencia:=cdsAnticipoDetalle.FieldByName('Referencia').AsString;
 }
 { if (RequiereReferencia) and (Trim(cdsAnticipoDetalle.FieldByName('Referencia').AsString)='') then
  begin
     raise TEx.Create('Requiere Referencia')
  end;
  if (RequiereCliente) and   (cdsAnticipoDetalle.FieldByName('ClienteID').AsInteger=0)  then
  begin
    Showmessage('Capture Cliente');
    cdsAnticipoDetalle.Cancel;
  end;
  if (RequiereTicket) and   (cdsAnticipoDetalle.FieldByName('Ticket').AsInteger=0)  then
  begin
    Showmessage('Capture Ticket');
    cdsAnticipoDetalle.Cancel;
  end;     }
  if (RequiereCliente) and (cdsAnticipoDetalle.FieldByName('ClienteID').IsNull ) then
    raise TEx.Create('Capture Cliente')
  else
    if (RequiereBanco) and (cdsAnticipoDetalle.FieldByName('BancoID').IsNull ) then
      raise TEx.Create('Capture Banco')
    else
    if (RequiereTicket) and  (cdsAnticipoDetalle.FieldByName('Ticket').IsNull)  then
      raise TEx.Create('Capture Ticket')
    else
      if (RequiereCupon) and (cdsAnticipoDetalle.FieldByName('CuponID').IsNull) then
        raise TEx.Create('Capture Cup�n')
      else
        if (RequiereReferencia) and (cdsAnticipoDetalle.FieldByName('Referencia').IsNull) then
          raise TEx.Create('Capture Referencia');
  if (cdsAnticipoDetalle.FieldByName('Importe').AsFloat = 0) then
    raise TEx.Create('Importe no v�lido');
end;

procedure TfrmMovimientos.cdsAnticipoDetalleClientesAfterPost(
  DataTable: TDADataTable);
var
  buttonSelected:Integer;
begin
  inherited;
  if Agrupar then
  begin
    TipoValorID_Grupo:=cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger;
    ClienteID_Grupo:=cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger;
    Ticket_Grupo:=cdsAnticipoDetalleClientes.FieldByName('Ticket').AsInteger;
    //Importe_Grupo:=500;
    Suma_Grupo:=Suma_Grupo + cdsAnticipoDetalleClientes.FieldByName('Importe').AsFloat;
    if Suma_Grupo = Importe_Grupo then
      ClientesTipoValorID.Options.Focusing:=True;
  end;
  if Agrupar then
  begin
    if Suma_Grupo < Importe_Grupo then
    begin
      cdsAnticipoDetalleClientes.Append;
      cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger:=TipoValorID_Grupo;
      cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger:=ClienteID_Grupo;
      cdsAnticipoDetalleClientes.FieldByName('Ticket').AsInteger:=Ticket_Grupo;
      ClientesTipoValorID.Options.Focusing:=False;
      ClientesTicket.Options.Focusing:=False;
      ClientesReferencia.Options.Focusing:=False;
    end
    else
    begin
      Agrupar:=False;
      ClientesTipoValorID.Options.Focusing:=True;
      Suma_Grupo:=0;
    end;
  end;


  buttonSelected := MessageDlg('Deseas Agregar registro del mismo Tipo',mtConfirmation,[ mbNo,mbOK], 0);
  //buttonSelected:=mrOk;

  if buttonSelected=mrOk then
  begin
    AgregarRegistro:=True;
    TipoValor.TipoValorID:=cdsAnticipoDetalleClientes.FieldByName('TipoValorId').AsInteger;
    //TipoValor.ClienteID:=ClientesClienteID.EditValue;
    //TipoValor.ClienteID:=cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger;
    TipoValor.Ticket:=cdsAnticipoDetalleClientes.FieldByName('Ticket').AsInteger;
    TipoValor.CuponID:=cdsAnticipoDetalleClientes.FieldByName('CuponID').AsInteger;
    TipoValor.BancoID:=cdsAnticipoDetalleClientes.FieldByName('BancoID').AsInteger;
    TipoValor.SalidaID:=cdsAnticipoDetalleClientes.FieldByName('SalidaID').AsInteger;
    TipoValor.Referencia:=cdsAnticipoDetalleClientes.FieldByName('Referencia').AsString;

    cdsAnticipoDetalleClientes.Append;
    cdsAnticipodetalleClientes.FieldByName('Referencia').AsString:=TipoValor.Referencia;
    cdsAnticipodetalleClientes.FieldByName('SalidaID').AsInteger:=Tipovalor.SalidaID;
    cdsAnticipoDetalleClientes.FieldByName('BancoID').AsInteger:=TipoValor.BancoID;
    cdsAnticipoDetalleClientes.FieldByName('CuponID').AsInteger:=TipoValor.CuponID;

    if TipoValor.Ticket>0 then
      cdsAnticipoDetalleClientes.FieldByName('Ticket').AsInteger:=Tipovalor.Ticket;
    cdsAnticipoDetalleClientes.FieldByName('ClienteId').AsInteger:=Tipovalor.ClienteID;
    cdsAnticipoDetalleClientes.FieldByName('TipovalorId').AsInteger:=TipoValor.TipoValorID;
  end
  else
  begin
      //ShowMessage('Has Presionado No');
      AgregarRegistro:=False;
  end;

end;

procedure TfrmMovimientos.cdsAnticipoDetalleClientesBeforePost(
  DataTable: TDADataTable);
var
  Fecha:Datetime;
begin
  inherited;
 // if RequiereCupon then
 //  cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('CuponID').AsString);

  cdsAnticipoDetalleClientes.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipoDetalleClientes.FieldByName('Fecha').AsDateTime);
  cdsAnticipoDetalleClientes.FieldByName('AnticipoDetalleID').AsInteger:=DM.Servidor.Folio('AnticipoDetalleID', '');
  cdsAnticipoDetalleClientes.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipoDetalleClientes.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipoDetalleClientes.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipoDetalleClientes.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipoDetalleClientes.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetalleClientes.FieldByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleClientes.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleClientes.FieldByName('DespachadorID').AsInteger:=Despachador;
  cdsAnticipoDetalleClientes.FieldByName('TipoAnticipo').AsInteger:=2;

  TipoValor.ClienteID:=ClientesClienteID.EditValue;  //el No de Cliente Por si deseo Agregarlo de Nuevo

  If AgregarRegistro=True then
    cdsAnticipoDetalleClientes.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;

  if (RequiereCliente1(cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleClientes.FieldByName('ClienteID').IsNull ) then
    raise TEx.Create('Capture Cliente')
  else
    if (RequiereBanco1(cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleClientes.FieldByName('BancoID').IsNull ) then
      raise TEx.Create('Capture Banco')
    else
    if (RequiereTicket1(cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger)) and  (cdsAnticipoDetalleClientes.FieldByName('Ticket').IsNull)  then
      raise TEx.Create('Capture Ticket')
    else
      if (RequiereCupon1(cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleClientes.FieldByName('CuponID').IsNull) then
        raise TEx.Create('Capture Cup�n')
      else
        if (RequiereReferencia1(cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleClientes.FieldByName('Referencia').IsNull) then
          raise TEx.Create('Capture Referencia');
  if (cdsAnticipoDetalleClientes.FieldByName('Importe').AsFloat = 0) then
    raise TEx.Create('Importe no v�lido');
end;

procedure TfrmMovimientos.cdsAnticipoDetalleCuponesAfterPost(
  DataTable: TDADataTable);
var
  buttonSelected:Integer;
begin
  inherited;
  if Agrupar then
  begin
    TipoValorID_Grupo:=cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger;
    ClienteID_Grupo:=cdsAnticipoDetalleCupones.FieldByName('ClienteID').AsInteger;
    Ticket_Grupo:=cdsAnticipoDetalleCupones.FieldByName('Ticket').AsInteger;
    //Importe_Grupo:=500;
    Suma_Grupo:=Suma_Grupo + cdsAnticipoDetalleCupones.FieldByName('Importe').AsFloat;
    if Suma_Grupo = Importe_Grupo then
      CuponTipoValorId.Options.Focusing:=True;
  end;
  if Agrupar then
  begin
    if Suma_Grupo < Importe_Grupo then
    begin
      cdsAnticipoDetalleCupones.Append;
      cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger:=TipoValorID_Grupo;
      cdsAnticipoDetalleCupones.FieldByName('ClienteID').AsInteger:=ClienteID_Grupo;
      cdsAnticipoDetalleCupones.FieldByName('Ticket').AsInteger:=Ticket_Grupo;
      CuponTipoValorID.Options.Focusing:=False;
      CuponTicket.Options.Focusing:=False;
      CuponReferencia.Options.Focusing:=False;
    end
    else
    begin
      Agrupar:=False;
      CuponTipoValorId.Options.Focusing:=True;
      Suma_Grupo:=0;
    end;
  end;


  buttonSelected := MessageDlg('Deseas Agregar registro del mismo Tipo',mtConfirmation,[ mbNo,mbOK], 0);
  //buttonSelected:=mrOk;
  if buttonSelected=mrOk then
  begin
    AgregarRegistro:=True;
    TipoValor.TipoValorID:=cdsAnticipoDetalleCupones.FieldByName('TipoValorId').AsInteger;
    TipoValor.Ticket:=cdsAnticipoDetalleCupones.FieldByName('Ticket').AsInteger;
    TipoValor.CuponID:=cdsAnticipoDetalleCupones.FieldByName('CuponID').AsInteger;
    TipoValor.BancoID:=cdsAnticipoDetalleCupones.FieldByName('BancoID').AsInteger;
    TipoValor.SalidaID:=cdsAnticipoDetalleCupones.FieldByName('SalidaID').AsInteger;
    TipoValor.Referencia:=cdsAnticipoDetalleCupones.FieldByName('Referencia').AsString;

    cdsAnticipoDetalleCupones.Append;
    cdsAnticipodetalleCupones.FieldByName('Referencia').AsString:=TipoValor.Referencia;
    cdsAnticipodetalleCupones.FieldByName('SalidaID').AsInteger:=Tipovalor.SalidaID;
    cdsAnticipoDetalleCupones.FieldByName('BancoID').AsInteger:=TipoValor.BancoID;
    cdsAnticipoDetalleCupones.FieldByName('CuponID').AsInteger:=TipoValor.CuponID;

    if TipoValor.Ticket>0 then
      cdsAnticipoDetalleCupones.FieldByName('Ticket').AsInteger:=Tipovalor.Ticket;
    cdsAnticipoDetalleCupones.FieldByName('ClienteId').AsInteger:=Tipovalor.ClienteID;
    cdsAnticipoDetalleCupones.FieldByName('TipovalorId').AsInteger:=TipoValor.TipoValorID;
  end
  else
  begin
      //ShowMessage('Has Presionado No');
      AgregarRegistro:=False;
  end;

end;

procedure TfrmMovimientos.cdsAnticipoDetalleCuponesBeforePost(
  DataTable: TDADataTable);
var
  Fecha:Datetime;
begin
  inherited;
  if (RequiereTicket1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) then
    cbxListaTicket.Properties.Items.Add(cdsAnticipoDetalleCupones.FieldByName('Ticket').AsString);
  if (RequiereCupon1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) then
   cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalleCupones.FieldByName('CuponID').AsString);

  cdsAnticipoDetalleCupones.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipoDetalleCupones.FieldByName('Fecha').AsDateTime);
  cdsAnticipoDetalleCupones.FieldByName('AnticipoDetalleID').AsInteger:=DM.Servidor.Folio('AnticipoDetalleID', '');
  cdsAnticipoDetalleCupones.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipoDetalleCupones.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipoDetalleCupones.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipoDetalleCupones.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipoDetalleCupones.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetalleCupones.FieldByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleCupones.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleCupones.FieldByName('DespachadorID').AsInteger:=Despachador;
  cdsAnticipoDetalleCupones.FieldByName('Tipoanticipo').AsInteger:=3;


  If AgregarRegistro=True then
    cdsAnticipoDetalleCupones.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;


  if (RequiereCliente1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleCupones.FieldByName('ClienteID').IsNull ) then
    raise TEx.Create('Capture Cliente')
  else
    if (RequiereBanco1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleCupones.FieldByName('BancoID').IsNull ) then
      raise TEx.Create('Capture Banco')
    else
    if (RequiereTicket1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) and  (cdsAnticipoDetalleCupones.FieldByName('Ticket').IsNull)  then
      raise TEx.Create('Capture Ticket')
    else
      if (RequiereCupon1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleCupones.FieldByName('CuponID').IsNull) then
        raise TEx.Create('Capture Cup�n')
      else
        if (RequiereReferencia1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleCupones.FieldByName('Referencia').IsNull) then
          raise TEx.Create('Capture Referencia');
  if (cdsAnticipoDetalleCupones.FieldByName('Importe').AsFloat = 0) then
    raise TEx.Create('Importe no v�lido');

end;

procedure TfrmMovimientos.cdsAnticipoDetalleMonedaAfterPost(
  DataTable: TDADataTable);
var
  buttonSelected:Integer;
begin
  inherited;
  if Agrupar then
  begin
    TipoValorID_Grupo:=cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger;
    ClienteID_Grupo:=cdsAnticipoDetalleMoneda.FieldByName('ClienteID').AsInteger;
    Ticket_Grupo:=cdsAnticipoDetalleMoneda.FieldByName('Ticket').AsInteger;
    //Importe_Grupo:=500;
    Suma_Grupo:=Suma_Grupo + cdsAnticipoDetalleMoneda.FieldByName('Importe').AsFloat;
    if Suma_Grupo = Importe_Grupo then
      MonedaTipoValor.Options.Focusing:=true;
  end;
  if Agrupar then
  begin
    if Suma_Grupo < Importe_Grupo then
    begin
      cdsAnticipoDetalleMoneda.Append;
      cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger:=TipoValorID_Grupo;
      cdsAnticipoDetalleMoneda.FieldByName('ClienteID').AsInteger:=ClienteID_Grupo;
      cdsAnticipoDetalleMoneda.FieldByName('Ticket').AsInteger:=Ticket_Grupo;
      MonedaTipoValor.Options.Focusing:=False;
      MonedaTicket.Options.Focusing:=False;
      MonedaReferencia.Options.Focusing:=False;
    end
    else
    begin
      Agrupar:=False;
      MonedaTipoValor.Options.Focusing:=true;
      Suma_Grupo:=0;
    end;
  end;


  buttonSelected := MessageDlg('Deseas Agregar registro del mismo Tipo',mtConfirmation,[ mbNo,mbOK], 0);
  //buttonSelected:=mrOk;
  if buttonSelected=mrOk then
  begin
    AgregarRegistro:=True;
    TipoValor.TipoValorID:=cdsAnticipoDetalleMoneda.FieldByName('TipoValorId').AsInteger;
    TipoValor.Ticket:=cdsAnticipoDetalleMoneda.FieldByName('Ticket').AsInteger;
    TipoValor.CuponID:=cdsAnticipoDetalleMoneda.FieldByName('CuponID').AsInteger;
    TipoValor.BancoID:=cdsAnticipoDetalleMoneda.FieldByName('BancoID').AsInteger;
    TipoValor.SalidaID:=cdsAnticipoDetalleMoneda.FieldByName('SalidaID').AsInteger;
    TipoValor.Referencia:=cdsAnticipoDetalleMoneda.FieldByName('Referencia').AsString;

    cdsAnticipoDetalleMoneda.Append;
    cdsAnticipodetalleMoneda.FieldByName('Referencia').AsString:=TipoValor.Referencia;
    cdsAnticipodetalleMoneda.FieldByName('SalidaID').AsInteger:=Tipovalor.SalidaID;
    cdsAnticipoDetalleMoneda.FieldByName('BancoID').AsInteger:=TipoValor.BancoID;
    cdsAnticipoDetalleMoneda.FieldByName('CuponID').AsInteger:=TipoValor.CuponID;

    if TipoValor.Ticket>0 then
      cdsAnticipoDetalleMoneda.FieldByName('Ticket').AsInteger:=Tipovalor.Ticket;
    cdsAnticipoDetalleMoneda.FieldByName('ClienteId').AsInteger:=Tipovalor.ClienteID;
    cdsAnticipoDetalleMoneda.FieldByName('TipovalorId').AsInteger:=TipoValor.TipoValorID;
  end
  else
  begin
      //ShowMessage('Has Presionado No');
      AgregarRegistro:=False;
      ConvierteADolar:=False;
  end;

end;

procedure TfrmMovimientos.cdsAnticipoDetalleMonedaBeforePost(
  DataTable: TDADataTable);
var
  Fecha:Datetime;
begin
  inherited;
  IF ConvierteADolar=True then
  begin
    cdsAnticipoDetalleMoneda.FieldByName('Importe').AsFloat:=cdsAnticipoDetalleMoneda.FieldByName('Importe').asFloat *  DM.Servidor.ObtenerTipoCambioPorEstacion(Estacion);
    cdsAnticipoDetalleMoneda.FieldByName('TipoCambioID').asinteger:=DM.Servidor.ObtenerTipoCambioIDPorEstacion(Estacion);
  end;

 // if RequiereCupon then
 //  cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('CuponID').AsString);

  cdsAnticipoDetalleMoneda.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipoDetalleMoneda.FieldByName('Fecha').AsDateTime);
  cdsAnticipoDetalleMoneda.FieldByName('AnticipoDetalleID').AsInteger:=DM.Servidor.Folio('AnticipoDetalleID', '');
  cdsAnticipoDetalleMoneda.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipoDetalleMoneda.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipoDetalleMoneda.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipoDetalleMoneda.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipoDetalleMoneda.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetallemoneda.FieldByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleMoneda.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleMoneda.FieldByName('DespachadorID').AsInteger:=Despachador;
  cdsAnticipoDetalleMoneda.FieldByName('TipoAnticipo').AsInteger:=1;

  If AgregarRegistro=True then
    cdsAnticipoDetalleMoneda.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;


  if (RequiereCliente1(cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleMoneda.FieldByName('ClienteID').IsNull ) then
    raise TEx.Create('Capture Cliente')
  else
    if (RequiereBanco1(cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleMoneda.FieldByName('BancoID').IsNull ) then
      raise TEx.Create('Capture Banco')
    else
    if (RequiereTicket1(cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger)) and  (cdsAnticipoDetalleMoneda.FieldByName('Ticket').IsNull)  then
      raise TEx.Create('Capture Ticket')
    else
      if (RequiereCupon1(cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleMoneda.FieldByName('CuponID').IsNull) then
        raise TEx.Create('Capture Cup�n')
      else
        if (RequiereReferencia1(cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleMoneda.FieldByName('Referencia').IsNull) then
          raise TEx.Create('Capture Referencia');
  if (cdsAnticipoDetalleMoneda.FieldByName('Importe').AsFloat = 0) then
    raise TEx.Create('Importe no v�lido');

end;

procedure TfrmMovimientos.cdsAnticipoDetalleOtrosAfterPost(
  DataTable: TDADataTable);
var
  buttonSelected:Integer;
begin
  inherited;
  if Agrupar then
  begin
    TipoValorID_Grupo:=cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger;
    ClienteID_Grupo:=cdsAnticipoDetalleOtros.FieldByName('ClienteID').AsInteger;
    Ticket_Grupo:=cdsAnticipoDetalleOtros.FieldByName('Ticket').AsInteger;
    //Importe_Grupo:=500;
    Suma_Grupo:=Suma_Grupo + cdsAnticipoDetalleOtros.FieldByName('Importe').AsFloat;
    if Suma_Grupo = Importe_Grupo then
      OtrosTipoValorId.Options.Focusing:=True;
  end;
  if Agrupar then
  begin
    if Suma_Grupo < Importe_Grupo then
    begin
      cdsAnticipoDetalleOtros.Append;
      cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger:=TipoValorID_Grupo;
      cdsAnticipoDetalleOtros.FieldByName('ClienteID').AsInteger:=ClienteID_Grupo;
      cdsAnticipoDetalleOtros.FieldByName('Ticket').AsInteger:=Ticket_Grupo;
      OtrosTipoValorId.Options.Focusing:=False;
      OtrosTicket.Options.Focusing:=False;
      OtrosReferencia.Options.Focusing:=False;
    end
    else
    begin
      Agrupar:=False;
      OtrosTipoValorId.Options.Focusing:=True;
      Suma_Grupo:=0;
    end;
  end;


  buttonSelected := MessageDlg('Deseas Agregar registro del mismo Tipo',mtConfirmation,[ mbNo,mbOK], 0);
  //buttonSelected:=mrOk;
  if buttonSelected=mrOk then
  begin
    AgregarRegistro:=True;
    TipoValor.TipoValorID:=cdsAnticipoDetalleOtros.FieldByName('TipoValorId').AsInteger;
    TipoValor.Ticket:=cdsAnticipoDetalleOtros.FieldByName('Ticket').AsInteger;
    TipoValor.CuponID:=cdsAnticipoDetalleOtros.FieldByName('CuponID').AsInteger;
    TipoValor.BancoID:=cdsAnticipoDetalleOtros.FieldByName('BancoID').AsInteger;
    TipoValor.SalidaID:=cdsAnticipoDetalleOtros.FieldByName('SalidaID').AsInteger;
    TipoValor.Referencia:=cdsAnticipoDetalleOtros.FieldByName('Referencia').AsString;

    cdsAnticipoDetalleOtros.Append;
    cdsAnticipodetalleOtros.FieldByName('Referencia').AsString:=TipoValor.Referencia;
    cdsAnticipodetalleOtros.FieldByName('SalidaID').AsInteger:=Tipovalor.SalidaID;
    cdsAnticipoDetalleOtros.FieldByName('BancoID').AsInteger:=TipoValor.BancoID;
    cdsAnticipoDetalleOtros.FieldByName('CuponID').AsInteger:=TipoValor.CuponID;

    if TipoValor.Ticket>0 then
      cdsAnticipoDetalleOtros.FieldByName('Ticket').AsInteger:=Tipovalor.Ticket;
    cdsAnticipoDetalleOtros.FieldByName('ClienteId').AsInteger:=Tipovalor.ClienteID;
    cdsAnticipoDetalleOtros.FieldByName('TipovalorId').AsInteger:=TipoValor.TipoValorID;
  end
  else
  begin
      //ShowMessage('Has Presionado No');
      AgregarRegistro:=False;
  end;

end;

procedure TfrmMovimientos.cdsAnticipoDetalleOtrosBeforePost(
  DataTable: TDADataTable);
var
  Fecha:Datetime;
begin
  inherited;
 // if RequiereCupon then
 //  cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('CuponID').AsString);

  cdsAnticipoDetalleOtros.FieldByName('Fecha').AsDateTime:=now;
  Fecha:=Trunc(cdsAnticipoDetalleOtros.FieldByName('Fecha').AsDateTime);
  cdsAnticipoDetalleOtros.FieldByName('AnticipoDetalleID').AsInteger:=DM.Servidor.Folio('AnticipoDetalleID', '');
  cdsAnticipoDetalleOtros.FieldByName('Fecha').AsDateTime:=Fecha;
  cdsAnticipoDetalleOtros.FieldByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
  cdsAnticipoDetalleOtros.FieldByName('Periodo').AsString:=FormatDateTime('m', Fecha);
  cdsAnticipoDetalleOtros.FieldByName('Dia').AsString:=FormatDateTime('d', Fecha);
  cdsAnticipoDetalleOtros.FieldByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetalleOtros.FieldByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleOtros.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleOtros.FieldByName('DespachadorID').AsInteger:=Despachador;
  cdsAnticipoDetalleOtros.FieldByName('TipoAnticipo').AsInteger:=4;


  If AgregarRegistro=True then
    cdsAnticipoDetalleOtros.FieldByName('ClienteId').AsInteger:=TipoValor.ClienteID;


  if (RequiereCliente1(cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleOtros.FieldByName('ClienteID').IsNull ) then
    raise TEx.Create('Capture Cliente')
  else
    if (RequiereBanco1(cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleOtros.FieldByName('BancoID').IsNull ) then
      raise TEx.Create('Capture Banco')
    else
    if (RequiereTicket1(cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger)) and  (cdsAnticipoDetalleOtros.FieldByName('Ticket').IsNull)  then
      raise TEx.Create('Capture Ticket')
    else
      if (RequiereCupon1(cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleOtros.FieldByName('CuponID').IsNull) then
        raise TEx.Create('Capture Cup�n')
      else
        if (RequiereReferencia1(cdsAnticipoDetalleOtros.FieldByName('TipoValorID').AsInteger)) and (cdsAnticipoDetalleOtros.FieldByName('Referencia').IsNull) then
          raise TEx.Create('Capture Referencia');
  if (cdsAnticipoDetalleOtros.FieldByName('Importe').AsFloat = 0) then
    raise TEx.Create('Importe no v�lido');
end;


procedure TfrmMovimientos.cdsAnticipoNewRecord(DataTable: TDADataTable);
begin
  inherited;
  dbgAnticipos.SetFocus;
end;


procedure TfrmMovimientos.ClientesTicketPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
  MensajeError:='Capture Ticket';
  if DisplayValue > 0 then
  begin
    if not StatusTicket(DisplayValue,MensajeError) then
    begin
      Error:=True;
      ErrorText:=MensajeError;
      DisplayValue:='0';
    end
    else
    begin
       DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
       cdsAnticipoDetalleClientes.FieldByName('Importe').AsFloat:=DM.ATicket.Importe;
       ClientesImporte.Options.Focusing:=False;
       Importe_Grupo:=DM.ATicket.Importe;
       cdsAnticipoDetalleClientes.FieldByName('Ticket').AsString:=DisplayValue;
    end;
  end
  else
  begin
    showMessage('Debes de Capturar un Ticket');
    Error:=True;
  end;

end;

procedure TfrmMovimientos.ClientesTipoValorIDPropertiesEditValueChanged(
  Sender: TObject);
var
  I: Integer;
begin
  inherited;
   ConvierteADolar:=False;
  {dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Ticket.Options.Focusing:=false;
  dbgAnticipoDetalleDBTableView1CuponID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1BancoID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1SalidaID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Referencia.Options.Focusing:=False;
   } //Inhabilitamos las demas columnnas para solo activar las que deban ser seleccionadas
  ClientesClienteID.Options.Focusing:=False;
  ClientesNombre.Options.Focusing:=False;
  ClientesTicket.Options.Focusing:=False;
  ClientesReferencia.Options.Focusing:=False;

  I:=cdsAnticipoDetalleClientes.FieldByName('TipoValorID').AsInteger;
  cdsTipoValorSeleccionado.ParamByName('TipoValorID').AsInteger:=I;
  cdsTipoValorSeleccionado.Open;

  //Verificamos si el tipo de valor nos pide una referencia;
  if cdsTipoValorSeleccionado.FieldByName('Referencia').AsInteger=-1 then
    ClientesReferencia.Options.Focusing:=True
  else
    tipovalor.Referencia:='';

  if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    ClientesClienteId.Options.Focusing:=True;
   {
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    }
  end
  else
  begin
      IF ClientesClienteID.EditValue>=0 then
      ClientesClienteID.EditValue:=0;
  end;
  IF cdsTipoValorSeleccionado.FieldByName('Ticket').AsInteger=-1 then
    ClientesTicket.Options.Focusing:=True
  else
      IF Clientesticket.EditValue>=0 then
      ClientesTicket.EditValue:=0;

    ClientesImporte.Options.Focusing:=true;

  cdsTipoValorSeleccionado.Close;
  cdsAnticipoDetalleClientes.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleClientes.FieldByName('DespachadorID').AsInteger:=Despachador;

end;

procedure TfrmMovimientos.ConsumirCupon;
var
  Ejercicio:Integer;
  Periodo:Integer;
  Dia:Integer;
  Cupon:String;
  Fecha:DateTime;
begin
  Fecha:=DM.Servidor.Fecha;
  Ejercicio:=strtoint(FormatDateTime('yyyy',Fecha));
  Periodo:=strtoint(FormatDateTime('mm',Fecha));
  Dia:=strtoint(FormatDateTime('dd',Fecha));
  cdsAnticipoDetalleCupones.First;
  while not cdsAnticipoDetalleCupones.EOF do
  begin
    if RequiereCupon1(cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger) then
    begin
      Cupon:=cdsAnticipoDetalleCupones.FieldByName('CuponID').AsString;
      DM.Servidor.ActualizaCupon(Cupon,Dia,Ejercicio,Fecha,Periodo,Secuencia, cdsAnticipoDetalleCupones.FieldByName('Ticket').AsInteger,0);
    end;
    cdsAnticipoDetalleCupones.Next;
  end;

end;

procedure TfrmMovimientos.CuponCuponIdPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
    MensajeError:='Capture Cup�n';
  if not StatusCupon(DisplayValue, MensajeError) then
  begin
    Error:=True;
    ErrorText:=MensajeError;
    DisplayValue:=0;
  end
  else
  begin
    cdsAnticipoDetalleCupones.FieldByName('Importe').AsFloat:=cdsCupon.FieldByName('Importe').AsFloat;
    cdsAnticipoDetalleCupones.FieldByName('ClienteID').AsInteger:=cdsCupon.FieldByName('ClienteID').AsInteger;

    cdsAnticipoDetalleCupones.FieldByName('CuponID').AsString:=DisplayValue;
    CuponImporte.Options.Focusing:=False;
  end;
end;

procedure TfrmMovimientos.CuponTicketPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
  MensajeError:='Capture Ticket';
  if DisplayValue > 0 then
  begin
    if not StatusTicket(DisplayValue,MensajeError) then
    begin

      if MensajeError='Ticket Existe En La Lista' then
      begin
        DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
       //cdsAnticipoDetalleCupones.FieldByName('Importe').AsFloat:=DM.ATicket.Importe;
       CuponImporte.Options.Focusing:=False;
       Importe_Grupo:=DM.ATicket.Importe;
       cdsAnticipoDetalleCupones.FieldByName('Ticket').AsString:=DisplayValue;
      end
      else
      begin
        Error:=True;
        ErrorText:=MensajeError;
        DisplayValue:='0';
      end;
    end
    else
    begin
       DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
       //cdsAnticipoDetalleCupones.FieldByName('Importe').AsFloat:=DM.ATicket.Importe;
       CuponImporte.Options.Focusing:=False;
       Importe_Grupo:=DM.ATicket.Importe;
       cdsAnticipoDetalleCupones.FieldByName('Ticket').AsString:=DisplayValue;
    end;
  end
  else
  begin
    showMessage('Debes de Capturar un Ticket');
    Error:=True;
  end;

end;

procedure TfrmMovimientos.CuponTipoValorIdPropertiesEditValueChanged(
  Sender: TObject);
var
  I: Integer;
begin
  inherited;
  ConvierteADolar:=False;
 //     CuponTipoValorId.Options.Focusing:=False;
 // CuponClienteID.Options.Focusing:=False;
 // CuponCuponID.Options.Focusing:=False;
 // CuponReferencia.Options.Focusing:=False;
  //Inhabilitamos las demas columnnas para solo activar las que deban ser seleccionadas
  cuponClienteID.Options.Focusing:=False;
  CuponNombre.Options.Focusing:=False;
  CuponTicket.Options.Focusing:=False;
  CuponReferencia.Options.Focusing:=False;


  cdsAnticipoDetalleCupones.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleCupones.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleCupones.FieldByName('DespachadorID').AsInteger:=Despachador;
  I:=cdsAnticipoDetalleCupones.FieldByName('TipoValorID').AsInteger;
  cdsTipoValorSeleccionado.ParamByName('TipoValorID').AsInteger:=I;
  cdsTipoValorSeleccionado.Open;

  //Verificamos si el tipo de valor nos pide una referencia;
  if cdsTipoValorSeleccionado.FieldByName('Referencia').AsInteger=-1 then
    CuponReferencia.Options.Focusing:=True
  else
    tipovalor.Referencia:='';

  //if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  //begin

    //dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=True;
  //end;
    IF cdsTipoValorSeleccionado.FieldByName('Ticket').AsInteger=-1 then
      CuponTicket.Options.Focusing:=True;

    CuponImporte.Options.Focusing:=True;
  if cdsTipoValorSeleccionado.FieldByName('Cupon').AsInteger=-1 then
    CuponCuponId.Options.Focusing:=True;

   cdsTipoValorSeleccionado.Close;


end;

procedure TfrmMovimientos.cxGridDBTableView3EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if KEY=VK_F2 then
  Begin
    cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger:=TipoValor.ClienteID;
    BuscarCliente1;
    begin
    cdsAnticipoDetalleClientes.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    TipoValor.ClienteID:=FrmBuscarCliente.Clave;
    cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger:=FrmBuscarCliente.Clave;
  End;
end;

procedure TfrmMovimientos.cxGridDBTableView3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F6 then
  begin
    if (RequiereTicket) and (not RequiereCupon)  then
    begin
      Agrupar:=true;
      ClientesImporte.Options.Focusing:=True;
    end;
  end;


  if KEY=VK_F2 then
  Begin
    cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger:=TipoValor.ClienteID;
    BuscarCliente1;
    begin
    cdsAnticipoDetalleClientes.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    TipoValor.ClienteID:=FrmBuscarCliente.Clave;
    cdsAnticipoDetalleClientes.FieldByName('ClienteID').AsInteger:=FrmBuscarCliente.Clave;
  End;
end;

procedure TfrmMovimientos.dbAgrupacionExit(Sender: TObject);
var
  NoBomba:Integer;
begin
  inherited;
  //Secuencia:=DM.ServidorEstacion(Estacion).SecuenciaBomba(1);

  //Secuencia:=2;  //Mandar Llamar La secuencia Actual de la Agrupacion;

  cdsAnticipoDetalle.FieldByName('AgrupacionID').AsInteger:=cdsAgrupacion2.FieldByName('AgrupacionID').AsInteger;
  Agrupacion:=cdsAnticipoDetalle.FieldByName('AgrupacionID').AsInteger;

  cdsNoBombaPorAgrupacion.Close;
  cdsNoBombaPorAgrupacion.ParamByName('AgrupacionId').AsInteger:=Agrupacion;
  cdsNoBombaPorAgrupacion.Open;
  NoBomba:=cdsNoBombaPorAgrupacion.FieldByName('NoBomba').AsInteger;

 // Secuencia:=DM.ServidorEstacion(Estacion).SecuenciaBomba(intToStr(NoBomba));
  Secuencia:=DM.ServidorEstacion(Estacion).SecuenciaBomba(NoBomba);
  lblNocorte.Caption:=lblNoCorte.Caption + ' ' + inttostr(Secuencia);


  dbDespachador.Enabled:=True;
  dbDespachador.SetFocus;

  cdsAnticipoDetalle.Close;
  cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
  cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDEtalle.ParamByName('AgrupacionId').AsInteger:=Agrupacion;
  cdsAnticipoDetalle.ParamByName('Tipoanticipo').AsInteger:=0;
  cdsAnticipoDetalle.Open;


  cdsAnticipoDetalleOtros.Close;
  cdsAnticipoDetalleOtros.ParamByName('EstacionId').AsInteger:=Estacion;
  cdsAnticipoDetalleOtros.ParamByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleOtros.ParamByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleOtros.ParamByName('TipoAnticipo').AsInteger:=4;
  cdsAnticipoDetalleOtros.Open;

  cdsAnticipoDetalleCupones.Close;
  cdsAnticipoDetalleCupones.ParamByName('EstacionId').AsInteger:=Estacion;
  cdsAnticipoDetalleCupones.ParamByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleCupones.ParamByName('AgrupacionId').AsInteger:=Agrupacion;
  cdsAnticipoDetalleCupones.ParamByName('TipoAnticipo').AsInteger:=3;
  cdsAnticipoDetalleCupones.Open;

  cdsAnticipoDetalleClientes.Close;
  cdsAnticipoDetalleClientes.ParamByName('EstacionID').AsInteger:=Estacion;
  cdsAnticipoDetalleClientes.ParamByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleClientes.ParamByName('AgrupacionId').AsInteger:=Agrupacion;
  cdsAnticipoDetalleClientes.ParamByName('TipoAnticipo').AsInteger:=2;
  cdsAnticipoDetalleClientes.Open;

  cdsAnticipoDetalleMoneda.Close;
  cdsAnticipoDetalleMoneda.ParamByName('EstacionId').AsInteger:=Estacion;
  cdsAnticipoDetalleMoneda.ParamByName('Secuencia').AsInteger:=Secuencia;
  cdsAnticipoDetalleMoneda.ParamByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleMoneda.ParamByName('TipoAnticipo').AsInteger:=1;
  cdsAnticipoDetalleMoneda.Open;

 // dbAgrupacion.Properties.ListFieldNames:=cdsAgrupacion.FieldByName('Nombre').AsString;
 // dbAgrupacion.Text:=cdsAgrupacion.FieldByName('Nombre').AsString;



  cdsAnticipoDetalle.First;
  While not cdsAnticipoDetalle.EOF do
  begin
    If cdsAnticipoDetalle.FieldByName('CuponID').AsString<>'' then
    begin
      cbxListaCupon.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('CuponID').AsString);
    end;
    If cdsAnticipoDetalle.FieldByName('Ticket').AsString<>'' then
    begin
      cbxListaTicket.Properties.Items.Add(cdsAnticipoDetalle.FieldByName('Ticket').AsString);
    end;
    cdsAnticipoDetalle.Next;
  end;
   dbAgrupacion.Enabled:=False;


end;

procedure TfrmMovimientos.dbDespachadorExit(Sender: TObject);
begin
  inherited;
  Despachador:=cdsAnticipoDetalle.FieldByName('DespachadorID').AsInteger;
  dbgAnticipoDetalle.Enabled:=True;
 // dbAgrupacion.Enabled:=False;
  dbDespachador.Enabled:=False;
  AgregarRegistro:= False;

  GridOtros.Enabled:=True;
  GridCupones.Enabled:=True;
  GridClientes.Enabled:=True;
  GridMoneda.Enabled:=True;
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1CuponIDPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
    MensajeError:='Capture Cup�n';
  if not StatusCupon(DisplayValue, MensajeError) then
  begin
    Error:=True;
    ErrorText:=MensajeError;
    DisplayValue:=0;
  end
  else
  begin
    cdsAnticipoDetalle.FieldByName('CuponID').AsString:=DisplayValue;
    dbgAnticipoDetalleDBTableView1Importe.Options.Focusing:=False;

  end;
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F6 then
  begin
    if (RequiereTicket) and (not RequiereCupon)  then
    begin
      Agrupar:=true;
      //Importe_Grupo:=500;
    end;
  end;
  if Key = VK_F2 then
  begin
      BuscarCliente;
  end;
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1ImportePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  if Agrupar then
  begin
    if Suma_Grupo + DisplayValue > Importe_Grupo then
    begin
      Error:=True;
      ErrorText:='Importe Excede Total de Ticket';
      DisplayValue:=0;
    end
    else
      cdsAnticipoDetalle.FieldByName('Importe').AsFloat:=DisplayValue;
  end;
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F6 then
  begin
    if (RequiereTicket) and (not RequiereCupon) then
    begin
      Agrupar:=true;
      //Importe_Grupo:=500;
    end;
  end;
  {if Key = VK_F2 then
  begin
      BuscarCliente;
  end;}

    if KEY=VK_F2 then
  Begin
    BuscarCliente1;
    begin
    cdsAnticipoDetalleMoneda.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    TipoValor.ClienteID:=FrmBuscarCliente.Clave;
    cdsAnticipoDetalleMoneda.FieldByName('ClienteID').AsInteger:=FrmBuscarCliente.Clave;
  End;
end;

function TFrmMovimientos.RequiereReferencia: boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Referencia').AsBoolean
  else
    Result:=False;
end;


function TfrmMovimientos.RequiereReferencia1(Valor: Integer): Boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',Valor,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Referencia').AsBoolean
  else
    Result:=False;

end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1TicketPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
  MensajeError:='Capture Ticket';
  if DisplayValue > 0 then
  begin


    if not StatusTicket(DisplayValue,MensajeError) then
    begin
      Error:=True;

        ErrorText:=MensajeError;
        DisplayValue:='0';

      //dbgAnticipoDetalleDBTableView1Importe:=DM.ATicket.Improte;
    end
    else
    begin
       DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
       cdsAnticipoDetalleMoneda.FieldByName('IMporte').AsFloat:=DM.ATicket.Importe;
       MonedaImporte.Options.Focusing:=False;

       //cdsAnticipoDetalle.FieldByName('Importe').AsFloat:=DM.ATicket.Importe;
       //dbgAnticipoDetalleDBTableView1Importe.Options.Focusing:=False;

       Importe_Grupo:=DM.ATicket.Importe;
       cdsAnticipoDetalleMoneda.FieldByName('Ticket').AsString:=DisplayValue;
       //cdsAnticipoDetalle.FieldByName('Ticket').AsString:=DisplayValue;

    end;
  end
  else
  begin
    showMessage('Debes de Capturar un Ticket');
    //DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
    Error:=True;
  end;

end;



procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesChange(
  Sender: TObject);
begin
  inherited;
{      if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    //dbgAnticiposDBTableView1ClienteID.Options.Focusing:=True;
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;

  end;    }

end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesEditValueChanged(
  Sender: TObject);
var
  I: Integer;
begin
  inherited;
  dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Ticket.Options.Focusing:=false;
  dbgAnticipoDetalleDBTableView1CuponID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1BancoID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1SalidaID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Referencia.Options.Focusing:=False;
    //Inhabilitamos las demas columnnas para solo activar las que deban ser seleccionadas
  I:=cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger;
  cdsTipoValorSeleccionado.ParamByName('TipoValorID').AsInteger:=I;
  cdsTipoValorSeleccionado.Open;

  //Verificamos si el tipo de valor nos pide una referencia;
  if cdsTipoValorSeleccionado.FieldByName('Referencia').AsInteger=-1 then
    dbgAnticipoDetalleDBTableView1Referencia.Options.Focusing:=True
  else
    tipovalor.Referencia:='';

  if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    //dbgAnticiposDBTableView1ClienteID.Options.Focusing:=True;
    dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=True;
   {
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    }
  end;
  //else
    // tipovalor.ClienteID:=Null;

    if cdsTipoValorSeleccionado.FieldByName('Banco').AsInteger=-1 then
    dbgAnticipoDetalleDBTableView1BancoID.Options.Focusing:=true;
  IF cdsTipoValorSeleccionado.FieldByName('Ticket').AsInteger=-1 then
    dbgAnticipoDetalleDBTableView1Ticket.Options.Focusing:=True;

  dbgAnticipoDetalleDBTableView1Importe.Options.Focusing:=true;
  if cdsTipoValorSeleccionado.FieldByName('Cupon').AsInteger=-1 then
    dbgAnticipoDetalleDBTableView1CuponID.Options.Focusing:=True;

  if cdsTipoValorSeleccionado.FieldByName('ConsumoInterno').AsInteger=-1 then
    dbgAnticipoDetalleDBTableView1SalidaID.Options.Focusing:=true;
//    dbgAnticipoDetalleDBTableView1Cupon.Options.Focusing:=True;
 // if cdsTipoValorSeleccionado.FieldByName('Cupon').AsInteger:=-1 then
 //   dbgAnticiposDBTableView1Cupon.Options.Focusing:=True;
  cdsTipoValorSeleccionado.Close;
  cdsAnticipoDetalle.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalle.FieldByName('DespachadorID').AsInteger:=Despachador;
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesPopup(
  Sender: TObject);
begin
  inherited;
{  if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    //dbgAnticiposDBTableView1ClienteID.Options.Focusing:=True;
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;

  end;}
end;

procedure TfrmMovimientos.dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin
  inherited;
  { if DisplayValue <>'' then
   begin
      ShowMessage(DisplayValue);

   end;
     if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    //dbgAnticiposDBTableView1ClienteID.Options.Focusing:=True;
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;

  end; }
end;

procedure TfrmMovimientos.dsAnticipoStateChange(Sender: TObject);
begin
  inherited;
  UpdateActionsState;
end;


procedure TfrmMovimientos.dsCartevaValeCreditoStateChange(Sender: TObject);
begin
  inherited;
   UpdateActionsState;
end;

procedure TfrmMovimientos.ActionEliminar(Action: TBasicAction);
begin
  if TipoAnticipo='G' then
  begin
    cdsAnticipo.Delete;
    cdsAnticipo.ApplyUpdates;
  end
  else
  begin
     cdsAnticipoDetalle.Delete;
     cdsAnticipoDetalle.ApplyUpdates;
  end;
end;

procedure TfrmMovimientos.ActionBuscar(Action: TBasicAction);
begin
   BuscarCliente;
end;

procedure TfrmMovimientos.BuscarCliente;
begin
   frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    TipoValor.ClienteID:=FrmBuscarCliente.Clave;
    cdsAnticipoDetalle.FieldByName('ClienteID').AsInteger:=FrmBuscarCliente.Clave;
end;



procedure TfrmMovimientos.BuscarCliente1;
begin
  frmBuscarcliente:=TfrmBuscarCliente.Create(Self);
  frmBuscarCliente.ShowModal;
end;

procedure TfrmMovimientos.ActionCancelar(Action: TBasicAction);
begin
  If TipoAnticipo='G' then
  begin
    cdsAnticipo.Cancel;
  end
  else
  begin
    cdsAnticipoDetalle.Cancel;
    dbAgrupacion.Enabled:=False;
    dbDespachador.Enabled:=False;
    dbgAnticipoDetalle.Enabled:=False;
    cdsAnticipoDetalle.Close;
    cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
    cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=0;
    cdsAnticipoDetalle.Open;
  end;
end;

procedure TfrmMovimientos.FormCreate(Sender: TObject);
var
  Fecha:TDateTime;
begin
  inherited;
  //Secuencia:=1;
  Estacion:=StrToInt(UtileriasComun.LeerRegistro('Estacion','4120'));

  TipoAnticipo:=utileriasComun.LeerRegistro('TipoAnticipo','D');
  If TipoAnticipo='G' then    //Mostrar Anticipos Globales
  begin
    grpAnticiposGlobales.Visible:=True;
    grpDatos.Visible:=False;
    grpAnticipoDetallado.Visible:=False;

  //PARAMETROS PARA ANTICIPO
    Fecha:=DM.Servidor.Fecha;
    cdsAnticipo.ParamByName('Dia').AsString:=FormatDateTime('d', Fecha);
    cdsAnticipo.ParamByName('Periodo').AsString:=FormatDateTime('m', Fecha);
    cdsAnticipo.ParamByName('Ejercicio').AsString:=FormatDateTime('yyyy', Fecha);
    cdsAnticipo.ParamByName('EstacionID').AsInteger:=Estacion;
    cdsAnticipo.Open;
  end
  else
  begin        //'En el RegEdit Debe Estar una D para Detallado'
    grpDatos.Visible:=True;
    grpAnticipoDetallado.Visible:=True; //Mostrar Anticipos Detallados
    grpAnticiposGlobales.Visible:=False;
    cdsAnticipoDetalle.Close;
    cdsAnticipoDetalle.ParamByName('EstacionId').AsInteger:=Estacion;
    cdsAnticipoDetalle.ParamByName('Secuencia').AsInteger:=Secuencia;
    cdsAnticipoDetalle.Open;
    cdsbanco.Open;
    cdsSalida.Open;
    cdsCupon.Open;
  end;
  cdsTipoValorOtros.Open;
  cdsTipoValorCupones.Open;
  cdsTipoValorClientes.Open;
  cdsTipoValorMoneda.Open;
  cdsCliente.Open;
  cdsTipoValor.Open;
  cdsEstacion.Open;
  //PARAMETRO PARA DESPACHADOR POR ESTACION
  cdsDespachador.ParamByName('EstacionID').AsInteger:=Estacion;
  cdsDespachador.Open;
  //PARAMETRO PARA AGRUPACION POR ESTACION
  cdsAgrupacion.ParamByName('EstacionID').AsInteger:=Estacion;
  cdsAgrupacion.Open;
end;

procedure TfrmMovimientos.Imprimir(const secuencia: Integer;const Estacion:Integer;const Agrupacion:Integer);
var
  Aux: TReporte;
begin
  Aux:=DM.Servidor.BuscaReporte('ANTICIPO', 1);
  try
    DM.Parametros.SecuenciaIni:=secuencia;
    DM.Parametros.Estacion:=Estacion;
    DM.Parametros.Agrupacion:=Agrupacion;
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);
  finally
    Aux.Free;
  end;
end;

procedure TfrmMovimientos.MonedaTipoValorPropertiesEditValueChanged(
  Sender: TObject);
var
  I: Integer;
begin
  inherited;
  ConvierteADolar:=False;
  {dbgAnticipoDetalleDBTableView1ClienteID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Ticket.Options.Focusing:=false;
  dbgAnticipoDetalleDBTableView1CuponID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1BancoID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1SalidaID.Options.Focusing:=False;
  dbgAnticipoDetalleDBTableView1Referencia.Options.Focusing:=False;
   } //Inhabilitamos las demas columnnas para solo activar las que deban ser seleccionadas
   MonedaClienteID.Options.Focusing:=False;
   MonedaNombreCliente.Options.Focusing:=False;
   MonedaTicket.Options.Focusing:=False;
   MonedaBanco.Options.Focusing:=False;
   MonedaReferencia.Options.Focusing:=False;

  I:=cdsAnticipoDetalleMoneda.FieldByName('TipoValorID').AsInteger;
  cdsTipoValorSeleccionado.ParamByName('TipoValorID').AsInteger:=I;
  cdsTipoValorSeleccionado.Open;

  //Verificamos si el tipo de valor nos pide una referencia;
  If cdsTipoValorSeleccionado.FieldByName('TipoCambio').asinteger=-1 then
  Begin
    ConvierteADolar:=true;
  End
  else
     ConvierteADolar:=False;


  if cdsTipoValorSeleccionado.FieldByName('Referencia').AsInteger=-1 then
    MonedaReferencia.Options.Focusing:=True
  else
    MonedaReferencia.EditValue:='';

  if cdsTipoValorSeleccionado.FieldByName('Cliente').AsInteger=-1 then
  begin
    MonedaClienteID.Options.Focusing:=True;

   {
    frmBuscarCliente:=TfrmBuscarCliente.Create(Self);
    frmBuscarCliente.ShowModal;
    begin
      cdsAnticipoDetalle.FieldByName('clienteID').AsInteger:=FrmBuscarCliente.Clave;
    end;
    }
  end
  else
  Begin
    IF MonedaClienteID.EditValue>=0 then
      MonedaClienteID.EditValue:=0;
  End;

  //else
    // tipovalor.ClienteID:=Null;
  IF cdsTipoValorSeleccionado.FieldByName('Ticket').AsInteger=-1 then
    MonedaTicket.Options.Focusing:=True
  else
  Begin
    If (MonedaTicket.EditValue>0) then
      MonedaTicket.EditValue:=0;
  End;

  If cdsTipoValorSeleccionado.FieldByName('Banco').AsInteger=-1 then
     MonedaBanco.Options.Focusing:=True
  else
  Begin
    if MonedaBanco.EditValue>0 then
      MonedaBanco.EditValue:=0;
  End;

    MonedaImporte.Options.Focusing:=True;

  cdsTipoValorSeleccionado.Close;
  cdsAnticipoDetalleMoneda.FieldByName('AgrupacionID').AsInteger:=Agrupacion;
  cdsAnticipoDetalleMoneda.FieldByName('DespachadorID').AsInteger:=Despachador;

end;

procedure TfrmMovimientos.OtrosTicketPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  MensajeError:String;
begin
  inherited;
  MensajeError:='Capture Ticket';
  if DisplayValue > 0 then
  begin
    if not StatusTicket(DisplayValue,MensajeError) then
    begin
      Error:=True;
      ErrorText:=MensajeError;
      DisplayValue:='0';
    end
    else
    begin
       DM.ATicket:=DM.ObtenerTicket(Estacion, DisplayValue);
       cdsAnticipoDetalleOtros.FieldByName('Importe').AsFloat:=DM.ATicket.Importe;
       OtrosImporte.Options.Focusing:=False;
       Importe_Grupo:=DM.ATicket.Importe;
       cdsAnticipoDetalleOtros.FieldByName('Ticket').AsString:=DisplayValue;
    end;
  end
  else
  begin
    showMessage('Debes de Capturar un Ticket');
    Error:=True;
  end;

end;

procedure TfrmMovimientos.RegisterActions;
begin
  inherited RegisterActions;
  RegisterAction(AppActions.actNuevo, ActionNuevo);
  RegisterAction(AppActions.actGuardar, ActionGuardar);
  RegisterAction(AppActions.actCancelar, ActionCancelar);
  RegisterAction(AppActions.actEliminar, ActionEliminar);
  RegisterAction(AppActions.actBuscar, ActionBuscar);
end;

function TFrmMovimientos.ExisteCuponEnLista(Valor: String): Boolean;
begin
  Result:=cbxListaCupon.Properties.Items.IndexOf(Valor)>-1;
end;

function TfrmMovimientos.StatusCupon(Valor: string;
  var Mensaje: String): boolean;
var
  Status:string;
begin
  Status:=Dm.Servidor.ObtenerStatusCupon(Valor);
  If ExisteCuponEnLista(Valor) then
  Begin
    Mensaje:='Cup�n Ya Existe En la Lista';
    Result:=False;
  End
  else
  begin
    if Status='A' then
    Begin
      cdsCupon.Close;
      cdsCupon.ParamByName('Barras').AsString:=Valor;
      cdsCupon.Open;
    //Actualizamos los datos del cupon
    //DM.Servidor.ActualizaCupon(Valor,Dia,Ejercicio,Fecha,Periodo,Secuencia, cdsLiquidacionDetalle.FieldByName('Ticket').AsInteger);


   //   cdsAnticipoDetalle.FieldByName('Importe').AsFloat:=cdsCupon.FieldByName('Importe').AsFloat;
   //   cdsAnticipoDetalle.FieldByName('ClienteID').AsInteger:=cdsCupon.FieldByName('ClienteID').AsInteger;
      Result:=True
    end
    else
    Begin
      if status='C' then
      Begin
        Mensaje:='Cup�n Consumido';
        Result:=False;
      End
      else
      Begin
        If Status='X' then
        Begin
          Mensaje:='Cupon Cancelado';
           Result:=False;
        End
        else
        Begin
           Mensaje:='Cup�n No Encontrado';
           Result:=False;
         End;
       End;
     End;
  End;

end;


function TFrmMovimientos.StatusTicket(Valor:String;var Mensaje:String):boolean;
var
  EstacionID : integer;
  TicketID   : String;
begin
  EstacionID:=Estacion;//cdsFactura.FieldByName('EstacionID').AsInteger;
  TicketID:=Valor;
  case DM.Servidor.StatusTicket(EstacionID, StrToInt(TicketID)) of
    1:begin
        //Mensaje:='Ticket utilizado';  es para saber si el ticket ya esta fatcurado
        //Result:=False;
        Result:=True
    end;
   2:if ExisteTicketEnLista(TicketID) then
    begin
      Mensaje:='Ticket Existe En La Lista';
      Result:=False;
    end
    else
      Result:=True;
    3:begin
        Mensaje:='Ticket No Existe';
        Result:=False;
    end;
    4:begin
        Mensaje:='Ticket Existe En Liquidaci�n';
        Result:=False;
    end;
    else
      Result:=False;
  end;
end;

function TFrmMovimientos.ExisteTicketEnLista(Valor: String): boolean;
begin
  Result:=cbxListaTicket.Properties.Items.IndexOf(Valor)>-1;
end;


function TFrmMovimientos.RequiereCupon: boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',cdsAnticipoDEtalle.FieldByName('TipoValorID').AsInteger,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Cupon').AsBoolean
  else
    Result:=False;
end;

 function TfrmMovimientos.RequiereCupon1(Valor: Integer): Boolean;
begin
   if (cdsTipoValor.Locate('TipoValorID',Valor,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Cupon').AsBoolean
  else
    Result:=False;
end;

function TFrmMovimientos.RequiereCliente: Boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Cliente').AsBoolean
  else
    Result:=False;
end;

function TfrmMovimientos.RequiereCliente1(Valor:Integer): Boolean;
begin
  If (cdsTipoValor.Locate('TipoValorId', Valor,[loCaseInsensitive])) then
     Result:=cdsTipoValor.FieldByName('Cliente').AsBoolean
  else
  Result:=False;
end;

function TFrmMovimientos.RequiereTicket: boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Ticket').AsBoolean
  else
    Result:=False;
end;

function TfrmMovimientos.RequiereTicket1(Valor: Integer): Boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',Valor,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Ticket').AsBoolean
  else
    Result:=False;
end;

function TFrmMovimientos.RequiereBanco: Boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',cdsAnticipoDetalle.FieldByName('TipoValorID').AsInteger,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Banco').AsBoolean
  else
    Result:=False;
end;

function TfrmMovimientos.RequiereBanco1(Valor: Integer): Boolean;
begin
  if (cdsTipoValor.Locate('TipoValorID',Valor,[loCaseInsensitive])) then
    Result:=cdsTipoValor.FieldByName('Banco').AsBoolean
  else
    Result:=False;

end;

procedure TfrmMovimientos.UpdateActionsState;
begin
  inherited;
  //Actions Para Anticipos Globales
  dmAppActions.actNuevo.Enabled:=cdsAnticipo.State = dsBrowse;
  dmAppActions.actGuardar.Enabled:=cdsAnticipo.State in dsEditModes;
  dmAppActions.actCancelar.Enabled:=cdsAnticipo.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsAnticipo.State = dsBrowse) and (cdsAnticipo.RecordCount > 0);

  //Actions Para Anticipos Detallados
  dmAppActions.actNuevo.Enabled:=cdsAnticipoDetalle.State=dsBrowse;
  dmAppActions.actGuardar.Enabled:=cdsAnticipoDetalle.State in dsEditModes;
  dmAppActions.actCancelar.Enabled:=CdsAnticipoDetalle.State in dsEditModes;
  dmAppActions.actEliminar.Enabled:=(cdsAnticipoDetalle.State=dsBrowse) and (cdsAnticipoDetalle.RecordCount > 0);
  dmAppActions.actBuscar.Enabled:=(cdsAnticipoDetalle.State=dsEdit) or (cdsAnticipoDetalle.State=dsInsert);
end;

initialization
  ModuleInfoManager.RegisterModule('Anticipos', TfrmMovimientos);

end.
