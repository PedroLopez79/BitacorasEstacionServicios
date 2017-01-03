unit ufrmImprimirCupones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, StdCtrls;

type
  TfrmImprimirCupones = class(TfrmCustomModule)
    Label1: TLabel;
    TxtSerie: TEdit;
    Label2: TLabel;
    TxtFolio: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimirCupones: TfrmImprimirCupones;

implementation
uses
Modules,uDM,LibraryEmpresas_Intf;
{$R *.dfm}


procedure TfrmImprimirCupones.Button1Click(Sender: TObject);
var
  Aux: TReporte;
begin

  inherited;

  Aux:=TReporte.Create;
    try
    Aux:=DM.Servidor.BuscaReporte('IMPRIMIR CUPONES', 1);
    DM.Parametros.Serie:=Trim(TxtSerie.Text);
    DM.Parametros.FolioFactura:=StrToInt(TxtFolio.text);
    DM.Imprimir(Aux.SQL1, Aux.SQL2, Aux.Template, 'IMPRIMIENDO...', Aux.CampoJoin);


  finally
    Aux.Free;
end;
   end;
   procedure TfrmImprimirCupones.FormCreate(Sender: TObject);
begin
  inherited;
  TxtSerie.Text:='A';
  TxtFolio.Text:='0';
end;

initialization
  ModuleInfoManager.RegisterModule('Imprimir Cupones', TfrmImprimirCupones);
end.
