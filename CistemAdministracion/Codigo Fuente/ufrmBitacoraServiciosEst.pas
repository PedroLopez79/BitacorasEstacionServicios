unit ufrmBitacoraServiciosEst;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomModule, Vcl.ExtCtrls, dxSkinsCore,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinscxPCPainter,
  cxPCdxBarPopupMenu, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPC, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB, uDAFields,
  uDADataTable, uROComponent, uDAScriptingProvider, uDAMemDataTable;

type
  TfrmBitacoraServicioEst = class(TfrmCustomModule)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    cdsUsuario: TDAMemDataTable;
    dsUsuario: TDADataSource;
    Panel6: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBitacoraServicioEst: TfrmBitacoraServicioEst;

implementation

uses Modules, ufrmPrincipal, uDM;
var
  Bandera: Boolean;

{$R *.dfm}

procedure TfrmBitacoraServicioEst.Button1Click(Sender: TObject);
begin
  inherited;
  image1.Picture.Assign(nil);
end;

procedure TfrmBitacoraServicioEst.FormCreate(Sender: TObject);
var
  panelwidth:integer;
begin
  inherited;
  //TAMA�OS DE PANELS PARA CENTRAR//
  //panelwidth:= ROUND(Panel1.Width / 2);
  panelwidth:= (ROUND((ufrmPrincipal.frmPrincipal.pnlPrincipal.Width - Panel3.Width) / 2));
  Panel1.Width:= panelwidth;
  Panel2.Width:= panelwidth;
  //////////////////////////////////

  cdsUsuario.Close;
  cdsUsuario.Open;
  if cdsUsuario.Locate('IDEMPLEADO', DM.EmpleadoID, []) then
     Label2.Caption:= cdsUsuario.FieldByName('NOMBRE').AsString;

end;

procedure TfrmBitacoraServicioEst.Image1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Bandera:= True;
  image1.Canvas.MoveTo(X,Y);
end;

procedure TfrmBitacoraServicioEst.Image1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Bandera then
  begin
     image1.Canvas.pen.width := 3;
     image1.Canvas.LineTo(X,Y);
  end;
end;

procedure TfrmBitacoraServicioEst.Image1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Bandera:= False;
end;

initialization
  ModuleInfoManager.RegisterModule('BitacoraServicios', TfrmBitacoraServicioEst);

end.