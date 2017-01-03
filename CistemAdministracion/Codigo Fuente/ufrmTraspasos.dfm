inherited FrmTraspaso: TFrmTraspaso
  Left = 320
  Align = alClient
  Position = poDesigned
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object pgcFacturacion: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 443
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
  end
  object cxPagTraspaso: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabTraspaso
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object cxTabTraspaso: TcxTabSheet
      Caption = 'Traspasos'
      ImageIndex = 53
      object grbEncabezado: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        TabStop = True
        Align = alTop
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 97
        Width = 616
        object cxLabel5: TcxLabel
          Left = 125
          Top = 8
          Hint = ''
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 8
          Hint = ''
          Caption = 'Fecha'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbTxtFolio: TcxDBTextEdit
          Left = 125
          Top = 24
          Hint = ''
          DataBinding.DataField = 'Folio'
          DataBinding.DataSource = dsTransaccion
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 117
        end
        object dbDatFecha: TcxDBDateEdit
          Left = 12
          Top = 24
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsTransaccion
          Enabled = False
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 101
        end
        object cxLabel2: TcxLabel
          Left = 12
          Top = 47
          Hint = ''
          Caption = 'Estacion Destino'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbTurno: TcxDBLookupComboBox
          Left = 248
          Top = 63
          Hint = ''
          DataBinding.DataField = 'AlmacenDestinoID'
          DataBinding.DataSource = dsTransaccion
          Properties.KeyFieldNames = 'AlmacenID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAlmacenDestino
          Properties.ReadOnly = False
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          OnEnter = dbTurnoEnter
          OnExit = dbTurnoExit
          Width = 230
        end
        object txtTurnoActual: TcxLabel
          Left = 496
          Top = 25
          Hint = ''
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 97
        Hint = ''
        Align = alClient
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 1
        Height = 319
        Width = 616
        object cxGrid1: TcxGrid
          Left = 2
          Top = 5
          Width = 612
          Height = 312
          Hint = ''
          Align = alClient
          TabOrder = 0
          OnEnter = cxGrid1Enter
          OnExit = cxGrid1Exit
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView3: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsDetalleTransaccion
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '####0.#0'
                Kind = skSum
                Column = cxGridDBTableView3Cantidad
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            Styles.ContentEven = DM.cxStyle1
            object cxGridDBTableView3ProductoID: TcxGridDBColumn
              Caption = 'Producto'
              DataBinding.FieldName = 'ProductoID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Properties.OnValidate = cxGridDBTableView3ProductoIDPropertiesValidate
              Width = 66
            end
            object cxGridDBTableView3Descripcion: TcxGridDBColumn
              DataBinding.FieldName = 'Descripcion'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Options.Editing = False
              Options.Focusing = False
              Width = 326
            end
            object cxGridDBTableView3Cantidad: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Width = 87
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
    end
  end
  object dbCbxAlmacenOrigen: TcxDBLookupComboBox
    Left = 248
    Top = 24
    Hint = ''
    DataBinding.DataField = 'AlmacenID'
    DataBinding.DataSource = dsTransaccion
    Properties.KeyFieldNames = 'AlmacenID'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListSource = dsAlmacen
    Style.BorderStyle = ebsUltraFlat
    TabOrder = 2
    Width = 230
  end
  object cxLabel1: TcxLabel
    Left = 252
    Top = 8
    Hint = ''
    Caption = 'Almacen Origen'
    Style.BorderStyle = ebsNone
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 252
    Top = 47
    Hint = ''
    Caption = 'Almacen Destino'
    Style.BorderStyle = ebsNone
    Transparent = True
  end
  object dbCbxEstacionDestino: TcxDBLookupComboBox
    Left = 15
    Top = 66
    Hint = ''
    DataBinding.DataField = 'EstacionDestinoID'
    DataBinding.DataSource = dsTransaccion
    Properties.KeyFieldNames = 'EstacionID'
    Properties.ListColumns = <
      item
        FieldName = 'Nombre'
      end>
    Properties.ListSource = dsEstacion
    Style.BorderStyle = ebsUltraFlat
    TabOrder = 3
    Width = 230
  end
  object cdsProveedor: TDACDSDataTable
    Fields = <
      item
        Name = 'ProveedorId'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 40
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Fax'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Email'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'DiasPlazo'
        DataType = datInteger
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end>
    LogicalName = 'ObtenerDatosProveedor'
    Params = <
      item
        Name = 'ProveedorID'
        Value = '1'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 64
    Top = 360
  end
  object dsProveedor: TDADataSource
    DataSet = cdsProveedor.Dataset
    DataTable = cdsProveedor
    Left = 64
    Top = 392
  end
  object dsProducto: TDADataSource
    DataSet = cdsProducto.Dataset
    DataTable = cdsProducto
    Left = 96
    Top = 392
  end
  object cdsProducto: TDACDSDataTable
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'PrecioVenta'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Costo'
        DataType = datFloat
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'Barras'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CuentaContableCompra'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableVenta'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Inventariable'
        DataType = datBoolean
      end
      item
        Name = 'CategoriaID'
        DataType = datInteger
        Required = True
      end>
    LogChanges = False
    LogicalName = 'ObtenerProductoPorTipo'
    Params = <
      item
        Name = 'Tipo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 96
    Top = 360
  end
  object dsDetalleTransaccion: TDADataSource
    DataSet = cdsDetalleTransaccion.Dataset
    DataTable = cdsDetalleTransaccion
    Left = 32
    Top = 392
  end
  object dsTransaccion: TDADataSource
    DataSet = cdsTransaccion.Dataset
    DataTable = cdsTransaccion
    Top = 390
  end
  object cdsFormaPago: TDACDSDataTable
    Fields = <
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
        Required = True
      end>
    LogicalName = 'dbo FormaPago'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 128
    Top = 360
  end
  object dsFormaPago: TDADataSource
    DataSet = cdsFormaPago.Dataset
    DataTable = cdsFormaPago
    Left = 128
    Top = 392
  end
  object cdsEstacion: TDACDSDataTable
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
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
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        Required = True
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
        Size = 20
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        Required = True
      end>
    LogChanges = False
    LogicalName = 'ObtenerDatosEstacion'
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 232
    Top = 456
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 264
    Top = 456
  end
  object cdsTransaccion: TDACDSDataTable
    Fields = <
      item
        Name = 'TransaccionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'Tipo'
        DataType = datString
        Size = 2
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Dia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Total'
        DataType = datFloat
      end
      item
        Name = 'SubTotal'
        DataType = datFloat
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
      end
      item
        Name = 'Plazo'
        DataType = datInteger
      end
      item
        Name = 'Secuencia'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ProveedorId'
        DataType = datInteger
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionDestinoID'
        DataType = datInteger
      end
      item
        Name = 'AlmacenDestinoID'
        DataType = datInteger
      end>
    LogicalName = 'dbo Transaccion'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterPost = cdsTransaccionAfterPost
    BeforePost = cdsTransaccionBeforePost
    OnNewRecord = cdsTransaccionNewRecord
    IndexDefs = <>
    Top = 360
  end
  object cdsDetalleTransaccion: TDACDSDataTable
    DetailFields = 'TransaccionID'
    Fields = <
      item
        Name = 'DetalleTransaccionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
        Required = True
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
      end
      item
        Name = 'Costo'
        DataType = datFloat
        Required = True
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
      end
      item
        Name = 'TransaccionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 30
        LogChanges = False
        DisplayLabel = 'Descripci'#243'n'
        Lookup = True
        LookupSource = dsProducto
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
        LogChanges = False
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        Calculated = True
      end>
    LogicalName = 'DetalleTransaccion'
    MasterFields = 'TransaccionID'
    MasterParamsMappings.Strings = (
      'TransaccionID=TransaccionID')
    MasterSource = dsTransaccion
    Params = <
      item
        Name = 'TransaccionID'
        Value = 9
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    OnNewRecord = cdsDetalleTransaccionNewRecord
    IndexDefs = <>
    Left = 32
    Top = 360
  end
  object cdsAlmacen: TDACDSDataTable
    Fields = <
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    LogicalName = 'EstacionAlmacen'
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 160
    Top = 360
  end
  object dsAlmacen: TDADataSource
    DataSet = cdsAlmacen.Dataset
    DataTable = cdsAlmacen
    Left = 160
    Top = 392
  end
  object cdsDetalleMovimiento: TDACDSDataTable
    Fields = <
      item
        Name = 'DetalleMovimientoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Tipo'
        DataType = datString
        Size = 2
        Required = True
      end
      item
        Name = 'Operador'
        DataType = datString
        Size = 2
        Required = True
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Costo'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'MovimientoAlmacen'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'TransaccionID'
        DataType = datInteger
      end>
    LogicalName = 'DetalleMovimiento'
    MasterParamsMappings.Strings = (
      'FacturaID=FacturaID')
    Params = <
      item
        Name = 'TransaccionID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 192
    Top = 360
  end
  object dsDetalleMovimiento: TDADataSource
    DataSet = cdsDetalleMovimiento.Dataset
    DataTable = cdsDetalleMovimiento
    Left = 192
    Top = 392
  end
  object cdsMovimientoAlmacen: TDACDSDataTable
    Fields = <
      item
        Name = 'MovimientoAlmacen'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    LogicalName = 'dbo MovimientoAlmacen'
    MasterParamsMappings.Strings = (
      'FacturaID=FacturaID')
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 224
    Top = 360
  end
  object dsMovimientoAlmacen: TDADataSource
    DataSet = cdsMovimientoAlmacen.Dataset
    DataTable = cdsMovimientoAlmacen
    Left = 224
    Top = 392
  end
  object cdsAlmacenDestino: TDACDSDataTable
    Fields = <
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    LogicalName = 'EstacionAlmacen'
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 256
    Top = 360
  end
  object dsAlmacenDestino: TDADataSource
    DataSet = cdsAlmacenDestino.Dataset
    DataTable = cdsAlmacenDestino
    Left = 256
    Top = 392
  end
  object cdsEstaciones: TDACDSDataTable
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'NoEstacion'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        Required = True
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
        Required = True
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        Required = True
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        Required = True
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
        Size = 20
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        Required = True
      end>
    LogicalName = 'dbo Estacion'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 288
    Top = 360
  end
  object dsEstaciones: TDADataSource
    DataSet = cdsEstaciones.Dataset
    DataTable = cdsEstaciones
    Left = 288
    Top = 392
  end
  object cdsObtenerNoBomba: TDACDSDataTable
    Fields = <
      item
        Name = 'NoBomba'
        DataType = datInteger
      end>
    LogicalName = 'spObtenerNoBombaParaTraspaso'
    Params = <
      item
        Name = 'AlmacenID'
        Value = '4'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 320
    Top = 360
  end
  object dsObtenerNoBomba: TDADataSource
    DataSet = cdsObtenerNoBomba.Dataset
    DataTable = cdsObtenerNoBomba
    Left = 320
    Top = 392
  end
end
