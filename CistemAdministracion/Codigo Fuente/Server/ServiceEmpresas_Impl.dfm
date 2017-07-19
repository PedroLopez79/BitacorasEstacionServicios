object ServiceEmpresas: TServiceEmpresas
  OldCreateOrder = True
  OnCreate = DataAbstractServiceCreate
  ServiceSchema = Schema
  ServiceDataStreamer = DataStreamer
  ExportedDataTables = <>
  AllowWhereSQL = True
  Height = 243
  Width = 332
  object Schema: TDASchema
    ConnectionManager = ServerDataModule3.ConnectionManager3
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
              'FECHAHORA", "FOLIO", "FOTO1" '#10'FROM '#10#9'"dbo"."BITACORAESTACION" '#10'W' +
              'HERE '#10#9'BITACORAID = -1'
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
              end
              item
                DatasetField = 'FOTO1'
                TableField = 'FOTO1'
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
          end
          item
            Name = 'FOTO1'
            DataType = datBlob
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
      end
      item
        Params = <
          item
            Name = 'USUARIOID'
            DataType = datInteger
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'GAUSS'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.USUARIO'
            SQL = 
              'SELECT '#9#10#9'"IDEMPLEADO", "CODIGO", "NOMBRE", '#10#9'"USERNAME", "USERP' +
              'ASSWORD", "FIRMADEFAULT" '#10'FROM '#10#9'"dbo"."USUARIO" '#10'WHERE '#10#9'IDEMPL' +
              'EADO = :USUARIOID'
            StatementType = stSQL
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
        Name = 'dbo.USUARIO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
            Required = True
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
            Required = True
          end
          item
            Name = 'USERPASSWORD'
            DataType = datString
            Size = 10
            Required = True
          end
          item
            Name = 'FIRMADEFAULT'
            DataType = datBlob
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.EMPLEADO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'NOMBRE'
                TableField = 'NOMBRE'
              end
              item
                DatasetField = 'CODIGOEMPLEADO'
                TableField = 'CODIGOEMPLEADO'
              end
              item
                DatasetField = 'DOMICILIO'
                TableField = 'DOMICILIO'
              end
              item
                DatasetField = 'CIUDAD'
                TableField = 'CIUDAD'
              end
              item
                DatasetField = 'TELEFONO'
                TableField = 'TELEFONO'
              end
              item
                DatasetField = 'CUENTACONTABLE'
                TableField = 'CUENTACONTABLE'
              end
              item
                DatasetField = 'FECHAALTA'
                TableField = 'FECHAALTA'
              end
              item
                DatasetField = 'FECHABAJA'
                TableField = 'FECHABAJA'
              end
              item
                DatasetField = 'IMSS'
                TableField = 'IMSS'
              end
              item
                DatasetField = 'STATUS'
                TableField = 'STATUS'
              end
              item
                DatasetField = 'FOTOEMPLEADO'
                TableField = 'FOTOEMPLEADO'
              end>
          end>
        Name = 'dbo.EMPLEADO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
            Required = True
          end
          item
            Name = 'NOMBRE'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CODIGOEMPLEADO'
            DataType = datString
            Size = 10
          end
          item
            Name = 'DOMICILIO'
            DataType = datString
            Size = 100
          end
          item
            Name = 'CIUDAD'
            DataType = datString
            Size = 100
          end
          item
            Name = 'TELEFONO'
            DataType = datString
            Size = 20
          end
          item
            Name = 'CUENTACONTABLE'
            DataType = datString
            Size = 20
          end
          item
            Name = 'FECHAALTA'
            DataType = datDateTime
          end
          item
            Name = 'FECHABAJA'
            DataType = datDateTime
          end
          item
            Name = 'IMSS'
            DataType = datString
            Size = 150
          end
          item
            Name = 'STATUS'
            DataType = datBoolean
          end
          item
            Name = 'FOTOEMPLEADO'
            DataType = datBlob
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.HORARIOEMPLEADO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDHORARIO'
                TableField = 'IDHORARIO'
              end
              item
                DatasetField = 'IDEMPLEADO'
                TableField = 'IDEMPLEADO'
              end
              item
                DatasetField = 'FECHAALTA'
                TableField = 'FECHAALTA'
              end
              item
                DatasetField = 'HORAINICIO'
                TableField = 'HORAINICIO'
              end
              item
                DatasetField = 'HORAFINAL'
                TableField = 'HORAFINAL'
              end
              item
                DatasetField = 'REFERENCIA'
                TableField = 'REFERENCIA'
              end
              item
                DatasetField = 'NOMBREEMPLEADO'
                TableField = 'NOMBREEMPLEADO'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end>
          end>
        Name = 'dbo.HORARIOEMPLEADO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDHORARIO'
            DataType = datInteger
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'IDEMPLEADO'
            DataType = datInteger
          end
          item
            Name = 'FECHAALTA'
            DataType = datDateTime
          end
          item
            Name = 'HORAINICIO'
            DataType = datDateTime
          end
          item
            Name = 'HORAFINAL'
            DataType = datDateTime
          end
          item
            Name = 'REFERENCIA'
            DataType = datString
            Size = 100
          end
          item
            Name = 'NOMBREEMPLEADO'
            DataType = datString
            Size = 150
          end
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.PROGRAMAMANTENIMIENTO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDPROGRAMAMANTENIMIENTO'
                TableField = 'IDPROGRAMAMANTENIMIENTO'
              end
              item
                DatasetField = 'CODIGO'
                TableField = 'CODIGO'
              end
              item
                DatasetField = 'CONCEPTO'
                TableField = 'CONCEPTO'
              end
              item
                DatasetField = 'IDTIPOMOVIMIENTO'
                TableField = 'IDTIPOMOVIMIENTO'
              end
              item
                DatasetField = 'FECHAMANTENIMIENTO'
                TableField = 'FECHAMANTENIMIENTO'
              end
              item
                DatasetField = 'PERIODICIDAD'
                TableField = 'PERIODICIDAD'
              end
              item
                DatasetField = 'IDESTACION'
                TableField = 'IDESTACION'
              end>
          end>
        Name = 'dbo.PROGRAMAMANTENIMIENTO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDPROGRAMAMANTENIMIENTO'
            DataType = datInteger
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'CODIGO'
            DataType = datString
            Size = 50
          end
          item
            Name = 'CONCEPTO'
            DataType = datString
            Size = 100
          end
          item
            Name = 'IDTIPOMOVIMIENTO'
            DataType = datInteger
          end
          item
            Name = 'FECHAMANTENIMIENTO'
            DataType = datDateTime
          end
          item
            Name = 'PERIODICIDAD'
            DataType = datString
            Size = 50
          end
          item
            Name = 'IDESTACION'
            DataType = datInteger
          end>
      end
      item
        Params = <>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            TargetTable = 'dbo.TIPOMANTENIMIENTO'
            StatementType = stAutoSQL
            ColumnMappings = <
              item
                DatasetField = 'IDTIPOMANTENIMIENTO'
                TableField = 'IDTIPOMANTENIMIENTO'
              end
              item
                DatasetField = 'CONCEPTO'
                TableField = 'CONCEPTO'
              end>
          end>
        Name = 'dbo.TIPOMANTENIMIENTO'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'IDTIPOMANTENIMIENTO'
            DataType = datInteger
            Required = True
            InPrimaryKey = True
          end
          item
            Name = 'CONCEPTO'
            DataType = datString
            Size = 100
          end>
      end
      item
        Params = <
          item
            Name = 'TIPO'
            DataType = datMemo
            Value = '4'
            ParamType = daptInput
          end
          item
            Name = 'IDESTACION'
            DataType = datMemo
            Value = '2601'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @XML VARCHAR(MAX)'#10'DECLARE @IDESTACION INT'#10'DECLARE @TIPO ' +
              'INT'#10'DECLARE @COUNT INT'#10#10'SET @TIPO = :TIPO'#10'SET @IDESTACION = :IDE' +
              'STACION'#10#10#10'IF @TIPO = 1'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMA' +
              'MANTENIMIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENT' +
              'O'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.ID' +
              'PROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIM' +
              'IENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMA' +
              'NTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGR' +
              'AMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIV' +
              'IDAD.STATUS= '#39'PENDIENTE'#39')'#10'SET @XML ='#10'(SELECT TOP 50 MANTENIMIENT' +
              'OACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO.CODIG' +
              'O, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TI' +
              'POMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIEN' +
              'TO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INN' +
              'ER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGR' +
              'AMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO' +
              #10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENI' +
              'MIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMA' +
              'NTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.' +
              'STATUS= '#39'PENDIENTE'#39#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'IF ' +
              '@TIPO = 2'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMAMANTENIMIENTO' +
              '.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN ' +
              'MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTE' +
              'NIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER J' +
              'OIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO =' +
              ' PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIE' +
              'NTO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS= ' +
              #39'PENDIENTE'#39')'#10'SET @XML ='#10'(SELECT TOP 5 MANTENIMIENTOACTIVIDAD.IDM' +
              'ANTENIMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO.CODIGO, PROGRAMAMAN' +
              'TENIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TIPOMANTO,'#10'     ' +
              '  MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO, MANTENIMIE' +
              'NTOACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTEN' +
              'IMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIEN' +
              'TO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN TI' +
              'POMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROGR' +
              'AMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.ID' +
              'ESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS= '#39'PENDI' +
              'ENTE'#39' ORDER BY MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENT' +
              'O DESC'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'IF @TIPO = 3'#10'BEG' +
              'IN'#10'SET @COUNT = (SELECT COUNT(PROGRAMAMANTENIMIENTO.IDPROGRAMAMA' +
              'NTENIMIENTO) FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTENIMIENTO' +
              'ACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIENTO = PR' +
              'OGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN TIPOMANTE' +
              'NIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROGRAMAMANT' +
              'ENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.IDESTACIO' +
              'N = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' A' +
              'ND MONTH(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) = M' +
              'ONTH(GETDATE())'#10'                                                ' +
              '     AND DAY(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO)' +
              ' = DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9#9' AND YEAR(MANTENIMIENTOACTIVIDAD.' +
              'FECHAAREALIZARMANTENIMIENTO) = YEAR(GETDATE()))'#10'SET @XML ='#10'(SELE' +
              'CT MANTENIMIENTOACTIVIDAD.IDMANTENIMIENTOACTIVIDAD, PROGRAMAMANT' +
              'ENIMIENTO.CODIGO, PROGRAMAMANTENIMIENTO.CONCEPTO, TIPOMANTENIMIE' +
              'NTO.CONCEPTO TIPOMANTO,'#10'       MANTENIMIENTOACTIVIDAD.FECHAAREAL' +
              'IZARMANTENIMIENTO, MANTENIMIENTOACTIVIDAD.STATUS FROM PROGRAMAMA' +
              'NTENIMIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOAC' +
              'TIVIDAD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRA' +
              'MAMANTENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENT' +
              'O.IDTIPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'W' +
              'HERE PROGRAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIM' +
              'IENTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' AND MONTH(MANTENIMIENTOACTIVI' +
              'DAD.FECHAAREALIZARMANTENIMIENTO) = MONTH(GETDATE())'#10'            ' +
              '                                         AND DAY(MANTENIMIENTOAC' +
              'TIVIDAD.FECHAAREALIZARMANTENIMIENTO) = DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9 +
              #9#9#9' AND YEAR(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO)' +
              ' = YEAR(GETDATE())'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'IF @' +
              'TIPO = 4'#10'BEGIN'#10'SET @COUNT = (SELECT COUNT(PROGRAMAMANTENIMIENTO.' +
              'IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN M' +
              'ANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTEN' +
              'IMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JO' +
              'IN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = ' +
              'PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIEN' +
              'TO.IDESTACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS<> ' +
              #39'PENDIENTE'#39')'#10#10'SET @XML ='#10'(SELECT MANTENIMIENTOACTIVIDAD.IDMANTEN' +
              'IMIENTOACTIVIDAD, PROGRAMAMANTENIMIENTO.CODIGO, PROGRAMAMANTENIM' +
              'IENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TIPOMANTO,'#10'       MAN' +
              'TENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO, MANTENIMIENTOAC' +
              'TIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTENIMIEN' +
              'TOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIENTO = ' +
              'PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN TIPOMAN' +
              'TENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROGRAMAMA' +
              'NTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.IDESTAC' +
              'ION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS<> '#39'PENDIENTE' +
              #39#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENTS)'#10'END'#10#10'SELECT CAST(@COUNT AS' +
              ' VARCHAR(100)) + @XML AS XML'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenActividadesProgramadas'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datMemo
          end>
      end
      item
        Params = <
          item
            Name = 'EstacionID'
            DataType = datInteger
            Value = '2601'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDEMPLEADO INT'#10'DECLARE @FOTOEMPLEADO VARBINARY(MAX)'#10'DEC' +
              'LARE @FOTOBASE64 VARCHAR(MAX)'#10'DECLARE @COUNT INT'#10#10'SET @COUNT = (' +
              'SELECT COUNT(HORARIOEMPLEADO.IDEMPLEADO)'#10'              FROM HORA' +
              'RIOEMPLEADO INNER JOIN EMPLEADO ON EMPLEADO.IDEMPLEADO = HORARIO' +
              'EMPLEADO.IDEMPLEADO'#10'              WHERE HORARIOEMPLEADO.IDESTACI' +
              'ON = :EstacionID)'#10'              '#10'CREATE TABLE #HORARIOEMPLEADO'#10'(' +
              'IDEMPLEADO INT,'#10' HORAINICIO VARCHAR(100),     '#10' HORAFINAL VARCHA' +
              'R(100),'#10' REFERENCIA VARCHAR(100),'#10' IDESTACION INT,'#10' NOMBREEMPLEA' +
              'DO VARCHAR(100),'#10' FOTOEMPLEADO varbinary(MAX),'#10' FOTOBASE64 VARCH' +
              'AR(MAX))    '#10#10'INSERT INTO #HORARIOEMPLEADO'#10'SELECT HORARIOEMPLEAD' +
              'O.IDEMPLEADO, '#10'       LTRIM(RIGHT(convert(VARCHAR(20), HORARIOEM' +
              'PLEADO.HORAINICIO, 100),7)) HORAINICIO,'#10#9'   LTRIM(RIGHT(convert(' +
              'VARCHAR(20), HORARIOEMPLEADO.HORAFINAL, 100),7))  HORAFINAL,'#10'HOR' +
              'ARIOEMPLEADO.REFERENCIA, HORARIOEMPLEADO.IDESTACION, HORARIOEMPL' +
              'EADO.NOMBREEMPLEADO,'#10'EMPLEADO.FOTOEMPLEADO, '#39#39#10'FROM HORARIOEMPLE' +
              'ADO INNER JOIN EMPLEADO ON EMPLEADO.IDEMPLEADO = HORARIOEMPLEADO' +
              '.IDEMPLEADO'#10'WHERE HORARIOEMPLEADO.IDESTACION = :EstacionID'#10#10'DECL' +
              'ARE CMIEMPLEADO CURSOR FOR'#10'SELECT     IDEMPLEADO'#10'FROM         #H' +
              'ORARIOEMPLEADO'#10'OPEN CMIEMPLEADO'#10'FETCH NEXT FROM CMIEMPLEADO INTO' +
              ' @IDEMPLEADO'#10'    WHILE (@@FETCH_STATUS = 0)'#10#9'BEGIN'#10#9#9'SET @FOTOEM' +
              'PLEADO = (SELECT #HORARIOEMPLEADO.FOTOEMPLEADO FROM #HORARIOEMPL' +
              'EADO WHERE #HORARIOEMPLEADO.IDEMPLEADO = @IDEMPLEADO)'#10#10#9#9'SET @FO' +
              'TOBASE64 = (SELECT '#10'                          CAST('#39#39' AS XML).va' +
              'lue('#39'xs:base64Binary(sql:variable("@FOTOEMPLEADO"))'#39','#39'VARCHAR(MA' +
              'X)'#39') AS FOTOB64'#10'                          FROM #HORARIOEMPLEADO'#10 +
              '                          WHERE #HORARIOEMPLEADO.IDEMPLEADO = @I' +
              'DEMPLEADO)'#10#10'        UPDATE #HORARIOEMPLEADO'#10#9#9'SET FOTOBASE64 = @' +
              'FOTOBASE64 WHERE #HORARIOEMPLEADO.IDEMPLEADO = @IDEMPLEADO'#10#10#9#9'SE' +
              'T @FOTOEMPLEADO = NULL'#10#9#9'FETCH NEXT FROM CMIEMPLEADO INTO @IDEMP' +
              'LEADO      '#10'    END'#10'    CLOSE CMIEMPLEADO'#10'    DEALLOCATE CMIEMPL' +
              'EADO '#10#10'DECLARE @XML VARCHAR(MAX)'#10#10'SET @XML = (SELECT #HORARIOEMP' +
              'LEADO.IDEMPLEADO, #HORARIOEMPLEADO.HORAINICIO, #HORARIOEMPLEADO.' +
              'HORAFINAL, #HORARIOEMPLEADO.IDESTACION,'#10'       #HORARIOEMPLEADO.' +
              'NOMBREEMPLEADO, #HORARIOEMPLEADO.REFERENCIA, #HORARIOEMPLEADO.FO' +
              'TOBASE64 FROM #HORARIOEMPLEADO'#10'FOR XML RAW ('#39'SERVICES'#39'), ELEMENT' +
              'S)'#10#10'SELECT CAST(@COUNT AS VARCHAR(100)) + @XML AS XML'#10#10'DROP TABL' +
              'E #HORARIOEMPLEADO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenFotosEmpleado'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'IDESTACION'
            DataType = datInteger
            Value = '2601'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @XML VARCHAR(MAX)'#10'DECLARE @IDESTACION INT'#10'DECLARE @COUNT' +
              ' INT'#10#10'SET @IDESTACION = :IDESTACION'#10#10'SET @COUNT = (SELECT COUNT(' +
              'PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO) FROM PROGRAMAMANT' +
              'ENIMIENTO'#10'INNER JOIN MANTENIMIENTOACTIVIDAD ON MANTENIMIENTOACTI' +
              'VIDAD.IDPROGRAMAMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDPROGRAMA' +
              'MANTENIMIENTO'#10'INNER JOIN TIPOMANTENIMIENTO ON TIPOMANTENIMIENTO.' +
              'IDTIPOMANTENIMIENTO = PROGRAMAMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHE' +
              'RE PROGRAMAMANTENIMIENTO.IDESTACION = @IDESTACION AND MANTENIMIE' +
              'NTOACTIVIDAD.STATUS= '#39'PENDIENTE'#39' AND MONTH(MANTENIMIENTOACTIVIDA' +
              'D.FECHAAREALIZARMANTENIMIENTO) = MONTH(GETDATE())'#10'              ' +
              '                                       AND DAY(MANTENIMIENTOACTI' +
              'VIDAD.FECHAAREALIZARMANTENIMIENTO) = DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9 +
              #9' AND YEAR(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO) =' +
              ' YEAR(GETDATE()))'#10#10'SET @XML ='#10'(SELECT PROGRAMAMANTENIMIENTO.IDPR' +
              'OGRAMAMANTENIMIENTO, PROGRAMAMANTENIMIENTO.CODIGO, PROGRAMAMANTE' +
              'NIMIENTO.CONCEPTO, TIPOMANTENIMIENTO.CONCEPTO TIPOMANTO,'#10'       ' +
              'MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO, MANTENIMIENT' +
              'OACTIVIDAD.STATUS FROM PROGRAMAMANTENIMIENTO'#10'INNER JOIN MANTENIM' +
              'IENTOACTIVIDAD ON MANTENIMIENTOACTIVIDAD.IDPROGRAMAMANTENIMIENTO' +
              ' = PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO'#10'INNER JOIN TIPO' +
              'MANTENIMIENTO ON TIPOMANTENIMIENTO.IDTIPOMANTENIMIENTO = PROGRAM' +
              'AMANTENIMIENTO.IDTIPOMOVIMIENTO'#10'WHERE PROGRAMAMANTENIMIENTO.IDES' +
              'TACION = @IDESTACION AND MANTENIMIENTOACTIVIDAD.STATUS= '#39'PENDIEN' +
              'TE'#39' AND MONTH(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMIENTO' +
              ') = MONTH(GETDATE())'#10'                                           ' +
              '          AND DAY(MANTENIMIENTOACTIVIDAD.FECHAAREALIZARMANTENIMI' +
              'ENTO) = DAY(GETDATE())'#10#9#9#9#9#9#9#9#9#9#9#9#9#9' AND YEAR(MANTENIMIENTOACTIV' +
              'IDAD.FECHAAREALIZARMANTENIMIENTO) = YEAR(GETDATE())'#10'FOR XML RAW ' +
              '('#39'SERVICES'#39'), ELEMENTS)'#10#10'SELECT CAST(@COUNT AS VARCHAR(100)) + @' +
              'XML AS XML'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'XML'
                TableField = 'XML'
              end>
          end>
        Name = 'spObtenNotificacionesDiarias'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'XML'
            DataType = datInteger
          end>
      end
      item
        Params = <
          item
            Name = 'IDMANTENIMIENTOACTIVIDAD'
            DataType = datInteger
            Value = '1'
            ParamType = daptInput
          end
          item
            Name = 'STATUS'
            DataType = datString
            Size = 65536
            Value = 'Actividad no Realizada'
            ParamType = daptInput
          end
          item
            Name = 'NOTA'
            DataType = datString
            Size = 65536
            Value = 'falto equipo'
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDMANTE INT'#10'DECLARE @FECHAAREALIZARMANTENIMIENTO AS DAT' +
              'ETIME'#10'DECLARE @PERIODICIDAD AS VARCHAR(100)'#10'DECLARE @FECHA AS DA' +
              'TETIME'#10'DECLARE @IDPROGRAMAMANTENIMIENTO INT'#10#10'SET @IDPROGRAMAMANT' +
              'ENIMIENTO = (SELECT IDPROGRAMAMANTENIMIENTO FROM MANTENIMIENTOAC' +
              'TIVIDAD WHERE IDMANTENIMIENTOACTIVIDAD = :IDMANTENIMIENTOACTIVID' +
              'AD)'#10'SET @FECHAAREALIZARMANTENIMIENTO= (SELECT FECHAAREALIZARMANT' +
              'ENIMIENTO FROM MANTENIMIENTOACTIVIDAD'#10'                          ' +
              '         WHERE IDMANTENIMIENTOACTIVIDAD = :IDMANTENIMIENTOACTIVI' +
              'DAD)'#10'SET @PERIODICIDAD = (SELECT PROGRAMAMANTENIMIENTO.PERIODICI' +
              'DAD FROM MANTENIMIENTOACTIVIDAD INNER JOIN'#10'PROGRAMAMANTENIMIENTO' +
              ' ON PROGRAMAMANTENIMIENTO.IDPROGRAMAMANTENIMIENTO = MANTENIMIENT' +
              'OACTIVIDAD.IDPROGRAMAMANTENIMIENTO'#10'WHERE IDMANTENIMIENTOACTIVIDA' +
              'D = :IDMANTENIMIENTOACTIVIDAD)'#10'SET @IDMANTE = (SELECT ISNULL(MAX' +
              '(IDMANTENIMIENTOACTIVIDAD),0)+1 FROM MANTENIMIENTOACTIVIDAD)'#10#10'IF' +
              ' (@PERIODICIDAD = '#39'DIARIO'#39')'#10#9'SET @FECHA = DATEADD(day, 1, @FECHA' +
              'AREALIZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'SEMANAL'#39')'#10#9'SET @FE' +
              'CHA = DATEADD(day, 7, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PERIOD' +
              'ICIDAD = '#39'MENSUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 1, @FECHAAREALI' +
              'ZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'TRIMESTRAL'#39')'#10#9'SET @FECHA' +
              ' = DATEADD(month, 3, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PERIODI' +
              'CIDAD = '#39'CUATRIMESTRAL'#39')'#10#9'SET @FECHA = DATEADD(month, 4, @FECHAA' +
              'REALIZARMANTENIMIENTO)'#10#10'IF (@PERIODICIDAD = '#39'SEMESTRAL'#39')'#10#9'SET @F' +
              'ECHA = DATEADD(month, 6, @FECHAAREALIZARMANTENIMIENTO)'#10#10'IF (@PER' +
              'IODICIDAD = '#39'ANUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 12, @FECHAAREA' +
              'LIZARMANTENIMIENTO)'#10#9#10'UPDATE MANTENIMIENTOACTIVIDAD'#10'SET STATUS =' +
              ' :STATUS,'#10'    REFERENCIA = :NOTA'#10'WHERE IDMANTENIMIENTOACTIVIDAD ' +
              '= :IDMANTENIMIENTOACTIVIDAD'#10#9#10'INSERT INTO MANTENIMIENTOACTIVIDAD' +
              #10'SELECT @IDMANTE, @IDPROGRAMAMANTENIMIENTO, @FECHA, '#39'PENDIENTE'#39',' +
              ' '#39#39#10#10'SELECT '#39'ACTIVIDAD REGISTRADA, SE REAGENDO LA ACTIVIDAD SEGU' +
              'N SU PERIODICIDAD'#39' AS RESULTADO'
            StatementType = stSQL
            ColumnMappings = <
              item
                DatasetField = 'RESULTADO'
                TableField = 'RESULTADO'
              end>
          end>
        Name = 'spRegistraActividadRealizada'
        BusinessRulesClient.CompileOnServer = False
        BusinessRulesClient.RunOnClientAndServer = False
        Fields = <
          item
            Name = 'RESULTADO'
            DataType = datString
            Size = 68
          end>
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
      end
      item
        Params = <
          item
            Name = 'IDPROGRAMAMANTENIMIENTO'
            Value = ''
            ParamType = daptInput
          end
          item
            Name = 'IDESTACION'
            Value = ''
            ParamType = daptInput
          end>
        Statements = <
          item
            Connection = 'BitacoraEstacionServ'
            ConnectionType = 'MSSQL'
            Default = True
            SQL = 
              'DECLARE @IDMANTENIMIENTOACTIVIDAD INT'#10'DECLARE @IDPROGRAMAMANTENI' +
              'MIENTO INT'#10'DECLARE @IDESTACION INT'#10'DECLARE @FECHA DATETIME'#10'DECLA' +
              'RE @PERIODICIDAD VARCHAR(30)'#10#10'SET @IDPROGRAMAMANTENIMIENTO = :ID' +
              'PROGRAMAMANTENIMIENTO'#10'SET @IDESTACION = :IDESTACION'#10#10'SET @PERIOD' +
              'ICIDAD = (SELECT PERIODICIDAD FROM PROGRAMAMANTENIMIENTO WHERE I' +
              'DPROGRAMAMANTENIMIENTO = @IDPROGRAMAMANTENIMIENTO AND IDESTACION' +
              ' = @IDESTACION)'#10'SET @FECHA = (SELECT FECHAMANTENIMIENTO FROM PRO' +
              'GRAMAMANTENIMIENTO WHERE IDPROGRAMAMANTENIMIENTO = @IDPROGRAMAMA' +
              'NTENIMIENTO AND IDESTACION = @IDESTACION)'#10'SET @IDMANTENIMIENTOAC' +
              'TIVIDAD = (SELECT ISNULL(MAX(IDMANTENIMIENTOACTIVIDAD),0)+1 FROM' +
              ' MANTENIMIENTOACTIVIDAD)'#10#10'SELECT @IDMANTENIMIENTOACTIVIDAD'#10#10'IF (' +
              '@PERIODICIDAD = '#39'DIARIO'#39')'#10#9'SET @FECHA = DATEADD(day, 1, @FECHA)'#10 +
              #10'IF (@PERIODICIDAD = '#39'SEMANAL'#39')'#10#9'SET @FECHA = DATEADD(day, 7, @F' +
              'ECHA)'#10#10'IF (@PERIODICIDAD = '#39'MENSUAL'#39')'#10#9'SET @FECHA = DATEADD(mont' +
              'h, 1, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'TRIMESTRAL'#39')'#10#9'SET @FECHA = D' +
              'ATEADD(month, 3, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'CUATRIMESTRAL'#39')'#10#9 +
              'SET @FECHA = DATEADD(month, 4, @FECHA)'#10#10'IF (@PERIODICIDAD = '#39'SEM' +
              'ESTRAL'#39')'#10#9'SET @FECHA = DATEADD(month, 6, @FECHA)'#10#10'IF (@PERIODICI' +
              'DAD = '#39'ANUAL'#39')'#10#9'SET @FECHA = DATEADD(month, 12, @FECHA)'#10#10'INSERT ' +
              'INTO MANTENIMIENTOACTIVIDAD'#10'SELECT @IDMANTENIMIENTOACTIVIDAD, @I' +
              'DPROGRAMAMANTENIMIENTO, @FECHA, '#39'PENDIENTE'#39', '#39#39
            StatementType = stSQL
            ColumnMappings = <>
          end>
        Name = 'cmdProgramaMantenimiento'
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
