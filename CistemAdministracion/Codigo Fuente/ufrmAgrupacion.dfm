inherited frmAgrupacion: TfrmAgrupacion
  Caption = ''
  ExplicitTop = -9
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    ActivePage = cxTabSheet2
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      inherited dbgCatalogo: TcxGrid
        Width = 616
        Height = 416
        ExplicitWidth = 616
        ExplicitHeight = 416
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1AgrupacionID: TcxGridDBColumn
            DataBinding.FieldName = 'AgrupacionID'
            Width = 85
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 217
          end
          object dbgCatalogoDBTableView1EstacionID: TcxGridDBColumn
            DataBinding.FieldName = 'EstacionID'
          end
          object dbgCatalogoDBTableView1AlmacenID: TcxGridDBColumn
            DataBinding.FieldName = 'AlmacenID'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object GrpBoxDatos: TcxGroupBox
        Left = 5
        Top = 0
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 137
        Width = 612
        object txtAgrupacion: TcxDBTextEdit
          Left = 16
          Top = 33
          DataBinding.DataField = 'AgrupacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 73
        end
        object txtDescripcion: TcxDBTextEdit
          Left = 95
          Top = 33
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 423
        end
        object LblNombre: TcxLabel
          Left = 16
          Top = 16
          Caption = 'Agrupaci'#243'n'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 95
          Top = 16
          Caption = 'Descripci'#243'n'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 60
          Caption = 'Almacen'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cbxAlmacen: TcxDBLookupComboBox
          Left = 16
          Top = 76
          DataBinding.DataField = 'AlmacenID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'AlmacenID'
          Properties.ListColumns = <
            item
              FieldName = 'AlmacenID'
            end
            item
              FieldName = 'EstacionID'
            end
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAlmacen
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 321
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
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
        Size = 70
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo Agrupacion2'
    Top = 336
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Top = 368
  end
  inherited tblCatalogo: TdxMemData
    Top = 336
  end
  object cdsAlmacen: TDACDSDataTable
    RemoteUpdatesOptions = []
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
        Size = 70
      end
      item
        Name = 'Compras'
        DataType = datBoolean
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Almacen2'
    IndexDefs = <>
    Left = 496
    Top = 296
  end
  object dsAlmacen: TDADataSource
    DataSet = cdsAlmacen.Dataset
    DataTable = cdsAlmacen
    Left = 464
    Top = 296
  end
  object dsAgrupacionBomba: TDADataSource
    DataSet = cdsAgrupacionBomba.Dataset
    DataTable = cdsAgrupacionBomba
    Left = 432
    Top = 368
  end
  object cdsAgrupacionBomba: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BombaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'NoBomba'
        DataType = datInteger
        LogChanges = False
        Lookup = True
        LookupSource = dsBombas
        LookupKeyFields = 'BombaID'
        LookupResultField = 'NoBomba'
        KeyFields = 'BombaID'
        LookupCache = True
      end
      item
        Name = 'Posicion'
        DataType = datInteger
        LogChanges = False
        DisplayLabel = 'Posici'#243'n'
        Lookup = True
        LookupSource = dsBombas
        LookupKeyFields = 'BombaID'
        LookupResultField = 'PosicionCarga'
        KeyFields = 'BombaId'
        LookupCache = True
      end
      item
        Name = 'Producto'
        DataType = datString
        LogChanges = False
        Lookup = True
        LookupSource = dsBombas
        LookupKeyFields = 'BombaID'
        LookupResultField = 'Producto'
        KeyFields = 'BombaID'
        LookupCache = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo AgrupacionBomba'
    IndexDefs = <>
    Left = 432
    Top = 336
  end
  object cdsBombas: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BombaID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'NoBomba'
        DataType = datInteger
      end
      item
        Name = 'PosicionCarga'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Producto'
        DataType = datString
        Size = 30
        LogChanges = False
        Lookup = True
        LookupSource = dsProductos
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Bomba'
    IndexDefs = <>
    Left = 464
    Top = 336
  end
  object dsBombas: TDADataSource
    DataSet = cdsBombas.Dataset
    DataTable = cdsBombas
    Left = 464
    Top = 368
  end
  object cdsBombasDisponibles: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BombaID'
        DataType = datInteger
      end
      item
        Name = 'NoBomba'
        DataType = datInteger
      end
      item
        Name = 'PosicionCarga'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Producto'
        DataType = datString
        Size = 30
        LogChanges = False
        Lookup = True
        LookupSource = dsProductos
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'Estacion'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'BombaDisponible'
    IndexDefs = <>
    Left = 536
    Top = 48
  end
  object dsBombasDisponibles: TDADataSource
    DataSet = cdsBombasDisponibles.Dataset
    DataTable = cdsBombasDisponibles
    Left = 536
    Top = 80
  end
  object cdsProductos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 150
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
      end
      item
        Name = 'Puntos'
        DataType = datInteger
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
    Left = 376
    Top = 336
  end
  object dsProductos: TDADataSource
    DataSet = cdsProductos.Dataset
    DataTable = cdsProductos
    Left = 376
    Top = 368
  end
  object cdsObtenerBombasDeAgrupacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'BombaID'
        DataType = datInteger
      end
      item
        Name = 'AgrupacionID'
        DataType = datInteger
      end
      item
        Name = 'NoBomba'
        DataType = datInteger
      end
      item
        Name = 'PosicionCarga'
        DataType = datInteger
      end
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        LogChanges = False
        Lookup = True
        LookupSource = dsProductos
        LookupKeyFields = 'ProductoID'
        LookupResultField = 'Nombre'
        KeyFields = 'ProductoID'
        LookupCache = True
      end>
    Params = <
      item
        Name = 'Agrupacion'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerAgrupacionBomba'
    IndexDefs = <>
    Left = 16
    Top = 216
  end
  object dsObtenerBombasDeAgrupacion: TDADataSource
    DataSet = cdsObtenerBombasDeAgrupacion.Dataset
    DataTable = cdsObtenerBombasDeAgrupacion
    Left = 16
    Top = 248
  end
end
