unit ufrmReportesCorte;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, Menus, cxLookAndFeelPainters, cxTextEdit, StdCtrls,
  cxButtons, cxLabel, cxContainer, cxEdit, cxGroupBox, cxGraphics,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  DB, uDADataTable, uDAScriptingProvider, uDACDSDataTable, cxControls, jpeg,
  cxImage, ComCtrls, cxListView, ImgList, dxSkinsCore, ufrmPantallaReportes,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, uDAMemDataTable;

type
  TfrmReportesCorte = class(TfrmPantallaReportes)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmReportesCorte: TfrmReportesCorte;

implementation
uses
  Modules, uDM;

{$R *.dfm}

procedure TfrmReportesCorte.FormCreate(Sender: TObject);
begin
  inherited;
   DespliegaReportes(1,'@'+inttostr(DM.EmpleadoID)+'@');
end;

initialization
  ModuleInfoManager.RegisterModule('Corte', TFrmReportesCorte);

end.
