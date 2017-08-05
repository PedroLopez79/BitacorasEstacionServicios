unit fServerForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ufrmServerForm, Menus, ExtCtrls, jpeg, ActiveX, dxGDIPlusClasses;

type
  TServerForm = class(TfrmServerForm)
    procedure FormCreate(Sender: TObject);
    procedure tmrHideTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    HoraReinicio: String;
  end;

var
  ServerForm: TServerForm;

implementation
uses UtileriasComun;

{$R *.dfm}

procedure TServerForm.FormCreate(Sender: TObject);
begin
  inherited;
  CoInitialize (nil);
  HoraReinicio:= FormatFloat('0000', StrToInt(LeerRegistro('HoraReinicio','2315')));
end;

procedure TServerForm.tmrHideTimer(Sender: TObject);
begin
  inherited;
  if FormatDateTime('hhnn', Now) = ServerForm.HoraReinicio then
  begin
    //Aplicacion Reinicia
    sleep(60000);
    ServerForm.RemueveIcono;
    AppRestart;
  end;
end;

end.
