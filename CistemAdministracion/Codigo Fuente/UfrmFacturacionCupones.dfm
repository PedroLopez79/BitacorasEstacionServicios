inherited FrmFacturacionCupones: TFrmFacturacionCupones
  Left = 320
  Align = alClient
  Caption = 'FrmFacturacionCupones'
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
    ActivePage = cxTabFacturacion
    Align = alClient
    Images = dmImages.Imagenes
    LookAndFeel.NativeStyle = False
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 424
    ClientRectRight = 625
    ClientRectTop = 0
    object cxTabFacturacion: TcxTabSheet
      Caption = 'Facturaci'#243'n '
      ImageIndex = 37
      object GrBoxDatos: TcxGroupBox
        Left = 0
        Top = 0
        TabStop = True
        Align = alTop
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 171
        Width = 625
        object LblFolio: TcxLabel
          Left = 204
          Top = 8
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblNoCliente: TcxLabel
          Left = 8
          Top = 47
          Caption = 'Cliente'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblRFC: TcxLabel
          Left = 450
          Top = 47
          Caption = 'RFC'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblFecha: TcxLabel
          Left = 10
          Top = 8
          Caption = 'Fecha'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblDireccion: TcxLabel
          Left = 8
          Top = 87
          Caption = 'Direcci'#243'n'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblColnia: TcxLabel
          Left = 450
          Top = 87
          Caption = 'Colonia'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCiudad: TcxLabel
          Left = 8
          Top = 124
          Caption = 'Ciudad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCodigoPostal: TcxLabel
          Left = 312
          Top = 124
          Caption = 'Codigo Postal'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 93
          Top = 47
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDbTxtFolio: TcxDBTextEdit
          Left = 204
          Top = 24
          DataBinding.DataField = 'Folio'
          DataBinding.DataSource = dsFactura
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 117
        end
        object cxDBTxtCliente: TcxDBTextEdit
          Left = 10
          Top = 64
          DataBinding.DataField = 'ClienteID'
          DataBinding.DataSource = dsFactura
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          OnExit = cxDBTxtClienteExit
          Width = 77
        end
        object cxDBTxtNombre: TcxDBTextEdit
          Left = 93
          Top = 64
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 351
        end
        object cxDBTxtRFC: TcxDBTextEdit
          Left = 450
          Top = 64
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 14
          Width = 161
        end
        object cxDBTxtDireccion: TcxDBTextEdit
          Left = 10
          Top = 102
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 15
          Width = 434
        end
        object cxDBTxtColonia: TcxDBTextEdit
          Left = 450
          Top = 102
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 16
          Width = 161
        end
        object cxDBTxtCiudad: TcxDBTextEdit
          Left = 10
          Top = 140
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 17
          Width = 296
        end
        object cxDBTxtCP: TcxDBTextEdit
          Left = 312
          Top = 140
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCliente
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 18
          Width = 132
        end
        object cxDBDateFecha: TcxDBDateEdit
          Left = 10
          Top = 24
          TabStop = False
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsFactura
          Enabled = False
          TabOrder = 19
          Width = 132
        end
        object cxDBTxtSerie: TcxDBTextEdit
          Left = 150
          Top = 24
          DataBinding.DataField = 'Serie'
          DataBinding.DataSource = dsFactura
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnExit = cxDBTxtSerieExit
          Width = 47
        end
        object cxLabel3: TcxLabel
          Left = 150
          Top = 8
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cbxFormaPago: TcxDBLookupComboBox
          Left = 327
          Top = 24
          DataBinding.DataField = 'FormaPago'
          DataBinding.DataSource = dsFactura
          Properties.KeyFieldNames = 'FormaPagoID'
          Properties.ListColumns = <
            item
              FieldName = 'FormaPagoID'
            end
            item
              Caption = 'Descripci'#243'n'
              FieldName = 'Descripcion'
            end>
          Properties.ListSource = dsFormaPago
          TabOrder = 2
          Width = 117
        end
        object cxLabel2: TcxLabel
          Left = 327
          Top = 8
          Caption = 'Forma de Pago'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 352
        Align = alBottom
        TabOrder = 1
        Height = 72
        Width = 625
        object LblFacturacionIva: TcxLabel
          Left = 439
          Top = 32
          Caption = 'IVA'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblFacturacionTotal: TcxLabel
          Left = 439
          Top = 55
          Caption = 'Total'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtTotalFactura: TcxDBTextEdit
          Left = 495
          Top = 51
          TabStop = False
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = dsFactura
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
        object txtImpuestoFactura: TcxDBTextEdit
          Left = 495
          Top = 29
          TabStop = False
          DataBinding.DataField = 'Impuesto'
          DataBinding.DataSource = dsFactura
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
        object txtSubTotalFactura: TcxDBTextEdit
          Left = 495
          Top = 7
          TabStop = False
          DataBinding.DataField = 'Subtotal'
          DataBinding.DataSource = dsFactura
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
        object LblFacturacionSubtotal: TcxLabel
          Left = 439
          Top = 11
          Caption = 'Subtotal'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 171
        Align = alClient
        TabOrder = 2
        Height = 181
        Width = 625
        object GridFacturacion: TcxGrid
          Left = 2
          Top = 16
          Width = 621
          Height = 163
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          object GridFacturacionDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDetalleFactura
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            object GridFacturacionDBTableView1ProductoID: TcxGridDBColumn
              DataBinding.FieldName = 'ProductoID'
            end
            object GridFacturacionDBTableView1Descripcion: TcxGridDBColumn
              DataBinding.FieldName = 'Descripcion'
              Width = 342
            end
            object GridFacturacionDBTableView1Cantidad: TcxGridDBColumn
              DataBinding.FieldName = 'Cantidad'
            end
            object GridFacturacionDBTableView1PrecioCalculado: TcxGridDBColumn
              Caption = 'Precio'
              DataBinding.FieldName = 'PrecioCalculado'
              Options.Editing = False
              Options.Focusing = False
            end
            object GridFacturacionDBTableView1Importe: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              Options.Editing = False
              Options.Focusing = False
              Width = 77
            end
          end
          object GridFacturacionLevel1: TcxGridLevel
            GridView = GridFacturacionDBTableView1
          end
        end
      end
    end
    object cxTabTicket: TcxTabSheet
      Caption = 'Tickets '
      ImageIndex = 21
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        TabOrder = 0
        Height = 424
        Width = 625
        object grdTicket: TcxGrid
          Left = 2
          Top = 16
          Width = 621
          Height = 406
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfStandard
          LookAndFeel.NativeStyle = True
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsTicketFactura
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Kind = skSum
                Position = spFooter
                Column = cxGridDBTableView1Volumen
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,###,##0.#0'
                Kind = skSum
                Column = cxGridDBTableView1Volumen
              end
              item
                Kind = skSum
                Column = cxGridDBTableView1Importe
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            object cxGridDBTableView1TicketID: TcxGridDBColumn
              DataBinding.FieldName = 'TicketID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.OnValidate = cxGridDBTableView1TicketIDPropertiesValidate
            end
            object cxGridDBTableView1Fecha: TcxGridDBColumn
              DataBinding.FieldName = 'Fecha'
            end
            object cxGridDBTableView1Producto: TcxGridDBColumn
              DataBinding.FieldName = 'ProductoID'
              Width = 62
            end
            object cxGridDBTableView1Nombre: TcxGridDBColumn
              DataBinding.FieldName = 'Nombre'
              Width = 167
            end
            object cxGridDBTableView1Volumen: TcxGridDBColumn
              DataBinding.FieldName = 'Volumen'
            end
            object cxGridDBTableView1Precio: TcxGridDBColumn
              DataBinding.FieldName = 'Precio'
            end
            object cxGridDBTableView1Importe: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object cbxListaTicket: TcxComboBox
          Left = 504
          Top = 348
          TabStop = False
          TabOrder = 1
          Text = 'cbxListaTicket'
          Visible = False
          Width = 121
        end
      end
    end
  end
  object cdsCliente: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 40
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Curp'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Status'
        DataType = datBoolean
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'AutorizaCheque'
        DataType = datBoolean
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'TicketBoucher'
        DataType = datBoolean
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'AutorizaValeCredito'
        DataType = datBoolean
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContableAnticipo'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContableCredito'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'ClienteID'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ObtenerDatosCliente'
    IndexDefs = <>
    Left = 552
    Top = 280
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 584
    Top = 280
  end
  object dsProducto: TDADataSource
    DataSet = cdsProducto.Dataset
    DataTable = cdsProducto
    Left = 584
    Top = 312
  end
  object cdsProducto: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ProductoId'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'PrecioVenta'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'EstacionID'
        BlobType = dabtUnknown
        Value = '1'
        ParamType = daptInput
      end>
    LogChanges = False
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ObtenerProductoPrecio'
    IndexDefs = <>
    Left = 552
    Top = 312
  end
  object cdsDetalleFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DetalleFacturaID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Precio'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ItemNo'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        LogChanges = False
        DisplayWidth = 0
        DisplayLabel = 'Descripci'#243'n'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = True
        LookupSource = dsProducto
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = False
      end
      item
        Name = 'Importe'
        DataType = datFloat
        BlobType = dabtUnknown
        LogChanges = False
        DefaultValue = '0'
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = True
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'PrecioCalculado'
        DataType = datFloat
        BlobType = dabtUnknown
        LogChanges = False
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = True
        LookupSource = dsProducto
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'PrecioVenta'
        KeyFields = 'ProductoID'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'FacturaID'
        BlobType = dabtUnknown
        Value = '1'
        ParamType = daptInput
      end>
    MasterParamsMappings.Strings = (
      'FacturaID=FacturaID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsDetalleFacturaBeforePost
    AfterPost = cdsDetalleFacturaAfterPost
    OnCalcFields = cdsDetalleFacturaCalcFields
    OnNewRecord = cdsDetalleFacturaNewRecord
    ReadOnly = False
    MasterSource = dsFactura
    MasterFields = 'FacturaID'
    DetailFields = 'FacturaID'
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    Filtered = True
    LogicalName = 'DetalleFactura'
    IndexDefs = <>
    Left = 552
    Top = 248
  end
  object dsDetalleFactura: TDADataSource
    DataSet = cdsDetalleFactura.Dataset
    DataTable = cdsDetalleFactura
    Left = 584
    Top = 248
  end
  object cdsFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FacturaID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Folio'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'TipoFactura'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Periodo'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Dia'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Subtotal'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Total'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ImpuestoPorcentaje'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'FormaPago'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Turno'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Cancelada'
        DataType = datBoolean
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsFacturaBeforePost
    AfterPost = cdsFacturaAfterPost
    OnCalcFields = cdsDetalleFacturaCalcFields
    OnNewRecord = cdsFacturaNewRecord
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo Factura'
    IndexDefs = <>
    Left = 552
    Top = 216
  end
  object dsFactura: TDADataSource
    DataSet = cdsFactura.Dataset
    DataTable = cdsFactura
    Left = 584
    Top = 216
  end
  object cdsFormaPago: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FormaPagoID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'dbo FormaPago'
    IndexDefs = <>
    Left = 552
    Top = 344
  end
  object dsFormaPago: TDADataSource
    DataSet = cdsFormaPago.Dataset
    DataTable = cdsFormaPago
    Left = 584
    Top = 344
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 80
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Host'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'EstacionID'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    LogChanges = False
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ObtenerDatosEstacion'
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
  object cdsTicketFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TicketFacturaID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'TicketID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Volumen'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Precio'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Importe'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taRightJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        LogChanges = False
        Required = True
        DisplayWidth = 30
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        Lookup = True
        LookupSource = dsProducto
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'FacturaID'
        BlobType = dabtUnknown
        Value = '1'
        ParamType = daptInput
      end>
    MasterParamsMappings.Strings = (
      'FacturaID=FacturaID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsTicketFacturaBeforePost
    AfterPost = cdsTicketFacturaAfterPost
    BeforeDelete = cdsTicketFacturaBeforeDelete
    OnNewRecord = cdsTicketFacturaNewRecord
    ReadOnly = False
    MasterSource = dsFactura
    MasterFields = 'FacturaID'
    DetailFields = 'FacturaID'
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'TicketFactura'
    IndexDefs = <>
    Left = 552
    Top = 376
  end
  object dsTicketFactura: TDADataSource
    DataSet = cdsTicketFactura.Dataset
    DataTable = cdsTicketFactura
    Left = 584
    Top = 376
  end
end
