program ServerEmpresas;

{#ROGEN:LibraryAdministracion.RODL} // RemObjects SDK: Careful, do not remove!

uses
  Forms,
  Windows,
  uROComInit,
  uROComboService,
  fServerForm in 'fServerForm.pas' {ServerForm},
  fServerDataModule in 'fServerDataModule.pas' {ServerDataModule3: TDataModule},
  ufrmServerForm in '..\..\..\CistemComun\CodigoFuente\ufrmServerForm.pas' {frmServerForm},
  UtileriasComun in '..\..\..\CistemComun\CodigoFuente\UtileriasComun.pas',
  LibXmlParser in '..\..\..\CistemComun\CodigoFuente\LibXmlParser.pas',
  ufrmPassword in '..\..\..\CistemComun\CodigoFuente\ufrmPassword.pas' {frmPassword},
  libeay32 in 'libeay32.pas',
  LibraryEmpresas_Intf in 'LibraryEmpresas_Intf.pas',
  LibraryEmpresas_Invk in 'LibraryEmpresas_Invk.pas',
  ServiceEmpresas_Impl in 'ServiceEmpresas_Impl.pas' {ServiceEmpresas: TDataAbstractService};

var
  Mutex : THandle;

{$R *.res}
{$R RODLFile.res}

begin
  Mutex := CreateMutex(nil, True, 'ServerAdministracion');
  //if (Mutex <> 0) and (GetLastError = 0) then
  //begin
    if ROStartService('ServerAdministracion', 'ServerAdministracion') then
    begin
      ROService.CreateForm(TServerDataModule3, ServerDataModule3);
      ROService.Run;
      Exit;
    end;

    Application.Initialize;
    Application.CreateForm(TServerDataModule3, ServerDataModule3);
    Application.CreateForm(TServerForm, ServerForm);
    Application.Run;
  //end;
end.
