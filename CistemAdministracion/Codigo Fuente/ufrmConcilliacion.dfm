inherited frmConcilliacion: TfrmConcilliacion
  Caption = 'frmConcilliacion'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object gbConciliacion: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Fecha de conciliaci'#243'n'
    TabOrder = 0
    Height = 113
    Width = 625
    object cxLabel1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'Fecha'
      Transparent = True
    end
    object dtpFecha: TcxDateEdit
      Left = 16
      Top = 40
      Enabled = False
      TabOrder = 1
      OnExit = dtpFechaExit
      Width = 113
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 16
      Top = 80
      DataBinding.DataField = 'Total'
      DataBinding.DataSource = dsConciliacion
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 2
      Width = 113
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 144
      Top = 80
      DataBinding.DataField = 'Entregado'
      DataBinding.DataSource = dsConciliacion
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 3
      Width = 113
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 272
      Top = 80
      DataBinding.DataField = 'Diferencia'
      DataBinding.DataSource = dsConciliacion
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 4
      Width = 113
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 64
      Caption = 'Total'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 272
      Top = 64
      Caption = 'Diferencia'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 144
      Top = 64
      Caption = 'Entregado'
      Transparent = True
    end
  end
  object dbgConciliacion: TcxGrid
    Left = 0
    Top = 113
    Width = 625
    Height = 336
    Align = alClient
    TabOrder = 1
    OnEnter = dbgConciliacionEnter
    OnExit = dbgConciliacionExit
    object dbgConciliacionDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnEditKeyDown = dbgConciliacionDBTableView1EditKeyDown
      DataController.DataSource = dsDetalle
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Position = spFooter
          Column = dbgConciliacionDBTableView1Importe
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = dbgConciliacionDBTableView1Importe
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = dbgConciliacionDBTableView1Importe
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = 'Haga click aqu'#237' para agregar un registro'
      NewItemRow.Visible = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      object dbgConciliacionDBTableView1Importe: TcxGridDBColumn
        DataBinding.FieldName = 'Importe'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        FooterAlignmentHorz = taRightJustify
        Width = 108
      end
      object dbgConciliacionDBTableView1Column1: TcxGridDBColumn
        Caption = 'Cuenta'
        DataBinding.FieldName = 'CuentaBancariaID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'CuentaBancariaID'
        Properties.ListColumns = <
          item
            FieldName = 'Cuenta'
          end>
        Properties.ListSource = dsCuenta
        Width = 146
      end
      object dbgConciliacionDBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = dmImages.Imagenes
        Properties.Items = <
          item
            Description = 'DEPOSITO'
            ImageIndex = 41
            Value = 1
          end
          item
            Description = 'CHEQUE DEVUELTO'
            ImageIndex = 23
            Value = 2
          end
          item
            Description = 'BILLETE FALSO'
            ImageIndex = 63
            Value = 3
          end
          item
            Description = 'ERROR DE CAPTURA'
            ImageIndex = 7
            Value = 4
          end
          item
            Description = 'OTROS'
            ImageIndex = 24
            Value = 5
          end>
        Width = 150
      end
      object dbgConciliacionDBTableView1FechaAplicacion: TcxGridDBColumn
        Caption = 'Fecha de aplicaci'#243'n'
        DataBinding.FieldName = 'FechaAplicacion'
        PropertiesClassName = 'TcxDateEditProperties'
        Width = 124
      end
      object dbgConciliacionDBTableView1Descripcion: TcxGridDBColumn
        DataBinding.FieldName = 'Descripcion'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.CharCase = ecUpperCase
        Width = 277
      end
    end
    object dbgConciliacionLevel1: TcxGridLevel
      GridView = dbgConciliacionDBTableView1
    end
  end
  object dsConciliacion: TDADataSource
    DataSet = cdsConciliacion.Dataset
    DataTable = cdsConciliacion
    Left = 336
    Top = 240
  end
  object dsDetalle: TDADataSource
    DataSet = cdsDetalle.Dataset
    DataTable = cdsDetalle
    Left = 448
    Top = 240
  end
  object cdsConciliacion: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ConciliacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
      end
      item
        Name = 'Dia'
        DataType = datInteger
      end
      item
        Name = 'Total'
        DataType = datFloat
        DisplayFormat = '#,#0.00'
      end
      item
        Name = 'Entregado'
        DataType = datFloat
        DisplayFormat = '#,#0.00'
      end
      item
        Name = 'Diferencia'
        DataType = datFloat
        DisplayFormat = '#,#0.00'
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'Fecha'
        Value = '1/1/1'
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsConciliacionNewRecord
    LogicalName = 'dbo Conciliacion2'
    IndexDefs = <>
    Left = 336
    Top = 192
  end
  object cdsDetalle: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DetalleConciliacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'FechaAplicacion'
        DataType = datDateTime
      end
      item
        Name = 'Tipo'
        DataType = datInteger
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Importe'
        DataType = datFloat
        DisplayFormat = '#,#0.00'
      end
      item
        Name = 'CuentaBancariaID'
        DataType = datInteger
      end
      item
        Name = 'ConciliacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'ConciliacionID'
        DataType = datInteger
        Value = '0'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsDetalleBeforePost
    AfterPost = cdsDetalleAfterPost
    AfterDelete = cdsDetalleAfterPost
    OnNewRecord = cdsDetalleNewRecord
    LogicalName = 'dbo DetalleConciliacion2'
    IndexDefs = <>
    Left = 448
    Top = 192
  end
  object cdsDeposito: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Total'
        DataType = datFloat
        DisplayFormat = '#,#0.00'
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = '1'
      end
      item
        Name = 'Fecha'
        Value = '1/1/1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsConciliacionNewRecord
    LogicalName = 'spTotalDeposito'
    IndexDefs = <>
    Left = 160
    Top = 256
  end
  object cdsCuenta: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'CuentaBancariaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Cuenta'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'Dlls'
        DataType = datBoolean
      end
      item
        Name = 'BancoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        Value = '0'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'spCuentaBancaria'
    IndexDefs = <>
    Left = 248
    Top = 264
  end
  object dsCuenta: TDADataSource
    DataSet = cdsCuenta.Dataset
    DataTable = cdsCuenta
    Left = 248
    Top = 312
  end
end
