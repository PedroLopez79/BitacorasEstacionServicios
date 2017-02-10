object ServiceEmpresas: TServiceEmpresas
  OldCreateOrder = True
  OnCreate = DataAbstractServiceCreate
  SessionManager = ServerDataModule3.SessionManager
  ServiceSchema = Schema
  ServiceDataStreamer = DataStreamer
  ExportedDataTables = <>
  AllowWhereSQL = True
  Height = 243
  Width = 332
  object Schema: TDASchema
    ConnectionManager = ServerDataModule3.ConnectionManager3
    DataDictionary = ServerDataModule3.DataDictionary
    Datasets = <
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.USUARIO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'CODIGO'
                TableField = 'CODIGO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'USERNAME'
                TableField = 'USERNAME'
              end
              item
                DatasetField = 'USERPASSWORD'
                TableField = 'USERPASSWORD'
              end
              item
                DatasetField = 'FIRMADEFAULT'
                TableField = 'FIRMADEFAULT'
              end>
          end>
        Name = 'dbo.usuarios'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'CODIGO'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end
          item
            Name = 'USERNAME'
            DataType = datString
            Size = 10
          end
          item
            Name = 'USERPASSWORD'
            DataType = datString
            Size = 10
          end
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'select top 1 *'#10'from tipocambio'#10'where EstacionID=:EstacionID'#10'orde' +
              'r by Fecha desc'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'ObtenerTipoCambioPorEstacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.TipoCambio'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'dbo.TipoCambio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <
          item
            Name = 'Usuario'
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'Clave'
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'SELECT IDEMPLEADO, NOMBRE'#10'FROM USUARIO'#10'WHERE (USERNAME = :Usuari' +
              'o) AND (USERPASSWORD = :Clave)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end>
          end>
        Name = 'spValidaUsuario'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 70
          end>
      end
      item
        Params = <
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'DECLARE @UsuarioID AS INT'#10#10'SELECT @UsuarioID = :UsuarioID'#10#10'SELEC' +
              'T DISTINCT Opcion.OpcionID, Descripcion FROM'#10'       (SELECT     ' +
              'OpcionID'#10'        FROM       Acceso'#10'        WHERE usuarioid = @Us' +
              'uarioID'#10#10'        UNION'#10#10'        SELECT     OpcionID'#10'        FROM' +
              '       GrupoAcceso'#10'        WHERE GrupoID IN (SELECT GrupoID FROM' +
              ' GrupoUsuario'#10'                          WHERE UsuarioID = @Usuar' +
              'ioID)) SelectUnion  INNER JOIN'#10'                          Opcion ' +
              'ON Opcion.OpcionID = SelectUnion.OpcionID'#10'ORDER BY Opcion.Opcion' +
              'ID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end>
          end>
        Name = 'spAccesos'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'OpcionID'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 50
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'UsuarioID'
                TableField = 'UsuarioID'
              end
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end>
          end>
        Name = 'dbo.Acceso'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'UsuarioID'
            DataType = datInteger
          end
          item
            Name = 'OpcionID'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Opcion'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'OpcionID'
                TableField = 'OpcionID'
              end
              item
                DatasetField = 'Descripcion'
                TableField = 'Descripcion'
              end
              item
                DatasetField = 'ImageIndex'
                TableField = 'ImageIndex'
              end
              item
                DatasetField = 'PadreID'
                TableField = 'PadreID'
              end
              item
                DatasetField = 'Orden'
                TableField = 'Orden'
              end>
          end>
        Name = 'dbo.Opcion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'OpcionID'
            DataType = datInteger
          end
          item
            Name = 'Descripcion'
            DataType = datString
            Size = 50
          end
          item
            Name = 'ImageIndex'
            DataType = datInteger
          end
          item
            Name = 'PadreID'
            DataType = datInteger
          end
          item
            Name = 'Orden'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <>
        Name = 'ObtenerLimiteAFacturar'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Empresas'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'EMPRESAID'
                TableField = 'EMPRESAID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'ClavePemex'
                TableField = 'ClavePemex'
              end
              item
                DatasetField = 'NoBombas'
                TableField = 'NoBombas'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'Ciudad'
                TableField = 'Ciudad'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Host'
                TableField = 'Host'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end
              item
                DatasetField = 'ClienteSagarpa'
                TableField = 'ClienteSagarpa'
              end
              item
                DatasetField = 'ClienteSagarpaPemex'
                TableField = 'ClienteSagarpaPemex'
              end
              item
                DatasetField = 'IvaRetenido'
                TableField = 'IvaRetenido'
              end
              item
                DatasetField = 'ISR'
                TableField = 'ISR'
              end>
          end>
        Name = 'dbo.Empresas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'EMPRESAID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 70
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'ClavePemex'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NoBombas'
            DataType = datInteger
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 80
          end
          item
            Name = 'Ciudad'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end
          item
            Name = 'ClienteSagarpa'
            DataType = datInteger
          end
          item
            Name = 'ClienteSagarpaPemex'
            DataType = datInteger
          end
          item
            Name = 'IvaRetenido'
            DataType = datBoolean
          end
          item
            Name = 'ISR'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            Value = '1'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'declare @EstacionID as integer'#10#10'Select @EstacionID = (Select :Es' +
              'tacionID)'#10#10'SELECT '#10'    IDESTACION, Nombre, RazonSocial, RFC, '#10'  ' +
              '  Colonia, CodigoPostal, Host, CuentaContable, '#10'    Impuesto'#10'  F' +
              'ROM'#10'    dbo.Estacion'#10'  WHERE IDESTACION = @EstacionID'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'RazonSocial'
                TableField = 'RazonSocial'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'Host'
                TableField = 'Host'
              end
              item
                DatasetField = 'CuentaContable'
                TableField = 'CuentaContable'
              end
              item
                DatasetField = 'Impuesto'
                TableField = 'Impuesto'
              end>
          end>
        Name = 'ObtenerDatosEstacion'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RazonSocial'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 10
          end
          item
            Name = 'Host'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CuentaContable'
            DataType = datString
            Size = 20
          end
          item
            Name = 'Impuesto'
            DataType = datFloat
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'SELECT'#10'    TipoCambioID, TipoCambio, EstacionID, Fecha'#10'FROM'#10'    ' +
              'dbo.TipoCambio'#10'where (EstacionID=:EstacionID)'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'TipoCambioID'
                TableField = 'TipoCambioID'
              end
              item
                DatasetField = 'TipoCambio'
                TableField = 'TipoCambio'
              end
              item
                DatasetField = 'EstacionID'
                TableField = 'EstacionID'
              end
              item
                DatasetField = 'Fecha'
                TableField = 'Fecha'
              end>
          end>
        Name = 'ObtenerHistorialTipoCambio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'TipoCambioID'
            DataType = datInteger
          end
          item
            Name = 'TipoCambio'
            DataType = datFloat
          end
          item
            Name = 'EstacionID'
            DataType = datInteger
          end
          item
            Name = 'Fecha'
            DataType = datDateTime
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.DatosSATEmpresas'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'DatosSatEmpresasID'
                TableField = 'DatosSatEmpresasID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Domicilio'
                TableField = 'Domicilio'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'IVA'
                TableField = 'IVA'
              end
              item
                DatasetField = 'NoExterior'
                TableField = 'NoExterior'
              end
              item
                DatasetField = 'NoInterior'
                TableField = 'NoInterior'
              end
              item
                DatasetField = 'Localidad'
                TableField = 'Localidad'
              end
              item
                DatasetField = 'Municipio'
                TableField = 'Municipio'
              end
              item
                DatasetField = 'Estado'
                TableField = 'Estado'
              end
              item
                DatasetField = 'Pais'
                TableField = 'Pais'
              end
              item
                DatasetField = 'NoAprobacion'
                TableField = 'NoAprobacion'
              end
              item
                DatasetField = 'Colonia'
                TableField = 'Colonia'
              end
              item
                DatasetField = 'CodigoPostal'
                TableField = 'CodigoPostal'
              end
              item
                DatasetField = 'NoCertificado'
                TableField = 'NoCertificado'
              end
              item
                DatasetField = 'ArchivoClavePrivada'
                TableField = 'ArchivoClavePrivada'
              end
              item
                DatasetField = 'ArchivoCertificado'
                TableField = 'ArchivoCertificado'
              end
              item
                DatasetField = 'ClavePriv'
                TableField = 'ClavePriv'
              end
              item
                DatasetField = 'Certificado'
                TableField = 'Certificado'
              end
              item
                DatasetField = 'PasswordFCTElect'
                TableField = 'PasswordFCTElect'
              end
              item
                DatasetField = 'EmpresaID'
                TableField = 'EmpresaID'
              end
              item
                DatasetField = 'Sucursal'
                TableField = 'Sucursal'
              end
              item
                DatasetField = 'SucursalDE'
                TableField = 'SucursalDE'
              end
              item
                DatasetField = 'Telefono1'
                TableField = 'Telefono1'
              end
              item
                DatasetField = 'Telefono2'
                TableField = 'Telefono2'
              end
              item
                DatasetField = 'AnoAprobacion'
                TableField = 'AnoAprobacion'
              end
              item
                DatasetField = 'FolioInicial'
                TableField = 'FolioInicial'
              end
              item
                DatasetField = 'FolioFinal'
                TableField = 'FolioFinal'
              end>
          end>
        Name = 'dbo.DatosSATEmpresas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'DatosSatEmpresasID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 70
          end
          item
            Name = 'Domicilio'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 20
          end
          item
            Name = 'IVA'
            DataType = datFloat
          end
          item
            Name = 'NoExterior'
            DataType = datString
            Size = 20
          end
          item
            Name = 'NoInterior'
            DataType = datString
            Size = 20
          end
          item
            Name = 'Localidad'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Municipio'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Estado'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Pais'
            DataType = datString
            Size = 50
          end
          item
            Name = 'NoAprobacion'
            DataType = datInteger
          end
          item
            Name = 'Colonia'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CodigoPostal'
            DataType = datString
            Size = 50
          end
          item
            Name = 'NoCertificado'
            DataType = datString
            Size = 50
          end
          item
            Name = 'ArchivoClavePrivada'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ArchivoCertificado'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ClavePriv'
            DataType = datString
            Size = 200
          end
          item
            Name = 'Certificado'
            DataType = datString
            Size = 4000
          end
          item
            Name = 'PasswordFCTElect'
            DataType = datString
            Size = 200
          end
          item
            Name = 'EmpresaID'
            DataType = datInteger
          end
          item
            Name = 'Sucursal'
            DataType = datInteger
          end
          item
            Name = 'SucursalDE'
            DataType = datInteger
          end
          item
            Name = 'Telefono1'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Telefono2'
            DataType = datString
            Size = 50
          end
          item
            Name = 'AnoAprobacion'
            DataType = datDateTime
          end
          item
            Name = 'FolioInicial'
            DataType = datInteger
          end
          item
            Name = 'FolioFinal'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'ReporteID'
                TableField = 'ReporteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Parametros'
                TableField = 'Parametros'
              end
              item
                DatasetField = 'Template'
                TableField = 'Template'
              end
              item
                DatasetField = 'TemplateMedia'
                TableField = 'TemplateMedia'
              end
              item
                DatasetField = 'TemplateBaja'
                TableField = 'TemplateBaja'
              end
              item
                DatasetField = 'TemplateExportar'
                TableField = 'TemplateExportar'
              end
              item
                DatasetField = 'SQL1'
                TableField = 'SQL1'
              end
              item
                DatasetField = 'SQL2'
                TableField = 'SQL2'
              end
              item
                DatasetField = 'CampoJoin'
                TableField = 'CampoJoin'
              end
              item
                DatasetField = 'USUARIOS'
                TableField = 'USUARIOS'
              end>
          end>
        Name = 'dbo.Reporte'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ReporteID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
            Required = True
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Parametros'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Template'
            DataType = datMemo
          end
          item
            Name = 'TemplateMedia'
            DataType = datMemo
          end
          item
            Name = 'TemplateBaja'
            DataType = datMemo
          end
          item
            Name = 'TemplateExportar'
            DataType = datMemo
          end
          item
            Name = 'SQL1'
            DataType = datMemo
          end
          item
            Name = 'SQL2'
            DataType = datMemo
          end
          item
            Name = 'CampoJoin'
            DataType = datString
            Size = 20
          end
          item
            Name = 'USUARIOS'
            DataType = datString
            Size = 1000
          end>
      end
      item
        Params = <
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'USUARIOS'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            SQL = 
              'Select ReporteID,Nombre,Tipo,Parametros,'#10'       Template,SQL1,SQ' +
              'L2,CampoJoin'#10'From Reporte'#10'Where  Tipo = :Tipo AND'#10'USUARIOS LIKE ' +
              ' '#39'%'#39'+ :USUARIOS +'#39'%'#39#10'order by Nombre'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'ReporteID'
                TableField = 'ReporteID'
              end
              item
                DatasetField = 'Nombre'
                TableField = 'Nombre'
              end
              item
                DatasetField = 'Tipo'
                TableField = 'Tipo'
              end
              item
                DatasetField = 'Parametros'
                TableField = 'Parametros'
              end
              item
                DatasetField = 'Template'
                TableField = 'Template'
              end
              item
                DatasetField = 'SQL1'
                TableField = 'SQL1'
              end
              item
                DatasetField = 'SQL2'
                TableField = 'SQL2'
              end
              item
                DatasetField = 'CampoJoin'
                TableField = 'CampoJoin'
              end>
          end>
        Name = 'Reportes'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'ReporteID'
            DataType = datInteger
          end
          item
            Name = 'Nombre'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Tipo'
            DataType = datInteger
          end
          item
            Name = 'Parametros'
            DataType = datString
            Size = 50
          end
          item
            Name = 'Template'
            DataType = datMemo
          end
          item
            Name = 'SQL1'
            DataType = datMemo
          end
          item
            Name = 'SQL2'
            DataType = datMemo
          end
          item
            Name = 'CampoJoin'
            DataType = datString
            Size = 20
          end>
      end
      item
        Params = <
          item
            Name = 'Campo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Folio'
            SQL = 
              'declare @Campo as varchar(50)'#10'declare @Serie as varchar(10)'#10#10'sel' +
              'ect @Campo = (Select :Campo)'#10'select @Serie = (Select :Serie)'#10#10'se' +
              'lect Folio from folio'#10'where campo = @campo and serie = @serie'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end>
          end>
        Name = 'spFolioActual'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Folio'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.ESTACION'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'RAZONSOCIAL'
                TableField = 'RAZONSOCIAL'
              end
              item
                DatasetField = 'RFC'
                TableField = 'RFC'
              end
              item
                DatasetField = 'HOST'
                TableField = 'HOST'
              end
              item
                DatasetField = 'CUENTACONTABLE'
                TableField = 'CUENTACONTABLE'
              end
              item
                DatasetField = 'IMPUESTO'
                TableField = 'IMPUESTO'
              end
              item
                DatasetField = 'CALLE'
                TableField = 'CALLE'
              end
              item
                DatasetField = 'COLONIA'
                TableField = 'COLONIA'
              end
              item
                DatasetField = 'NOEXTERIOR'
                TableField = 'NOEXTERIOR'
              end
              item
                DatasetField = 'NOINTERIOR'
                TableField = 'NOINTERIOR'
              end
              item
                DatasetField = 'CODIGOPOSTAL'
                TableField = 'CODIGOPOSTAL'
              end
              item
                DatasetField = 'MUNICIPIO'
                TableField = 'MUNICIPIO'
              end
              item
                DatasetField = 'LOCALIDAD'
                TableField = 'LOCALIDAD'
              end
              item
                DatasetField = 'ESTADO'
                TableField = 'ESTADO'
              end
              item
                DatasetField = 'EXCALLE'
                TableField = 'EXCALLE'
              end
              item
                DatasetField = 'EXCOLONIA'
                TableField = 'EXCOLONIA'
              end
              item
                DatasetField = 'EXNOEXTERIOR'
                TableField = 'EXNOEXTERIOR'
              end
              item
                DatasetField = 'EXNOINTERIOR'
                TableField = 'EXNOINTERIOR'
              end
              item
                DatasetField = 'EXCODIGOPOSTAL'
                TableField = 'EXCODIGOPOSTAL'
              end
              item
                DatasetField = 'EXMUNICIPIO'
                TableField = 'EXMUNICIPIO'
              end
              item
                DatasetField = 'EXLOCALIDAD'
                TableField = 'EXLOCALIDAD'
              end
              item
                DatasetField = 'EXESTADO'
                TableField = 'EXESTADO'
              end
              item
                DatasetField = 'NOAPROBACION'
                TableField = 'NOAPROBACION'
              end
              item
                DatasetField = 'FECHAAPROBACION'
                TableField = 'FECHAAPROBACION'
              end
              item
                DatasetField = 'NOAPROBACIONES'
                TableField = 'NOAPROBACIONES'
              end
              item
                DatasetField = 'VERSIONCFD'
                TableField = 'VERSIONCFD'
              end
              item
                DatasetField = 'REGIMENFISCAL'
                TableField = 'REGIMENFISCAL'
              end
              item
                DatasetField = 'CODIGOFACTURA'
                TableField = 'CODIGOFACTURA'
              end
              item
                DatasetField = 'FORMATOFACTURAWEB'
                TableField = 'FORMATOFACTURAWEB'
              end
              item
                DatasetField = 'SERIEENLINEA'
                TableField = 'SERIEENLINEA'
              end
              item
                DatasetField = 'TELEFONO'
                TableField = 'TELEFONO'
              end
              item
                DatasetField = 'IDESTACIONBANCARIA'
                TableField = 'IDESTACIONBANCARIA'
              end
              item
                DatasetField = 'SERIEBANCARIA'
                TableField = 'SERIEBANCARIA'
              end
              item
                DatasetField = 'LOGOESTACION'
                TableField = 'LOGOESTACION'
              end
              item
                DatasetField = 'PAIS'
                TableField = 'PAIS'
              end
              item
                DatasetField = 'EXPAIS'
                TableField = 'EXPAIS'
              end
              item
                DatasetField = 'EXREFERENCIA'
                TableField = 'EXREFERENCIA'
              end>
          end>
        Name = 'dbo.ESTACION'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RAZONSOCIAL'
            DataType = datString
            Size = 100
          end
          item
            Name = 'RFC'
            DataType = datString
            Size = 30
          end
          item
            Name = 'HOST'
            DataType = datString
            Size = 30
          end
          item
            Name = 'CUENTACONTABLE'
            DataType = datString
            Size = 20
          end
          item
            Name = 'IMPUESTO'
            DataType = datFloat
          end
          item
            Name = 'CALLE'
            DataType = datString
            Size = 60
          end
          item
            Name = 'COLONIA'
            DataType = datString
            Size = 30
          end
          item
            Name = 'NOEXTERIOR'
            DataType = datString
            Size = 10
          end
          item
            Name = 'NOINTERIOR'
            DataType = datString
            Size = 10
          end
          item
            Name = 'CODIGOPOSTAL'
            DataType = datString
            Size = 10
          end
          item
            Name = 'MUNICIPIO'
            DataType = datString
            Size = 30
          end
          item
            Name = 'LOCALIDAD'
            DataType = datString
            Size = 30
          end
          item
            Name = 'ESTADO'
            DataType = datString
            Size = 30
          end
          item
            Name = 'EXCALLE'
            DataType = datString
            Size = 60
          end
          item
            Name = 'EXCOLONIA'
            DataType = datString
            Size = 30
          end
          item
            Name = 'EXNOEXTERIOR'
            DataType = datString
            Size = 10
          end
          item
            Name = 'EXNOINTERIOR'
            DataType = datString
            Size = 10
          end
          item
            Name = 'EXCODIGOPOSTAL'
            DataType = datString
            Size = 10
          end
          item
            Name = 'EXMUNICIPIO'
            DataType = datString
            Size = 30
          end
          item
            Name = 'EXLOCALIDAD'
            DataType = datString
            Size = 30
          end
          item
            Name = 'EXESTADO'
            DataType = datString
            Size = 30
          end
          item
            Name = 'NOAPROBACION'
            DataType = datInteger
          end
          item
            Name = 'FECHAAPROBACION'
            DataType = datInteger
          end
          item
            Name = 'NOAPROBACIONES'
            DataType = datString
            Size = 150
          end
          item
            Name = 'VERSIONCFD'
            DataType = datInteger
          end
          item
            Name = 'REGIMENFISCAL'
            DataType = datString
            Size = 150
          end
          item
            Name = 'CODIGOFACTURA'
            DataType = datString
            Size = 2
          end
          item
            Name = 'FORMATOFACTURAWEB'
            DataType = datString
            Size = 100
          end
          item
            Name = 'SERIEENLINEA'
            DataType = datString
            Size = 5
          end
          item
            Name = 'TELEFONO'
            DataType = datString
            Size = 20
          end
          item
            Name = 'IDESTACIONBANCARIA'
            DataType = datInteger
          end
          item
            Name = 'SERIEBANCARIA'
            DataType = datString
            Size = 5
          end
          item
            Name = 'LOGOESTACION'
            DataType = datBlob
          end
          item
            Name = 'PAIS'
            DataType = datString
            Size = 100
          end
          item
            Name = 'EXPAIS'
            DataType = datString
            Size = 100
          end
          item
            Name = 'EXREFERENCIA'
            DataType = datString
            Size = 100
          end>
      end
      item
        Params = <
          item
            Name = 'Campo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Serie'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Folio'
            SQL = 
              'DECLARE @Campo AS VARCHAR(30)'#10'DECLARE @Serie AS VARCHAR(20)'#10#10'SEL' +
              'ECT @Campo = :Campo'#10'SELECT @Serie = :Serie'#10#10'SELECT Folio'#10'FROM Fo' +
              'lio'#10'WHERE (UPPER(Campo) = UPPER(@Campo)) AND (UPPER(Serie) = UPP' +
              'ER(@Serie))'#10#10'UPDATE Folio'#10'SET Folio = Folio + 1'#10'WHERE (UPPER(Cam' +
              'po) = UPPER(@Campo)) AND (UPPER(Serie) = UPPER(@Serie))'#10
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'Folio'
                TableField = 'Folio'
              end>
          end>
        Name = 'spFolio'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'Folio'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.BITACORAESTACION'
            SQL = 
              'SELECT '#9#10#9'"BITACORAID", "USUARIOID", "FECHA", '#10#9'"NOTA", "ACTIVID' +
              'AD", "FRECUENCIA", '#10#9'"OBSERVACIONES", "ESTACIONID", "FIRMA", '#10#9'"' +
              'FECHAHORA", "FOLIO" '#10'FROM '#10#9'"dbo"."BITACORAESTACION" '#10'WHERE '#10#9'BI' +
              'TACORAID = -1'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'BITACORAID'
                TableField = 'BITACORAID'
              end
              item
                DatasetField = 'USUARIOID'
                TableField = 'USUARIOID'
              end
              item
                DatasetField = 'FECHA'
                TableField = 'FECHA'
              end
              item
                DatasetField = 'NOTA'
                TableField = 'NOTA'
              end
              item
                DatasetField = 'ACTIVIDAD'
                TableField = 'ACTIVIDAD'
              end
              item
                DatasetField = 'FRECUENCIA'
                TableField = 'FRECUENCIA'
              end
              item
                DatasetField = 'OBSERVACIONES'
                TableField = 'OBSERVACIONES'
              end
              item
                DatasetField = 'ESTACIONID'
                TableField = 'ESTACIONID'
              end
              item
                DatasetField = 'FIRMA'
                TableField = 'FIRMA'
              end
              item
                DatasetField = 'FECHAHORA'
                TableField = 'FECHAHORA'
              end
              item
                DatasetField = 'FOLIO'
                TableField = 'FOLIO'
              end>
          end>
        Name = 'dbo.BITACORAESTACION'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'BITACORAID'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'USUARIOID'
            DataType = datInteger
          end
          item
            Name = 'FECHA'
            DataType = datDateTime
          end
          item
            Name = 'NOTA'
            DataType = datString
            Size = 200
          end
          item
            Name = 'ACTIVIDAD'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'FRECUENCIA'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'OBSERVACIONES'
            DataType = datString
            Size = 1000
          end
          item
            Name = 'ESTACIONID'
            DataType = datInteger
          end
          item
            Name = 'FIRMA'
            DataType = datBlob
          end
          item
            Name = 'FECHAHORA'
            DataType = datDateTime
          end
          item
            Name = 'FOLIO'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
            BlobType = dabtBlob
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.USUARIO'
            SQL = 
              'UPDATE USUARIO'#10'set FIRMADEFAULT = :FIRMADEFAULT,'#10'    CODIGO = '#39'P' +
              'ETER'#39#10'where USUARIO.IDEMPLEADO = :UsuarioID'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'spActualizaFirmaDefault'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <>
      end>
    JoinDataTables = <>
    UnionDataTables = <>
    Commands = <
      item
        Params = <
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            SQL = 'DELETE'#10'FROM'#10'   Acceso'#10'WHERE'#10'   UsuarioID = :UsuarioID'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'AccesosEliminar'
      end
      item
        Params = <
          item
            Name = 'OpcionID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'UsuarioID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Acceso'
            SQL = 
              '  INSERT'#10'  INTO Acceso'#10'    (OpcionID, UsuarioID)'#10'  VALUES'#10'    (:' +
              'OpcionID, :UsuarioID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'AccesosInsertar'
      end
      item
        Params = <
          item
            Name = 'OLD_ReporteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'DELETE '#10'  FROM'#10'    dbo.Reporte'#10'  WHERE'#10'    (ReporteID = :OLD_Rep' +
              'orteID)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Delete_dbo Reporte'
      end
      item
        Params = <
          item
            Name = 'ReporteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Parametros'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Template'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateMedia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateBaja'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateExportar'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL1'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL2'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CampoJoin'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Usuarios'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'INSERT'#10'  INTO dbo.Reporte'#10'    (ReporteID, Nombre, Tipo, Parametr' +
              'os, Template, TemplateMedia, '#10'     TemplateBaja, TemplateExporta' +
              'r, SQL1, SQL2, CampoJoin, Usuarios)'#10'  VALUES'#10'    (:ReporteID, :N' +
              'ombre, :Tipo, :Parametros, :Template, '#10'     :TemplateMedia, :Tem' +
              'plateBaja, :TemplateExportar, :SQL1, '#10'     :SQL2, :CampoJoin, :U' +
              'suarios)'
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Insert_dbo Reporte'
      end
      item
        Params = <
          item
            Name = 'ReporteID'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Nombre'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Tipo'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Parametros'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Template'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateMedia'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateBaja'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'TemplateExportar'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL1'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'SQL2'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'CampoJoin'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'Usuarios'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'OLD_ReporteID'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'FACTURAELECTRONICA'
            ConnectionType = 'SDAC'
            Default = True
            TargetTable = 'dbo.Reporte'
            SQL = 
              'UPDATE dbo.Reporte'#10'  SET '#10'    ReporteID = :ReporteID, '#10'    Nombr' +
              'e = :Nombre, '#10'    Tipo = :Tipo, '#10'    Parametros = :Parametros, '#10 +
              '    Template = :Template, '#10'    TemplateMedia = :TemplateMedia, '#10 +
              '    TemplateBaja = :TemplateBaja, '#10'    TemplateExportar = :Templ' +
              'ateExportar, '#10'    SQL1 = :SQL1, '#10'    SQL2 = :SQL2, '#10'    CampoJoi' +
              'n = :CampoJoin,'#10'    Usuarios = :Usuarios'#10'  WHERE'#10'    (ReporteID ' +
              '= :OLD_ReporteID)'#10
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'Update_dbo Reporte'
      end>
    RelationShips = <
      item
        Name = 'FK_spValidaUsuario_spValidaUsuario'
        MasterDatasetName = 'spValidaUsuario'
        DetailDatasetName = 'spValidaUsuario'
        RelationshipType = rtForeignKey
      end
      item
        Name = 'FK_dbo.Reporte_dbo.Reporte'
        MasterDatasetName = 'dbo.Reporte'
        DetailDatasetName = 'dbo.Reporte'
        RelationshipType = rtForeignKey
      end
      item
        Name = 'FK_dbo.BITACORAESTACION_dbo.BITACORAESTACION'
        MasterDatasetName = 'dbo.BITACORAESTACION'
        DetailDatasetName = 'dbo.BITACORAESTACION'
        RelationshipType = rtForeignKey
      end>
    UpdateRules = <>
    Version = 0
    Left = 24
    Top = 72
  end
  object dbpUsuario: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Usuario'
    DeleteCommandName = 'Delete_dbo Usuario'
    UpdateCommandName = 'Update_dbo Usuario'
    ReferencedDataset = 'dbo Usuario'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 128
    Top = 24
  end
  object bpReporte: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Reporte'
    DeleteCommandName = 'Delete_dbo Reporte'
    UpdateCommandName = 'Update_dbo Reporte'
    ReferencedDataset = 'dbo Reporte'
    ProcessorOptions = []
    UpdateMode = updWhereKeyOnly
    RaiseExceptionAtError = True
    Left = 128
    Top = 78
  end
  object DataStreamer: TDABin2DataStreamer
    Left = 24
    Top = 16
  end
  object dbpDetalleLiquidacion: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo DetalleLiquidacion2'
    DeleteCommandName = 'Delete_dbo DetalleLiquidacion2'
    UpdateCommandName = 'Update_dbo DetalleLiquidacion2'
    ReferencedDataset = 'LIQDetalleLiquidacion2'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 128
    Top = 128
  end
  object dbpLiquidacion: TDABusinessProcessor
    Schema = Schema
    InsertCommandName = 'Insert_dbo Liquidacion2'
    DeleteCommandName = 'Delete_dbo Liquidacion2'
    UpdateCommandName = 'Update_dbo Liquidacion2'
    ReferencedDataset = 'LIQLiquidacion2'
    ProcessorOptions = [poAutoGenerateRefreshDataset]
    UpdateMode = updWhereKeyOnly
    Left = 256
    Top = 16
  end
end
