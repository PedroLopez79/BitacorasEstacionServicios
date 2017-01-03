inherited frmAgrupacionEstacion: TfrmAgrupacionEstacion
  Left = 0
  Top = 0
  Caption = 'frmAgrupacionEstacion'
  ClientHeight = 437
  ClientWidth = 652
  Font.Name = 'Tahoma'
  OldCreateOrder = False
  ExplicitWidth = 652
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 652
    Height = 437
    ActivePage = cxTabSheet3
    ExplicitWidth = 652
    ExplicitHeight = 437
    ClientRectBottom = 407
    ClientRectRight = 646
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 643
      ExplicitHeight = 404
      inherited dbgCatalogo: TcxGrid
        Width = 643
        Height = 404
        ExplicitWidth = 643
        ExplicitHeight = 404
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OptionsView.GroupByBox = False
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1AgrupacionEstacionID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'AgrupacionEstacionID'
            Width = 74
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 643
      ExplicitHeight = 404
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 17
        Caption = ' Datos'
        TabOrder = 0
        Height = 144
        Width = 425
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 17
          Top = 48
          DataBinding.DataField = 'AgrupacionEstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 58
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 25
          Caption = 'ID'
          Transparent = True
        end
        object edtNombre: TcxDBTextEdit
          Left = 17
          Top = 96
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 240
        end
        object cxLabel1: TcxLabel
          Left = 17
          Top = 73
          Caption = 'Nombre'
          Transparent = True
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Asignaci'#243'n'
      ImageIndex = 38
      object lbSeleccionEstacion: TcxListView
        Left = 22
        Top = 44
        Width = 214
        Height = 177
        Columns = <
          item
            Caption = 'Nombre'
            Width = 210
          end>
        ReadOnly = True
        SmallImages = dmImages.Imagenes
        TabOrder = 0
        ViewStyle = vsReport
      end
      object lbEstacion: TcxListView
        Left = 326
        Top = 44
        Width = 214
        Height = 177
        Columns = <
          item
            Caption = 'Nombre'
            Width = 210
          end>
        ReadOnly = True
        SmallImages = dmImages.Imagenes
        TabOrder = 1
        ViewStyle = vsReport
      end
      object btnTransferir: TcxButton
        Left = 256
        Top = 68
        Width = 50
        Height = 25
        Caption = '-->'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnTransferirClick
        LookAndFeel.NativeStyle = False
      end
      object btnQuitar: TcxButton
        Left = 256
        Top = 121
        Width = 50
        Height = 25
        Caption = '<--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnQuitarClick
        LookAndFeel.NativeStyle = False
      end
      object cxLabel2: TcxLabel
        Left = 326
        Top = 21
        Caption = 'Estaciones Activas'
        Transparent = True
      end
      object cxLabel4: TcxLabel
        Left = 22
        Top = 21
        Caption = 'Estacions Disponibles'
        Transparent = True
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
        Required = True
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterScroll = cdsCatalogoAfterScroll
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo AgrupacionEstacion'
    Left = 504
    Top = 256
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 504
    Top = 288
  end
  object DADataSource1: TDADataSource
    DataSet = cdsDetalleAgrupacionEstacion.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsDetalleAgrupacionEstacion
    Left = 480
    Top = 120
  end
  object cdsDetalleAgrupacionEstacion: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end>
    Params = <
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
        Value = '0'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    OnNewRecord = cdsDetalleAgrupacionEstacionNewRecord
    LogicalName = 'dbo DetalleAgrupacionEstacion'
    IndexDefs = <>
    Left = 480
    Top = 88
  end
  object cdsEstacion: TDAMemDataTable
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
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 440
    Top = 88
  end
end
