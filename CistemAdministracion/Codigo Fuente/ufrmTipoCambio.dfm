inherited frmTipodeCambio: TfrmTipodeCambio
  Caption = 'frmTipodeCambio'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    Hint = ''
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    Properties.Images = dmImages.Imagenes
    Properties.TabPosition = tpBottom
    ClientRectBottom = 424
    ClientRectLeft = 4
    ClientRectRight = 621
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = ' Tipo de Cambio '
      ImageIndex = 63
      object cxGroupBox2: TcxGroupBox
        Left = 16
        Top = 24
        Hint = ''
        Caption = ' Tipo de Cambio '
        TabOrder = 0
        Height = 129
        Width = 305
        object dbTipoCambio: TcxDBTextEdit
          Left = 24
          Top = 83
          Hint = ''
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = dsTipoCambio
          TabOrder = 0
          Width = 81
        end
        object dbEStacion: TcxDBLookupComboBox
          Left = 24
          Top = 41
          Hint = ''
          DataBinding.DataField = 'EstacionID'
          DataBinding.DataSource = dsTipoCambio
          Properties.KeyFieldNames = 'EstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsEstacion
          TabOrder = 1
          Width = 217
        end
        object cxLabel2: TcxLabel
          Left = 24
          Top = 24
          Hint = ''
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
        end
        object cxLabel3: TcxLabel
          Left = 24
          Top = 68
          Hint = ''
          Caption = 'Tipo de Cambio'
          Style.BorderStyle = ebsNone
        end
        object cxCurrencyEdit1: TcxCurrencyEdit
          Left = 120
          Top = 83
          Hint = ''
          TabOrder = 4
          Width = 121
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' Historial '
      ImageIndex = 1
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Hint = ''
        Align = alTop
        Caption = ' Estaci'#243'n '
        TabOrder = 0
        Height = 73
        Width = 617
        object cxButton1: TcxButton
          Left = 327
          Top = 30
          Width = 106
          Height = 23
          Caption = 'Actualiza Historial'
          TabOrder = 0
          OnClick = cxButton1Click
        end
        object cxEstacion: TcxTextEdit
          Left = 69
          Top = 31
          Hint = ''
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnExit = cxEstacionExit
          OnKeyDown = cxEstacionKeyDown
          Width = 52
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 32
          Hint = ''
          Caption = 'Estaci'#243'n'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxNombreEstacion: TcxTextEdit
          Left = 127
          Top = 31
          Hint = ''
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 194
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 73
        Width = 617
        Height = 347
        Hint = ''
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsHistorialTipoCambio
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
          end
          object cxGrid1DBTableView1TipoCambio: TcxGridDBColumn
            Caption = 'Tipo de Cambio'
            DataBinding.FieldName = 'TipoCambio'
            Width = 101
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object cdsTipoCambio: TDACDSDataTable
    Fields = <
      item
        Name = 'TipoCambioID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'TipoCambio'
        DataType = datFloat
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        Required = True
      end>
    LogicalName = 'dbo.TipoCambio'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterPost = cdsTipoCambioAfterPost
    BeforePost = cdsTipoCambioBeforePost
    IndexDefs = <>
    Left = 456
    Top = 280
  end
  object dsTipoCambio: TDADataSource
    DataSet = cdsTipoCambio.Dataset
    DataTable = cdsTipoCambio
    Left = 456
    Top = 312
  end
  object cdsEstacion: TDACDSDataTable
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
    LogicalName = 'dbo.Empresas'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 488
    Top = 280
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 488
    Top = 312
  end
  object cdsHistorialTipoCambio: TDACDSDataTable
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
    LogicalName = 'ObtenerHistorialTipoCambio'
    Params = <
      item
        Name = 'EstacionID'
        Value = '7073'
        ParamType = daptInput
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 552
    Top = 280
  end
  object dsHistorialTipoCambio: TDADataSource
    DataSet = cdsHistorialTipoCambio.Dataset
    DataTable = cdsHistorialTipoCambio
    Left = 552
    Top = 312
  end
  object cdsEstacionHistorial: TDACDSDataTable
    Fields = <
      item
        Name = 'EmpresaID'
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
      end>
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
    Left = 520
    Top = 280
  end
  object dsEstacionHistorial: TDADataSource
    DataSet = cdsEstacionHistorial.Dataset
    DataTable = cdsEstacionHistorial
    Left = 520
    Top = 312
  end
end
