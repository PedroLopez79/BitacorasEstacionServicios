unit uTraspasoEntreEstaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxLabel, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxContainer, cxGroupBox, cxPC, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinSilver, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxLookAndFeelPainters;

type
  TfrmTraspasoEntreEstaciones = class(TfrmCustomModule)
    Panel: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    GridTraspasoDatosDBTableView1: TcxGridDBTableView;
    GridTraspasoDatosLevel1: TcxGridLevel;
    GridTraspasoDatos: TcxGrid;
    LblTraspasoEstacionOrigen: TcxLabel;
    LblTraspasoEstacionDestino: TcxLabel;
    LblTraspasoFolio: TcxLabel;
    LblTraspasoTurno: TcxLabel;
    LblTraspasoFecha: TcxLabel;
    CmBoxTraspasoEstacionOrigen: TcxDBComboBox;
    CmBoxTraspasoEstacionDestino: TcxDBComboBox;
    CmboxTraspasoTurno: TcxDBComboBox;
    TxtTraspasoFolio: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    GridRecepcionDatosDBTableView1: TcxGridDBTableView;
    GridRecepcionDatosLevel1: TcxGridLevel;
    GridRecepcionDatos: TcxGrid;
    GrBoxDatos: TcxGroupBox;
    LbRecepcionlFolioTraspaso: TcxLabel;
    LblRecepcionFecha: TcxLabel;
    LblRecepcionEstacionOrigen: TcxLabel;
    LblRecepcionFolioRecepcion: TcxLabel;
    TxtFolioTraspaso: TcxDBTextEdit;
    TxtRecepcionEstacionOrigen: TcxDBTextEdit;
    TxtRecepcionFolioRecepcion: TcxDBTextEdit;
    DtRecepcionFecha: TcxDBDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTraspasoEntreEstaciones: TfrmTraspasoEntreEstaciones;

implementation

{$R *.dfm}

end.
