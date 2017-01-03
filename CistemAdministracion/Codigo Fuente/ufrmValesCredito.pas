unit ufrmValesCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CustomModule, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TFrmValesCredito = class(TfrmCustomModule)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmValesCredito: TFrmValesCredito;

implementation

uses Modules;
{$R *.dfm}

initialization
  ModuleInfoManager.RegisterModule('Vales de Credito', TFrmValesCredito);

end.
