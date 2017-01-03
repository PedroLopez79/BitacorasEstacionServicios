inherited frmFaltantesyPagos: TfrmFaltantesyPagos
  Caption = 'frmFaltantesyPagos'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = cxTabSheet2
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    OnPageChanging = cxPageControl1PageChanging
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object cxTabSheet1: TcxTabSheet
      Caption = ' Movimientos de Faltantes '
      ImageIndex = 11
      ExplicitHeight = 415
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Movimiento de Faltantes'
        TabOrder = 0
        Height = 129
        Width = 616
        object cxTextEdit2: TcxTextEdit
          Left = 128
          Top = 32
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          Width = 256
        end
        object cxEmpleadoID: TcxTextEdit
          Left = 72
          Top = 32
          TabOrder = 1
          OnExit = cxEmpleadoIDExit
          OnKeyDown = cxEmpleadoIDKeyDown
          Width = 47
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 64
          Caption = 'Fecha Incio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 200
          Top = 64
          Caption = 'Fecha Final'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object edtFechaInicial: TcxDateEdit
          Left = 72
          Top = 64
          ParentFont = False
          Properties.ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000FF00FFFF00FF
            8080808080808080808080808080808080808080808080808080808080808080
            80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
            00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
            FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
            0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
            FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
            0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
            FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
            FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
            80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
            FF000000000000000000000000000000000000000000000000000000000000FF
            00FFFF00FFFF00FF0000}
          Properties.InputKind = ikMask
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 113
        end
        object edtFechaFinal: TcxDateEdit
          Left = 272
          Top = 64
          ParentFont = False
          Properties.ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000FF00FFFF00FF
            8080808080808080808080808080808080808080808080808080808080808080
            80FF00FF0000FF00FF0000000000008000000000008000008000000000008000
            00000000000000800000808080FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00
            FFFFFFFF000000000000000000FFFFFF000000000000000000C0C0C0FFFFFF80
            0000808080FF00FF0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFFC0C0C0FF
            FFFFC0C0C0000000FFFFFF800000808080FF00FF0000FF00FFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF800000808080FF00FF
            0000FF00FFFFFFFFFFFFFF000000FFFFFFFFFFFF000000000000000000C0C0C0
            FFFFFF800000808080FF00FF0000FF00FFFFFFFF000000000000FFFFFFFFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFF
            FFFFFF000000FFFFFFFFFFFF000000000000000000000000FFFFFF8000008080
            80FF00FF0000FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF800000808080FF00FF0000FF00FFFFFFFFC0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF800000808080FF00FF0000FF00
            FF000000000000000000000000000000000000000000000000000000000000FF
            00FFFF00FFFF00FF0000}
          Properties.InputKind = ikMask
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clNavy
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 113
        end
        object cxProcesar: TcxButton
          Left = 194
          Top = 94
          Width = 75
          Height = 25
          Caption = 'Procesar'
          TabOrder = 6
          OnClick = cxProcesarClick
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B0000000100000000000000000000FFFF
            FF00FF00FF00CCA3A3009F8F8F0096898900978B8B00968A8A008C8787008F8C
            8C00817E7E007F7E7E00E3E2E200DDDCDC00D8D7D700D7A5A300D1A1A000D8A4
            A100D3A3A000E2DAD900E2D9D700DDDAD900E6DDD900B6B7B7009E9F9F009D9E
            9E00999A9A0074EAFF0040DDFF0063E5FF0079EAFF0084EBFF0097E6F70038D9
            FF004AD8FC0041A5BD005EE1FF0056C6E10062DCFA007DE7FF0078B7C600A1EA
            FB009CD8E6000DCCFF000FCBFF000FC5FA0015CFFF0017B7E50023D0FF002FCB
            F6002DAACC003FD1F80044C7ED00369EBA0067D5F4006BD0EA0000C5FF0001C1
            FE0002C4FF0003C2FE0003BAF20009C6FE000EB7EB0023B8E60028BCE90037AF
            D40041B0D30052CBF3004DBBDE004CB4D40077C0D80005A0D8000999CE001399
            CA00138FBD001895C1001E9DC90021A5D1002B96BD002F9CC50039ACD70035A1
            C90040C1F00045A7CB005AB6D50070BCD7000487BC00078ABC000982B2000F82
            B000108ABA00188CBA001C9DCE001880AB001D8FBA001F90BB002EB5EA002692
            BC00288EB60035B2E3002F8FB400066A99000A6D9A000B72A0000D75A5000D72
            A1001190CB000F79AA001598D5001597D3001073A0001698D400117AA7001CA0
            DA00188EC00020AAE50028A9E0002683AB00015E8E000576AC00056695000668
            97000878AF00086FA0000973A500108BC6000F86BF00AAAAAA009E9E9E008989
            8900000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000020202020202
            025A4B790202020202020202025B4A6558494C67664E610202020202025E4D48
            573E315F424562020202026E5D5137413F2C3034542A4669020202534F50271B
            1C2E2B21241D405C7202027A6A63361E2523352F3A393B3C470202686F744328
            0B0B0B0B32383D2D5602026B6C71520B131806110B331F297502027C7E6D600B
            141906100B26205564020202787D730B141906120B22447602020202027B770B
            1619060F0B597002020202020202020B151A07030B020202020202020202020B
            80810A050B020202020202020202020B0E1709040B020202020202020202020B
            0D0C7F080B02020202020202020202020B0B0B0B020202020202}
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 32
          Caption = 'Empleado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object edtSaldoInicial: TcxDBTextEdit
          Left = 72
          Top = 96
          DataBinding.DataField = 'SaldoInicial'
          DataBinding.DataSource = dsSaldoInicial
          Enabled = False
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 98
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 96
          Caption = 'SaldoInicial'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 129
        Width = 616
        Height = 287
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitHeight = 286
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsFaltantesPorEmpleado
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$#,#0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Cargo
            end
            item
              Format = '$#,#0.00'
              Kind = skSum
              Column = cxGrid1DBTableView1Abono
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            Width = 98
          end
          object cxGrid1DBTableView1TipoFaltantePagoID: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TipoFaltantePagoID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'TipoMvtoFaltantePagoID'
            Properties.ListColumns = <
              item
                FieldName = 'Movimiento'
              end>
            Properties.ListSource = dsTipoMovimiento
            Width = 106
          end
          object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 216
          end
          object cxGrid1DBTableView1Cargo: TcxGridDBColumn
            DataBinding.FieldName = 'Cargo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Width = 86
          end
          object cxGrid1DBTableView1Abono: TcxGridDBColumn
            DataBinding.FieldName = 'Abono'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Width = 82
          end
          object cxGrid1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Saldo'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            OnGetDisplayText = cxGrid1DBTableView1Column1GetDisplayText
            Width = 73
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' Realizar Pagos '
      ImageIndex = 33
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Realizar Movimiento '
        Enabled = False
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 257
        Width = 529
        object dbEmpleadoID: TcxDBTextEdit
          Left = 119
          Top = 34
          DataBinding.DataField = 'EmpleadoID'
          DataBinding.DataSource = dsFaltantesyPagos
          Properties.CharCase = ecUpperCase
          TabOrder = 0
          OnExit = dbEmpleadoIDExit
          OnKeyDown = dbEmpleadoIDKeyDown
          Width = 47
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 35
          Caption = 'Empleado'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxEmpleado: TcxTextEdit
          Left = 172
          Top = 34
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 341
        end
        object dbFecha: TcxDBDateEdit
          Left = 119
          Top = 61
          DataBinding.DataField = 'Fecha'
          DataBinding.DataSource = dsFaltantesyPagos
          Enabled = False
          TabOrder = 3
          Width = 195
        end
        object dbTipoMovimiento: TcxDBLookupComboBox
          Left = 119
          Top = 88
          DataBinding.DataField = 'TipoFaltantePagoID'
          DataBinding.DataSource = dsFaltantesyPagos
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'TipoMvtoFaltantePagoID'
          Properties.ListColumns = <
            item
              FieldName = 'Movimiento'
            end>
          Properties.ListSource = dsTipoMovimiento
          TabOrder = 4
          Width = 195
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 62
          Caption = 'Fecha'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 89
          Caption = 'Tipo de Movimiento'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 16
          Top = 200
          Caption = 'Cantidad'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 119
          Top = 140
          DataBinding.DataField = 'Descripcion'
          DataBinding.DataSource = dsFaltantesyPagos
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Height = 54
          Width = 394
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 141
          Caption = 'Descripci'#243'n'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxCantidad: TcxCurrencyEdit
          Left = 119
          Top = 199
          TabOrder = 10
          Width = 195
        end
        object cxLabel11: TcxLabel
          Left = 16
          Top = 117
          Caption = 'Secuencia'
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
    end
  end
  object cxSecuencia: TcxDBTextEdit
    Left = 138
    Top = 138
    DataBinding.DataField = 'LiquidacionID'
    DataBinding.DataSource = dsFaltantesyPagos
    TabOrder = 1
    Width = 195
  end
  object cdsEmpleado: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
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
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EmpleadoID'
        Value = '4'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosEmpleado'
    IndexDefs = <>
    Left = 160
    Top = 339
  end
  object dsCliente: TDADataSource
    DataSet = cdsEmpleado.Dataset
    DataTable = cdsEmpleado
    Left = 160
    Top = 387
  end
  object cdsFaltantesyPagos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FaltanteyPagoID'
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
        Name = 'EmpleadoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'TipoFaltantePagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Descripcion'
        DataType = datWideString
        Size = 500
        Required = True
      end
      item
        Name = 'Cargo'
        DataType = datFloat
      end
      item
        Name = 'Abono'
        DataType = datFloat
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsFaltantesyPagosAfterPost
    OnNewRecord = cdsFaltantesyPagosNewRecord
    LogicalName = 'dbo FaltanteyPago'
    IndexDefs = <>
    Left = 320
    Top = 339
  end
  object dsFaltantesyPagos: TDADataSource
    DataSet = cdsFaltantesyPagos.Dataset
    DataTable = cdsFaltantesyPagos
    Left = 320
    Top = 387
  end
  object cdsTipoMovimiento: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoMvtoFaltantePagoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Movimiento'
        DataType = datWideString
        Size = 50
        Required = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo TipoMvtoFaltantePago'
    IndexDefs = <>
    Left = 424
    Top = 339
  end
  object dsTipoMovimiento: TDADataSource
    DataSet = cdsTipoMovimiento.Dataset
    DataTable = cdsTipoMovimiento
    Left = 424
    Top = 387
  end
  object cdsFaltantesPorEmpleado: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FaltanteyPagoID'
        DataType = datInteger
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'EmpleadoID'
        DataType = datInteger
      end
      item
        Name = 'TipoFaltantePagoID'
        DataType = datInteger
      end
      item
        Name = 'Descripcion'
        DataType = datWideString
        Size = 500
      end
      item
        Name = 'Cargo'
        DataType = datFloat
        Alignment = taRightJustify
      end
      item
        Name = 'Abono'
        DataType = datFloat
        Alignment = taRightJustify
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EmpleadoID'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'FechaIni'
        Value = '01/01/2008'
        ParamType = daptInput
      end
      item
        Name = 'FechaFin'
        Value = '01/30/2008'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'FaltantesPorEmpleado'
    IndexDefs = <>
    Left = 56
    Top = 339
  end
  object dsFaltantesPorEmpleado: TDADataSource
    DataSet = cdsFaltantesPorEmpleado.Dataset
    DataTable = cdsFaltantesPorEmpleado
    Left = 56
    Top = 387
  end
  object cdsBuscarEmpleado: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DespachadorID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
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
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EmpleadoID'
        Value = '4'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosEmpleado'
    IndexDefs = <>
    Left = 528
    Top = 339
  end
  object dsBuscarEmpleado: TDADataSource
    DataSet = cdsBuscarEmpleado.Dataset
    DataTable = cdsBuscarEmpleado
    Left = 528
    Top = 387
  end
  object cdsSaldoInicial: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'SaldoInicial'
        DataType = datFloat
        DisplayFormat = '$#,#0.00'
        Alignment = taRightJustify
      end>
    Params = <
      item
        Name = 'EmpleadoID'
        Value = '1'
        ParamType = daptInput
      end
      item
        Name = 'FechaIni'
        Value = '01/01/2008'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dboSaldoInicialEmpleado'
    IndexDefs = <>
    Left = 232
    Top = 339
  end
  object dsSaldoInicial: TDADataSource
    DataSet = cdsSaldoInicial.Dataset
    DataTable = cdsSaldoInicial
    Left = 232
    Top = 387
  end
  object cdsTurnoALiquidacionID: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = '1'
      end
      item
        Name = 'TurnoID'
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'spTurnoALiquidacionID'
    IndexDefs = <>
    Left = 584
    Top = 264
  end
  object dsTurnoALiquidacionID: TDADataSource
    DataSet = cdsTurnoALiquidacionID.Dataset
    DataTable = cdsTurnoALiquidacionID
    Left = 584
    Top = 296
  end
end
