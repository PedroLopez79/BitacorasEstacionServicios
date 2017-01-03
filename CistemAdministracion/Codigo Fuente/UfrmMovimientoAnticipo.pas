unit UfrmMovimientoAnticipo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ufrmCatalogo, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxLabel, cxContainer, cxGroupBox, dxmdaset,
  uDADataTable, uDAScriptingProvider, uDACDSDataTable, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC;

type
  TfrmCatalogoAnticipo = class(TfrmCatalogo)
    GrpBoxDatos: TcxGroupBox;
    LblEstacion: TcxLabel;
    LblFecha: TcxLabel;
    LblAgrupacion: TcxLabel;
    LblDespachador: TcxLabel;
    GrpBoxTipoValor: TcxGroupBox;
    LblValor: TcxLabel;
    LblAnticipo: TcxLabel;
    LblAnticipoAcomulado: TcxLabel;
    CmBoxEstacion: TcxDBComboBox;
    CmBoxAgrupacion: TcxDBComboBox;
    CmBoxDespachador: TcxDBComboBox;
    CmBoxValor: TcxDBComboBox;
    TxtAnticipoAcomulado: TcxDBTextEdit;
    CmBoxFecha: TcxDBDateEdit;
    TxtAnticipo: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCatalogoAnticipo: TfrmCatalogoAnticipo;

implementation

{$R *.dfm}

end.
