inherited frmGeneraFacturas: TfrmGeneraFacturas
  Caption = 'frmGeneraFacturas'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object pgcGenerar: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = tsGenerar
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = pgcGenerarChange
    ClientRectBottom = 419
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object tsGenerar: TcxTabSheet
      Caption = 'Generar Facturas'
      ImageIndex = 17
      ExplicitWidth = 615
      ExplicitHeight = 415
      object cxGroupBox2: TcxGroupBox
        Left = 24
        Top = 24
        Caption = ' Generar Facturas '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 153
        Width = 473
        object edtSerie: TcxTextEdit
          Left = 152
          Top = 104
          Enabled = False
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 105
        end
        object cxLabel1: TcxLabel
          Left = 152
          Top = 88
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object dtpFecha: TcxDateEdit
          Left = 32
          Top = 104
          TabOrder = 1
          Width = 105
        end
        object cxLabel2: TcxLabel
          Left = 32
          Top = 88
          Caption = 'Fecha Corte'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 32
          Top = 32
          Caption = 'Cliente'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object edtCliente: TcxTextEdit
          Left = 32
          Top = 48
          TabOrder = 0
          OnExit = edtClienteExit
          OnKeyDown = edtClienteKeyDown
          Width = 105
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 152
          Top = 48
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCliente
          Enabled = False
          TabOrder = 6
          Width = 305
        end
        object cxLabel6: TcxLabel
          Left = 152
          Top = 32
          Caption = 'Nombre del Cliente'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
      end
    end
    object tsImprimir: TcxTabSheet
      Caption = 'Imprimir Factura'
      ImageIndex = 48
      ExplicitWidth = 615
      ExplicitHeight = 415
      object cxGroupBox1: TcxGroupBox
        Left = 24
        Top = 24
        Caption = ' Imprimir Factura '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 129
        Width = 193
        object edtSerieImprime: TcxTextEdit
          Left = 32
          Top = 41
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 105
        end
        object cxLabel3: TcxLabel
          Left = 32
          Top = 24
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 32
          Top = 79
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object edtFolioImprime: TcxCurrencyEdit
          Left = 32
          Top = 96
          Properties.DisplayFormat = '#0'
          TabOrder = 3
          Width = 105
        end
      end
    end
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 40
    Top = 296
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
        Size = 40
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
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'DiasCredito'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosCliente'
    IndexDefs = <>
    Left = 40
    Top = 248
  end
end
