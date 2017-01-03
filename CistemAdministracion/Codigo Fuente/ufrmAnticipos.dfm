inherited frmMovimientos: TfrmMovimientos
  Caption = 'frmMovimientos'
  ClientWidth = 845
  ExplicitWidth = 845
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 65
    Width = 845
    Height = 384
    ActivePage = cxTabSheet1
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 354
    ClientRectLeft = 3
    ClientRectRight = 839
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = 'Efectivo y Cheques '
      ImageIndex = 26
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grpAnticiposGlobales: TcxGroupBox
        Left = 39
        Top = 32
        Align = alCustom
        Caption = ' Anticipos Globales '
        TabOrder = 0
        Height = 303
        Width = 773
        object dbgAnticipos: TcxGrid
          Left = 82
          Top = 80
          Width = 761
          Height = 277
          Align = alCustom
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object dbgAnticiposDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAnticipo
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '#,#0.00'
                Kind = skSum
                Position = spFooter
                Column = dbgAnticiposDBTableView1TotalEntregado
              end
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = dbgAnticiposDBTableView1TotalEntregado
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '#,#0.00'
                Kind = skSum
                Column = dbgAnticiposDBTableView1TotalEntregado
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.InfoText = 'Haga Click aqu'#237' para agregar un nuevo registro'
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsData.CancelOnExit = False
            OptionsView.Footer = True
            OptionsView.Indicator = True
            object dbgAnticiposDBTableView1Column1: TcxGridDBColumn
              Caption = 'Tipo Valor'
              DataBinding.FieldName = 'TipoValorID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'TipoValorID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Width = 150
            end
            object dbgAnticiposDBTableView1TotalEntregado: TcxGridDBColumn
              Caption = 'Total Entregado'
              DataBinding.FieldName = 'TotalEntregado'
              Width = 100
            end
            object dbgAnticiposDBTableView1Column2: TcxGridDBColumn
              Caption = 'Agrupacion'
              DataBinding.FieldName = 'AgrupacionID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'AgrupacionID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsAgrupacion
              Width = 150
            end
            object dbgAnticiposDBTableView1Column3: TcxGridDBColumn
              Caption = 'Despachador'
              DataBinding.FieldName = 'DespachadorID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'DespachadorID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsDespachador
              Width = 200
            end
          end
          object dbgAnticiposLevel1: TcxGridLevel
            GridView = dbgAnticiposDBTableView1
          end
        end
      end
      object grpAnticipoDetallado: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = ' Anticipo Detallado'
        TabOrder = 1
        Visible = False
        Height = 351
        Width = 836
        object dbgAnticipoDetalle: TcxGrid
          Left = 35
          Top = 32
          Width = 760
          Height = 225
          Align = alCustom
          Enabled = False
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object dbgAnticipoDetalleDBTableView1: TcxGridDBTableView
            OnKeyDown = dbgAnticipoDetalleDBTableView1KeyDown
            NavigatorButtons.ConfirmDelete = False
            OnEditKeyDown = dbgAnticipoDetalleDBTableView1EditKeyDown
            DataController.DataSource = dsAnticipoDetalle
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,###,##0.#0'
                Kind = skSum
                Column = dbgAnticipoDetalleDBTableView1Importe
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            object dbgAnticipoDetalleDBTableView1TipoValorID: TcxGridDBColumn
              DataBinding.FieldName = 'TipoValorID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'TipoValorID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsTipoValorClientes
              Properties.OnChange = dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesChange
              Properties.OnEditValueChanged = dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesEditValueChanged
              Properties.OnPopup = dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesPopup
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1TipoValorIDPropertiesValidate
              Width = 102
            end
            object dbgAnticipoDetalleDBTableView1ClienteID: TcxGridDBColumn
              DataBinding.FieldName = 'ClienteID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Focusing = False
              Width = 107
            end
            object dbgAnticipoDetalleDBTableView1Ticket: TcxGridDBColumn
              DataBinding.FieldName = 'Ticket'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1TicketPropertiesValidate
              Options.Focusing = False
              Width = 76
            end
            object dbgAnticipoDetalleDBTableView1CuponID: TcxGridDBColumn
              DataBinding.FieldName = 'CuponID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1CuponIDPropertiesValidate
              Options.Focusing = False
              Width = 85
            end
            object dbgAnticipoDetalleDBTableView1BancoID: TcxGridDBColumn
              DataBinding.FieldName = 'BancoID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.KeyFieldNames = 'BancoID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsBanco
              Options.Focusing = False
              Width = 74
            end
            object dbgAnticipoDetalleDBTableView1SalidaID: TcxGridDBColumn
              DataBinding.FieldName = 'SalidaID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.KeyFieldNames = 'SalidaID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsSalida
              Options.Focusing = False
              Width = 72
            end
            object dbgAnticipoDetalleDBTableView1Referencia: TcxGridDBColumn
              DataBinding.FieldName = 'Referencia'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Focusing = False
              Width = 185
            end
            object dbgAnticipoDetalleDBTableView1Importe: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.ValidateOnEnter = True
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1ImportePropertiesValidate
            end
          end
          object dbgAnticipoDetalleLevel1: TcxGridLevel
            GridView = dbgAnticipoDetalleDBTableView1
          end
        end
        object GridMoneda: TcxGrid
          Left = 2
          Top = 18
          Width = 832
          Height = 331
          Align = alClient
          Enabled = False
          TabOrder = 3
          LookAndFeel.NativeStyle = True
          ExplicitTop = 16
          ExplicitWidth = 841
          ExplicitHeight = 341
          object cxGridDBTableView4: TcxGridDBTableView
            OnKeyDown = dbgAnticipoDetalleDBTableView1KeyDown
            NavigatorButtons.ConfirmDelete = False
            OnEditKeyDown = dbgAnticipoDetalleDBTableView1EditKeyDown
            DataController.DataSource = dsAnticipoDetalleMoneda
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,###,##0.#0'
                Kind = skSum
                Column = MonedaImporte
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            object MonedaTipoValor: TcxGridDBColumn
              DataBinding.FieldName = 'TipoValorID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'TipoValorID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsTipoValorMoneda
              Properties.OnEditValueChanged = MonedaTipoValorPropertiesEditValueChanged
              Width = 90
            end
            object MonedaClienteID: TcxGridDBColumn
              DataBinding.FieldName = 'ClienteID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Focusing = False
              Width = 60
            end
            object MonedaNombreCliente: TcxGridDBColumn
              Caption = 'Nombre del Cliente'
              DataBinding.FieldName = 'NombreCliente'
              Options.Focusing = False
              Width = 150
            end
            object MonedaTicket: TcxGridDBColumn
              DataBinding.FieldName = 'Ticket'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1TicketPropertiesValidate
              Options.Focusing = False
              Width = 76
            end
            object MonedaBanco: TcxGridDBColumn
              Caption = 'Banco'
              DataBinding.FieldName = 'BancoID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.KeyFieldNames = 'BancoID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsBanco
              Options.Focusing = False
              Width = 115
            end
            object MonedaReferencia: TcxGridDBColumn
              DataBinding.FieldName = 'Referencia'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Focusing = False
              Width = 150
            end
            object MonedaImporte: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.ValidateOnEnter = True
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1ImportePropertiesValidate
            end
          end
          object cxGridLevel4: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
        object cbxListaCupon: TcxComboBox
          Left = 18
          Top = 268
          TabOrder = 1
          Text = 'cbxListaCupon'
          Visible = False
          Width = 97
        end
        object cbxListaTicket: TcxComboBox
          Left = 18
          Top = 295
          TabOrder = 2
          Text = 'cbxListaTicket'
          Visible = False
          Width = 97
        end
      end
    end
    object cxTabClientes: TcxTabSheet
      Caption = 'Clientes'
      ImageIndex = 39
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = ' Clientes '
        TabOrder = 0
        Height = 351
        Width = 836
        object GridClientes: TcxGrid
          Left = 2
          Top = 18
          Width = 832
          Height = 331
          Align = alClient
          Enabled = False
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          ExplicitTop = 16
          ExplicitWidth = 841
          ExplicitHeight = 341
          object cxGridDBTableView3: TcxGridDBTableView
            OnKeyDown = cxGridDBTableView3KeyDown
            NavigatorButtons.ConfirmDelete = False
            OnEditKeyDown = cxGridDBTableView3EditKeyDown
            DataController.DataSource = dsAnticipoDetalleClientes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '##,###,##0.#0'
                Kind = skSum
                Column = ClientesImporte
              end>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsView.Footer = True
            object ClientesTipoValorID: TcxGridDBColumn
              DataBinding.FieldName = 'TipoValorID'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.CharCase = ecUpperCase
              Properties.ImmediatePost = True
              Properties.KeyFieldNames = 'TipoValorID'
              Properties.ListColumns = <
                item
                  FieldName = 'Nombre'
                end>
              Properties.ListSource = dsTipoValorClientes
              Properties.OnEditValueChanged = ClientesTipoValorIDPropertiesEditValueChanged
              Width = 129
            end
            object ClientesClienteID: TcxGridDBColumn
              DataBinding.FieldName = 'ClienteID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Options.Focusing = False
              Width = 60
            end
            object clientesNombre: TcxGridDBColumn
              Caption = 'Nombre del Cliente'
              DataBinding.FieldName = 'NombreCliente'
              Options.Focusing = False
              Width = 200
            end
            object ClientesTicket: TcxGridDBColumn
              DataBinding.FieldName = 'Ticket'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.OnValidate = ClientesTicketPropertiesValidate
              Options.Focusing = False
              Width = 76
            end
            object ClientesReferencia: TcxGridDBColumn
              DataBinding.FieldName = 'Referencia'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.MaxLength = 100
              Options.Focusing = False
              Width = 200
            end
            object ClientesImporte: TcxGridDBColumn
              DataBinding.FieldName = 'Importe'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.CharCase = ecUpperCase
              Properties.ValidateOnEnter = True
              Properties.OnValidate = dbgAnticipoDetalleDBTableView1ImportePropertiesValidate
              Width = 128
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
    end
    object cxTabCupones: TcxTabSheet
      Caption = 'Cupones'
      ImageIndex = 33
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridCupones: TcxGrid
        Left = 0
        Top = 0
        Width = 845
        Height = 359
        Align = alClient
        Enabled = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView2: TcxGridDBTableView
          OnKeyDown = dbgAnticipoDetalleDBTableView1KeyDown
          NavigatorButtons.ConfirmDelete = False
          OnEditKeyDown = dbgAnticipoDetalleDBTableView1EditKeyDown
          DataController.DataSource = dsAnticipoDetalleCupones
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,###,##0.#0'
              Kind = skSum
              Column = CuponImporte
            end>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          object CuponTipoValorId: TcxGridDBColumn
            DataBinding.FieldName = 'TipoValorID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'TipoValorID'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsTipoValorCupones
            Properties.OnEditValueChanged = CuponTipoValorIdPropertiesEditValueChanged
            Width = 102
          end
          object CuponClienteID: TcxGridDBColumn
            DataBinding.FieldName = 'ClienteID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Options.Focusing = False
            Width = 60
          end
          object CuponNombre: TcxGridDBColumn
            Caption = 'Nombre del Cliente'
            DataBinding.FieldName = 'NombreCliente'
            Options.Editing = False
            Options.Focusing = False
            Width = 200
          end
          object CuponTicket: TcxGridDBColumn
            DataBinding.FieldName = 'Ticket'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.OnValidate = CuponTicketPropertiesValidate
            Options.Focusing = False
            Width = 76
          end
          object CuponCuponId: TcxGridDBColumn
            DataBinding.FieldName = 'CuponID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.OnValidate = CuponCuponIdPropertiesValidate
            Options.Focusing = False
            Width = 85
          end
          object CuponReferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Options.Focusing = False
            Width = 185
          end
          object CuponImporte: TcxGridDBColumn
            DataBinding.FieldName = 'Importe'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.CharCase = ecUpperCase
            Properties.ValidateOnEnter = True
            Properties.OnValidate = dbgAnticipoDetalleDBTableView1ImportePropertiesValidate
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object cxTabOtros: TcxTabSheet
      Caption = 'Otros'
      ImageIndex = 71
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridOtros: TcxGrid
        Left = 0
        Top = 0
        Width = 845
        Height = 359
        Align = alClient
        Enabled = False
        TabOrder = 0
        LookAndFeel.NativeStyle = True
        object cxGridDBTableView1: TcxGridDBTableView
          OnKeyDown = dbgAnticipoDetalleDBTableView1KeyDown
          NavigatorButtons.ConfirmDelete = False
          OnEditKeyDown = dbgAnticipoDetalleDBTableView1EditKeyDown
          DataController.DataSource = dsAnticipoDetalleOtros
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,###,##0.#0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          NewItemRow.Visible = True
          OptionsBehavior.FocusCellOnTab = True
          OptionsBehavior.FocusFirstCellOnNewRecord = True
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsView.Footer = True
          object OtrosTipoValorId: TcxGridDBColumn
            DataBinding.FieldName = 'TipoValorID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TipoValorID'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsTipoValorOtros
            Width = 119
          end
          object OtrosTicket: TcxGridDBColumn
            DataBinding.FieldName = 'Ticket'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.OnValidate = OtrosTicketPropertiesValidate
            Width = 124
          end
          object OtrosSalidaID: TcxGridDBColumn
            DataBinding.FieldName = 'SalidaID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'SalidaID'
            Properties.ListColumns = <
              item
                FieldName = 'Nombre'
              end>
            Properties.ListSource = dsSalida
            Width = 144
          end
          object OtrosReferencia: TcxGridDBColumn
            DataBinding.FieldName = 'Referencia'
            Width = 215
          end
          object OtrosImporte: TcxGridDBColumn
            DataBinding.FieldName = 'Importe'
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object grpDatos: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    TabOrder = 1
    Height = 65
    Width = 845
    object cxAgrupacion: TcxLabel
      Left = 39
      Top = 19
      Caption = 'Agrupacion'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxDespachador: TcxLabel
      Left = 229
      Top = 19
      Caption = 'Despachador'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object dbAgrupacion: TcxDBLookupComboBox
      Left = 39
      Top = 36
      DataBinding.DataField = 'AgrupacionID'
      DataBinding.DataSource = dsAgrupacion2
      Enabled = False
      Properties.KeyFieldNames = 'AgrupacionID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsAgrupacion
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 2
      OnExit = dbAgrupacionExit
      Width = 184
    end
    object dbDespachador: TcxDBLookupComboBox
      Left = 229
      Top = 36
      DataBinding.DataField = 'DespachadorID'
      DataBinding.DataSource = dsAnticipoDetalle
      Enabled = False
      Properties.KeyFieldNames = 'DespachadorID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsDespachador
      Style.BorderStyle = ebsUltraFlat
      TabOrder = 3
      OnExit = dbDespachadorExit
      Width = 244
    end
    object lblNoCorte: TcxLabel
      Left = 479
      Top = 39
      Caption = 'No de Corte:'
      Style.BorderStyle = ebsNone
    end
  end
  object cdsDespachador: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 80
        Required = True
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'FechaAlta'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
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
    LogicalName = 'dbo DespachadorPorEstacion'
    IndexDefs = <>
    Left = 732
    Top = 164
  end
  object dsDespachador: TDADataSource
    DataSet = cdsDespachador.Dataset
    DataTable = cdsDespachador
    Left = 766
    Top = 163
  end
  object dsAgrupacion: TDADataSource
    DataSet = cdsAgrupacion.Dataset
    DataTable = cdsAgrupacion
    Left = 760
    Top = 127
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 725
    Top = 65532
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 760
    Top = 65531
  end
  object cdsAnticipo: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
        Required = True
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
        Name = 'TotalEntregado'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoBeforePost
    AfterPost = cdsAnticipoAfterPost
    AfterDelete = cdsAnticipoAfterPost
    OnNewRecord = cdsAnticipoNewRecord
    LogicalName = 'dbo Anticipo'
    IndexDefs = <>
    Left = 276
    Top = 392
  end
  object dsAnticipo: TDADataSource
    DataSet = cdsAnticipo.Dataset
    OnStateChange = dsAnticipoStateChange
    DataTable = cdsAnticipo
    Left = 276
    Top = 420
  end
  object cdsAnticipoDetalle: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoDetalleID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 100
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'CuponID'
        DataType = datString
        Size = 50
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'SalidaID'
        DataType = datInteger
      end
      item
        Name = 'TipoAnticipo'
        DataType = datInteger
      end
      item
        Name = 'TipoCambioID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Secuencia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'TipoAnticipo'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoDetalleBeforePost
    AfterPost = cdsAnticipoDetalleAfterPost
    BeforeDelete = cdsAnticipoDetalleBeforeDelete
    LogicalName = 'dbo AnticipoDetallePorAgrupacion'
    IndexDefs = <>
    Left = 304
    Top = 392
  end
  object dsAnticipoDetalle: TDADataSource
    DataSet = cdsAnticipoDetalle.Dataset
    DataTable = cdsAnticipoDetalle
    Left = 304
    Top = 420
  end
  object cdsBanco: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BancoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end
      item
        Name = 'Ejecutivo'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Banco'
    IndexDefs = <>
    Left = 739
    Top = 26
  end
  object dsBanco: TDADataSource
    DataSet = cdsBanco.Dataset
    DataTable = cdsBanco
    Left = 767
    Top = 28
  end
  object cdsSalida: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'SalidaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 40
        Required = True
      end
      item
        Name = 'ConceptoSalidaID'
        DataType = datInteger
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Salida'
    IndexDefs = <>
    Left = 739
    Top = 54
  end
  object dsSalida: TDADataSource
    DataSet = cdsSalida.Dataset
    DataTable = cdsSalida
    Left = 768
    Top = 56
  end
  object cdsTipoValorSeleccionado: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
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
        Name = 'Denominacion'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Banco'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Cash'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TipoCambio'
        DataType = datBoolean
      end>
    Params = <
      item
        Name = 'TipoValorID'
        Value = '2'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo TipoValorSeleccionado'
    IndexDefs = <>
    Left = 777
    Top = 277
  end
  object dsTipoValorSeleccionado: TDADataSource
    Left = 803
    Top = 276
  end
  object cdsValeCredito: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'CarteraValeCreditoID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'NoVale'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Status'
        DataType = datString
        Size = 10
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'LiquidacionDetalleID'
        DataType = datInteger
        Required = True
      end>
    Params = <>
    MasterParamsMappings.Strings = (
      'FacturaID=FacturaID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo CarteraValeCredito'
    IndexDefs = <>
    Left = 332
    Top = 392
  end
  object dsCartevaValeCredito: TDADataSource
    DataSet = cdsValeCredito.Dataset
    OnStateChange = dsCartevaValeCreditoStateChange
    DataTable = cdsValeCredito
    Left = 332
    Top = 420
  end
  object cdsCupon: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'CuponID'
        DataType = datInteger
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'Status'
        DataType = datString
        Size = 1
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'FechaEmision'
        DataType = datDateTime
      end
      item
        Name = 'FechaConsumo'
        DataType = datDateTime
      end
      item
        Name = 'EjercicioEmision'
        DataType = datInteger
      end
      item
        Name = 'PeriodoEmision'
        DataType = datInteger
      end
      item
        Name = 'DiaEmision'
        DataType = datInteger
      end
      item
        Name = 'EjercicioConsumo'
        DataType = datInteger
      end
      item
        Name = 'PeriodoConsumo'
        DataType = datInteger
      end
      item
        Name = 'DiaConsumo'
        DataType = datInteger
      end
      item
        Name = 'Barras'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Secuencia'
        DataType = datInteger
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'DetalleCuponID'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Barras'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerCuponPorBarra'
    IndexDefs = <>
    Left = 360
    Top = 392
  end
  object cdsTipoValor: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Denominacion'
        DataType = datFloat
      end
      item
        Name = 'Banco'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
      end
      item
        Name = 'Cash'
        DataType = datBoolean
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TAnticipo'
        DataType = datBoolean
      end
      item
        Name = 'TClientes'
        DataType = datBoolean
      end
      item
        Name = 'TCupones'
        DataType = datBoolean
      end
      item
        Name = 'TOtros'
        DataType = datBoolean
      end
      item
        Name = 'TipoCambio'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo TipoValor'
    IndexDefs = <>
    Left = 728
    Top = 200
  end
  object dsTipoValor: TDADataSource
    DataSet = cdsTipoValor.Dataset
    DataTable = cdsTipoValor
    Left = 760
    Top = 200
  end
  object cdsAgrupacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo AgrupacionPorEstacion'
    IndexDefs = <>
    Left = 728
    Top = 128
  end
  object cdsNoBombaPorAgrupacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'NoBomba'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'AgrupacionID'
        Value = '3'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'spObtenerNoBombaPorAgrupacionID'
    IndexDefs = <>
    Left = 616
    Top = 32
  end
  object dsNoBombaPorAgrupacion: TDADataSource
    DataSet = cdsNoBombaPorAgrupacion.Dataset
    DataTable = cdsNoBombaPorAgrupacion
    Left = 648
    Top = 32
  end
  object cdsAgrupacion2: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo AgrupacionPorEstacion'
    IndexDefs = <>
    Left = 776
    Top = 304
  end
  object dsAgrupacion2: TDADataSource
    DataSet = cdsAgrupacion2.Dataset
    DataTable = cdsAgrupacion2
    Left = 804
    Top = 304
  end
  object cdsAnticipoDetalleOtros: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoDetalleID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 100
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'CuponID'
        DataType = datString
        Size = 50
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'SalidaID'
        DataType = datInteger
      end
      item
        Name = 'TipoAnticipo'
        DataType = datInteger
      end
      item
        Name = 'TipoCambioID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Secuencia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'TipoAnticipo'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoDetalleOtrosBeforePost
    AfterPost = cdsAnticipoDetalleOtrosAfterPost
    LogicalName = 'dbo AnticipoDetallePorAgrupacion'
    IndexDefs = <>
    Left = 388
    Top = 392
  end
  object dsAnticipoDetalleOtros: TDADataSource
    DataSet = cdsAnticipoDetalleOtros.Dataset
    DataTable = cdsAnticipoDetalleOtros
    Left = 387
    Top = 420
  end
  object cdsTipoValorOtros: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Denominacion'
        DataType = datFloat
      end
      item
        Name = 'Banco'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
      end
      item
        Name = 'Cash'
        DataType = datBoolean
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TAnticipo'
        DataType = datBoolean
      end
      item
        Name = 'TClientes'
        DataType = datBoolean
      end
      item
        Name = 'TCupones'
        DataType = datBoolean
      end
      item
        Name = 'TOtros'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'TipoValorOtros'
    IndexDefs = <>
    Left = 415
    Top = 392
  end
  object dsTipoValorOtros: TDADataSource
    DataSet = cdsTipoValorOtros.Dataset
    DataTable = cdsTipoValorOtros
    Left = 414
    Top = 420
  end
  object cdsAnticipoDetalleCupones: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoDetalleID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 100
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'CuponID'
        DataType = datString
        Size = 50
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'SalidaID'
        DataType = datInteger
      end
      item
        Name = 'TipoAnticipo'
        DataType = datInteger
      end
      item
        Name = 'TipoCambioID'
        DataType = datInteger
      end
      item
        Name = 'NombreCliente'
        DataType = datString
        Size = 100
        LogChanges = False
        Lookup = True
        LookupSource = dsCliente
        LookupKeyFields = 'ClienteID'
        LookupResultField = 'Nombre'
        KeyFields = 'ClienteID'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Secuencia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'TipoAnticipo'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoDetalleCuponesBeforePost
    AfterPost = cdsAnticipoDetalleCuponesAfterPost
    LogicalName = 'dbo AnticipoDetallePorAgrupacion'
    IndexDefs = <>
    Left = 443
    Top = 392
  end
  object dsAnticipoDetalleCupones: TDADataSource
    DataSet = cdsAnticipoDetalleCupones.Dataset
    DataTable = cdsAnticipoDetalleCupones
    Left = 442
    Top = 420
  end
  object cdsTipoValorCupones: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Denominacion'
        DataType = datFloat
      end
      item
        Name = 'Banco'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
      end
      item
        Name = 'Cash'
        DataType = datBoolean
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TAnticipo'
        DataType = datBoolean
      end
      item
        Name = 'TClientes'
        DataType = datBoolean
      end
      item
        Name = 'TCupones'
        DataType = datBoolean
      end
      item
        Name = 'TOtros'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'TipoValorCupones'
    IndexDefs = <>
    Left = 470
    Top = 392
  end
  object dsTipoValorCupones: TDADataSource
    DataSet = cdsTipoValorCupones.Dataset
    DataTable = cdsTipoValorCupones
    Left = 469
    Top = 420
  end
  object cdsAnticipoDetalleClientes: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoDetalleID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 100
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'CuponID'
        DataType = datString
        Size = 50
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'SalidaID'
        DataType = datInteger
      end
      item
        Name = 'TipoAnticipo'
        DataType = datInteger
      end
      item
        Name = 'TipoCambioID'
        DataType = datInteger
      end
      item
        Name = 'NombreCliente'
        DataType = datString
        Size = 100
        LogChanges = False
        Lookup = True
        LookupSource = dsCliente
        LookupKeyFields = 'ClienteId'
        LookupResultField = 'Nombre'
        KeyFields = 'ClienteId'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Secuencia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'TipoAnticipo'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoDetalleClientesBeforePost
    AfterPost = cdsAnticipoDetalleClientesAfterPost
    LogicalName = 'dbo AnticipoDetallePorAgrupacion'
    IndexDefs = <>
    Left = 496
    Top = 392
  end
  object dsAnticipoDetalleClientes: TDADataSource
    DataSet = cdsAnticipoDetalleClientes.Dataset
    DataTable = cdsAnticipoDetalleClientes
    Left = 496
    Top = 421
  end
  object cdsTipoValorClientes: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Denominacion'
        DataType = datFloat
      end
      item
        Name = 'Banco'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
      end
      item
        Name = 'Cash'
        DataType = datBoolean
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TAnticipo'
        DataType = datBoolean
      end
      item
        Name = 'TClientes'
        DataType = datBoolean
      end
      item
        Name = 'TCupones'
        DataType = datBoolean
      end
      item
        Name = 'TOtros'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'TipoValorClientes'
    IndexDefs = <>
    Left = 524
    Top = 392
  end
  object dsTipoValorClientes: TDADataSource
    DataSet = cdsTipoValorClientes.Dataset
    DataTable = cdsTipoValorClientes
    Left = 524
    Top = 421
  end
  object cdsAnticipoDetalleMoneda: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AnticipoDetalleID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Importe'
        DataType = datFloat
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
        Required = True
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
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Referencia'
        DataType = datString
        Size = 100
      end
      item
        Name = 'Ticket'
        DataType = datInteger
      end
      item
        Name = 'CuponID'
        DataType = datString
        Size = 50
      end
      item
        Name = 'TipoValorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'BancoID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'DespachadorID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'SalidaID'
        DataType = datInteger
      end
      item
        Name = 'TipoAnticipo'
        DataType = datInteger
      end
      item
        Name = 'TipoCambioID'
        DataType = datInteger
      end
      item
        Name = 'NombreCliente'
        DataType = datString
        Size = 100
        LogChanges = False
        Lookup = True
        LookupSource = dsCliente
        LookupKeyFields = 'ClienteID'
        LookupResultField = 'Nombre'
        KeyFields = 'ClienteId'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Secuencia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'TipoAnticipo'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsAnticipoDetalleMonedaBeforePost
    AfterPost = cdsAnticipoDetalleMonedaAfterPost
    LogicalName = 'dbo AnticipoDetallePorAgrupacion'
    IndexDefs = <>
    Left = 552
    Top = 392
  end
  object dsAnticipoDetalleMoneda: TDADataSource
    DataSet = cdsAnticipoDetalleMoneda.Dataset
    DataTable = cdsAnticipoDetalleMoneda
    Left = 552
    Top = 420
  end
  object cdsTipoValorMoneda: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Denominacion'
        DataType = datFloat
      end
      item
        Name = 'Banco'
        DataType = datBoolean
      end
      item
        Name = 'Referencia'
        DataType = datBoolean
      end
      item
        Name = 'Cliente'
        DataType = datBoolean
      end
      item
        Name = 'Ticket'
        DataType = datBoolean
      end
      item
        Name = 'Cash'
        DataType = datBoolean
      end
      item
        Name = 'Cupon'
        DataType = datBoolean
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'ConsumoInterno'
        DataType = datBoolean
      end
      item
        Name = 'TAnticipo'
        DataType = datBoolean
      end
      item
        Name = 'TClientes'
        DataType = datBoolean
      end
      item
        Name = 'TCupones'
        DataType = datBoolean
      end
      item
        Name = 'TOtros'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'TipoValorEfectivo'
    IndexDefs = <>
    Left = 581
    Top = 392
  end
  object dsTipoValorMoneda: TDADataSource
    DataSet = cdsTipoValorMoneda.Dataset
    DataTable = cdsTipoValorMoneda
    Left = 580
    Top = 420
  end
  object cdsCliente: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
        Required = True
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 60
        Required = True
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
        Required = True
      end
      item
        Name = 'Curp'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaCheque'
        DataType = datBoolean
      end
      item
        Name = 'TicketBoucher'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaValeCredito'
        DataType = datBoolean
      end
      item
        Name = 'CuentaContableAnticipo'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableCredito'
        DataType = datString
        Size = 20
      end
      item
        Name = 'LimiteCredito'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'DiasCredito'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Cliente'
    IndexDefs = <>
    Left = 776
    Top = 248
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 800
    Top = 248
  end
end
