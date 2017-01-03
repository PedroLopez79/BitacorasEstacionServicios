inherited frmComprasCombustible: TfrmComprasCombustible
  Caption = 'frmComprasCombustible'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = cxTabSheet1
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = 'Compra de Combustible'
      ImageIndex = 62
      object grbEncabezado: TcxGroupBox
        Left = 0
        Top = 0
        TabStop = True
        Align = alTop
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 137
        Width = 616
        object Label1: TLabel
          Left = 306
          Top = 105
          Width = 21
          Height = 13
          Caption = 'd'#237'as'
        end
        object cxLabel5: TcxLabel
          Left = 125
          Top = 8
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 47
          Caption = 'Proveedor'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 86
          Caption = 'Factura Compra'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 10
          Top = 8
          Caption = 'Fecha'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 125
          Top = 47
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbTxtFolio: TcxDBTextEdit
          Left = 125
          Top = 24
          DataBinding.DataField = 'Folio'
          DataBinding.DataSource = dsTransaccion
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 117
        end
        object dbTxtProveedor: TcxDBTextEdit
          Left = 10
          Top = 64
          DataBinding.DataField = 'ProveedorId'
          DataBinding.DataSource = dsTransaccion
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          OnEnter = dbTxtProveedorEnter
          OnExit = dbTxtProveedorExit
          OnKeyDown = dbTxtProveedorKeyDown
          Width = 103
        end
        object cxDbNombre: TcxDBTextEdit
          Left = 125
          Top = 64
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsProveedor
          Enabled = False
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 11
          Width = 468
        end
        object cxDbTxtFacturaCompra: TcxDBTextEdit
          Left = 10
          Top = 102
          DataBinding.DataField = 'Referencia'
          DataBinding.DataSource = dsTransaccion
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 103
        end
        object dbDatFecha: TcxDBDateEdit
          Left = 12
          Top = 24
          TabStop = False
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsTransaccion
          Enabled = False
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 12
          Width = 101
        end
        object dbCbxAlmacen: TcxDBLookupComboBox
          Left = 256
          Top = 24
          DataBinding.DataField = 'AlmacenID'
          DataBinding.DataSource = dsTransaccion
          Properties.KeyFieldNames = 'AlmacenID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAlmacen
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 226
        end
        object cxLabel2: TcxLabel
          Left = 256
          Top = 8
          Caption = 'Almacen'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbChCredito: TcxDBCheckBox
          Left = 125
          Top = 102
          Caption = 'Compra de cr'#233'dito'
          DataBinding.DataField = 'Credito'
          DataBinding.DataSource = dsTransaccion
          TabOrder = 4
          Width = 121
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 252
          Top = 102
          DataBinding.DataField = 'Plazo'
          DataBinding.DataSource = dsTransaccion
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 48
        end
        object cxLabel1: TcxLabel
          Left = 252
          Top = 86
          Caption = 'Plazo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 137
        Align = alClient
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 1
        Height = 207
        Width = 616
        object cxGrid1: TcxGrid
          Left = 2
          Top = 18
          Width = 612
          Height = 187
          Align = alClient
          TabOrder = 0
          OnEnter = cxGrid1Enter
          OnExit = cxGrid1Exit
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          ExplicitTop = 16
          ExplicitWidth = 621
          ExplicitHeight = 197
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnEditKeyDown = cxGridDBTableView3EditKeyDown
            DataController.DataSource = dsDetalleTransaccion
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
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
              Width = 256
            end
            object cxGridDBTableView3Cantidad: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Properties.OnValidate = cxGridDBTableView3CantidadPropertiesValidate
              Width = 87
            end
            object cxGridDBTableView3Costo: TcxGridDBColumn
              DataBinding.FieldName = 'Costo'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Properties.OnValidate = cxGridDBTableView3CostoPropertiesValidate
              Width = 83
            end
            object cxGridDBTableView3Importe: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ValidateOnEnter = True
              Options.Editing = False
              Options.Focusing = False
              Width = 105
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 344
        Align = alBottom
        TabOrder = 2
        Height = 72
        Width = 616
        object cxLabel15: TcxLabel
          Left = 439
          Top = 32
          Caption = 'IVA'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel16: TcxLabel
          Left = 439
          Top = 55
          Caption = 'Total'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 495
          Top = 51
          TabStop = False
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dsTransaccion
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 121
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 495
          Top = 29
          TabStop = False
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = dsTransaccion
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 121
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 495
          Top = 6
          TabStop = False
          DataBinding.DataField = 'Subtotal'
          DataBinding.DataSource = dsTransaccion
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 121
        end
        object cxLabel20: TcxLabel
          Left = 439
          Top = 11
          Caption = 'Subtotal'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  object dsTransaccion: TDADataSource
    DataSet = cdsTransaccion.Dataset
    DataTable = cdsTransaccion
    Top = 388
  end
  object cdsTransaccion: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsTransaccionBeforePost
    AfterPost = cdsTransaccionAfterPost
    OnNewRecord = cdsTransaccionNewRecord
    LogicalName = 'dbo Transaccion'
    IndexDefs = <>
    Top = 360
  end
  object dsAlmacen: TDADataSource
    DataSet = cdsAlmacen.Dataset
    DataTable = cdsAlmacen
    Left = 29
    Top = 388
  end
  object cdsAlmacen: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
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
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'EstacionAlmacenAceptaCompra'
    IndexDefs = <>
    Left = 29
    Top = 360
  end
  object dsProveedor: TDADataSource
    DataSet = cdsProveedor.Dataset
    DataTable = cdsProveedor
    Left = 58
    Top = 388
  end
  object cdsProveedor: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <
      item
        Name = 'ProveedorID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosProveedor'
    IndexDefs = <>
    Left = 58
    Top = 360
  end
  object cdsDetalleTransaccion: TDACDSDataTable
    RemoteUpdatesOptions = []
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
      end
      item
        Name = 'Costo'
        DataType = datFloat
        Required = True
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
    Params = <
      item
        Name = 'TransaccionID'
        Value = ''
        ParamType = daptInput
      end>
    MasterParamsMappings.Strings = (
      'TransaccionID=TransaccionID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsDetalleTransaccionAfterPost
    OnCalcFields = cdsDetalleTransaccionCalcFields
    OnNewRecord = cdsDetalleTransaccionNewRecord
    MasterSource = dsTransaccion
    MasterFields = 'TransaccionID'
    DetailFields = 'TransaccionID'
    LogicalName = 'DetalleTransaccion'
    IndexDefs = <>
    Left = 86
    Top = 360
  end
  object dsDetalleTransaccion: TDADataSource
    DataSet = cdsDetalleTransaccion.Dataset
    DataTable = cdsDetalleTransaccion
    Left = 86
    Top = 389
  end
  object cdsProducto: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <
      item
        Name = 'Tipo'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = '4120'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerProductoPorTipo'
    IndexDefs = <>
    Left = 113
    Top = 360
  end
  object dsProducto: TDADataSource
    DataSet = cdsProducto.Dataset
    DataTable = cdsProducto
    Left = 114
    Top = 388
  end
  object dsEstacion: TDADataSource
    DataSet = cdsDetalleTransaccion.Dataset
    DataTable = cdsDetalleTransaccion
    Left = 144
    Top = 388
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosEstacion'
    IndexDefs = <>
    Left = 144
    Top = 360
  end
  object cdsMovimientoAlmacen: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo MovimientoAlmacen'
    IndexDefs = <>
    Left = 176
    Top = 360
  end
  object cdsDetalleMovimiento: TDACDSDataTable
    RemoteUpdatesOptions = []
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
    Params = <
      item
        Name = 'TransaccionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'DetalleMovimiento'
    IndexDefs = <>
    Left = 208
    Top = 360
  end
  object dsMovimientoalmacen: TDADataSource
    DataSet = cdsMovimientoAlmacen.Dataset
    DataTable = cdsMovimientoAlmacen
    Left = 176
    Top = 388
  end
  object dsDetalleMovimiento: TDADataSource
    DataSet = cdsDetalleMovimiento.Dataset
    DataTable = cdsDetalleMovimiento
    Left = 208
    Top = 389
  end
end
