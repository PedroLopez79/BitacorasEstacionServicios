inherited frmHorariosPersonal: TfrmHorariosPersonal
  Caption = 'frmHorariosPersonal'
  ClientHeight = 465
  ClientWidth = 641
  ExplicitWidth = 641
  ExplicitHeight = 465
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 641
    Height = 465
    Properties.ActivePage = cxTabSheet2
    ExplicitWidth = 641
    ExplicitHeight = 465
    ClientRectBottom = 435
    ClientRectRight = 635
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 632
      ExplicitHeight = 432
      inherited dbgCatalogo: TcxGrid
        Width = 632
        Height = 432
        ExplicitWidth = 632
        ExplicitHeight = 432
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OnCellDblClick = dbgCatalogoDBTableView1CellDblClick
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1IDEMPLEADO: TcxGridDBColumn
            Caption = '#Empleado'
            DataBinding.FieldName = 'IDEMPLEADO'
            Width = 72
          end
          object dbgCatalogoDBTableView1NOMBREEMPLEADO: TcxGridDBColumn
            Caption = 'Nombre Empleado'
            DataBinding.FieldName = 'NOMBREEMPLEADO'
            Width = 257
          end
          object dbgCatalogoDBTableView1HORAINICIO: TcxGridDBColumn
            Caption = 'Hora Inicio'
            DataBinding.FieldName = 'HORAINICIO'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object dbgCatalogoDBTableView1HORAFINAL: TcxGridDBColumn
            Caption = 'Hora Final'
            DataBinding.FieldName = 'HORAFINAL'
            PropertiesClassName = 'TcxTimeEditProperties'
          end
          object dbgCatalogoDBTableView1REFERENCIA: TcxGridDBColumn
            Caption = 'Referencia'
            DataBinding.FieldName = 'REFERENCIA'
            Width = 369
          end
          object dbgCatalogoDBTableView1FECHAALTA: TcxGridDBColumn
            Caption = 'Fecha Alta'
            DataBinding.FieldName = 'FECHAALTA'
          end
          object dbgCatalogoDBTableViewIDESTACION: TcxGridDBColumn
            Caption = '# Estacion'
            DataBinding.FieldName = 'IDESTACION'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 632
      ExplicitHeight = 432
      object GrpBoxDatos: TcxGroupBox
        Left = 16
        Top = 3
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 409
        Width = 545
        object LblID: TcxLabel
          Left = 21
          Top = 30
          Hint = ''
          Caption = 'Id Horario'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 21
          Top = 77
          Hint = ''
          Caption = 'Fecha Alta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCiudad: TcxLabel
          Left = 21
          Top = 127
          Hint = ''
          Caption = 'Hora Inicio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblTelefono: TcxLabel
          Left = 159
          Top = 127
          Hint = ''
          Caption = 'Hora Final'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object txtId: TcxDBTextEdit
          Left = 21
          Top = 47
          Hint = ''
          DataBinding.DataField = 'IDHORARIO'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.CharCase = ecUpperCase
          Properties.MaxLength = 0
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 100
        end
        object LblCuentaContable: TcxLabel
          Left = 21
          Top = 177
          Hint = ''
          Caption = 'Referencia'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 223
          Hint = ''
          Caption = 'Estacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 127
          Top = 30
          Hint = ''
          Caption = 'Empleado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cmbEmpleado: TcxDBLookupComboBox
          Left = 127
          Top = 47
          Hint = ''
          DataBinding.DataField = 'IDEMPLEADO'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'IDEMPLEADO'
          Properties.ListColumns = <
            item
              FieldName = 'NOMBRE'
            end
            item
              FieldName = 'IDEMPLEADO'
            end>
          Properties.ListSource = dsEmpleado
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 8
          Width = 410
        end
        object dtpFechaAlta: TcxDBDateEdit
          Left = 21
          Top = 95
          Hint = ''
          TabStop = False
          DataBinding.DataField = 'FECHAALTA'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 9
          Width = 132
        end
        object edtReferencia: TcxDBTextEdit
          Left = 21
          Top = 196
          Hint = ''
          DataBinding.DataField = 'REFERENCIA'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 10
          Width = 259
        end
        object cmbEstacion: TcxDBLookupComboBox
          Left = 21
          Top = 242
          Hint = ''
          DataBinding.DataField = 'IDESTACION'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'IDESTACION'
          Properties.ListColumns = <
            item
              FieldName = 'NOMBRE'
            end>
          Properties.ListSource = dsEstacion
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 11
          Width = 259
        end
        object dtpHoraInicio: TAdvDateTimePicker
          Left = 21
          Top = 145
          Width = 132
          Height = 21
          Date = 42915.748298611110000000
          Format = ''
          Time = 42915.748298611110000000
          DoubleBuffered = True
          Kind = dkTime
          ParentDoubleBuffered = False
          TabOrder = 12
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 42915.748298611110000000
          Version = '1.2.0.6'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
        end
        object dtpHoraFinal: TAdvDateTimePicker
          Left = 159
          Top = 145
          Width = 132
          Height = 21
          Date = 42915.748298611110000000
          Format = ''
          Time = 42915.748298611110000000
          DoubleBuffered = True
          Kind = dkTime
          ParentDoubleBuffered = False
          TabOrder = 13
          BorderStyle = bsSingle
          Ctl3D = True
          DateTime = 42915.748298611110000000
          Version = '1.2.0.6'
          LabelFont.Charset = DEFAULT_CHARSET
          LabelFont.Color = clWindowText
          LabelFont.Height = -11
          LabelFont.Name = 'Tahoma'
          LabelFont.Style = []
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'IDHORARIO'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'IDEMPLEADO'
        DataType = datInteger
      end
      item
        Name = 'FECHAALTA'
        DataType = datDateTime
      end
      item
        Name = 'HORAINICIO'
        DataType = datDateTime
      end
      item
        Name = 'HORAFINAL'
        DataType = datDateTime
      end
      item
        Name = 'REFERENCIA'
        DataType = datString
        Size = 100
      end
      item
        Name = 'NOMBREEMPLEADO'
        DataType = datString
        Size = 150
      end
      item
        Name = 'IDESTACION'
        DataType = datInteger
      end>
    LogicalName = 'dbo.HORARIOEMPLEADO'
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
    Left = 464
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 464
  end
  object cdsEmpleado: TDAMemDataTable
    Fields = <
      item
        Name = 'IDEMPLEADO'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CODIGOEMPLEADO'
        DataType = datString
        Size = 10
      end
      item
        Name = 'DOMICILIO'
        DataType = datString
        Size = 100
      end
      item
        Name = 'CIUDAD'
        DataType = datString
        Size = 100
      end
      item
        Name = 'TELEFONO'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CUENTACONTABLE'
        DataType = datString
        Size = 20
      end
      item
        Name = 'FECHAALTA'
        DataType = datDateTime
      end
      item
        Name = 'FECHABAJA'
        DataType = datDateTime
      end
      item
        Name = 'IMSS'
        DataType = datString
        Size = 150
      end
      item
        Name = 'STATUS'
        DataType = datBoolean
      end
      item
        Name = 'FOTOEMPLEADO'
        DataType = datBlob
      end
      item
        Name = 'IDESTACION'
        DataType = datInteger
      end
      item
        Name = 'TURNO'
        DataType = datInteger
      end>
    LogicalName = 'dbo.EMPLEADO'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterDelete = cdsCatalogoAfterPost
    AfterPost = cdsCatalogoAfterPost
    IndexDefs = <>
    Left = 560
    Top = 360
  end
  object dsEmpleado: TDADataSource
    DataSet = cdsEmpleado.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsEmpleado
    Left = 560
    Top = 408
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 592
    Top = 192
  end
  object cdsEstacion: TDACDSDataTable
    Fields = <
      item
        Name = 'IDESTACION'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RAZONSOCIAL'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
      end
      item
        Name = 'HOST'
        DataType = datString
        Size = 30
      end
      item
        Name = 'CUENTACONTABLE'
        DataType = datString
        Size = 20
      end
      item
        Name = 'IMPUESTO'
        DataType = datFloat
      end
      item
        Name = 'CALLE'
        DataType = datString
        Size = 60
      end
      item
        Name = 'COLONIA'
        DataType = datString
        Size = 30
      end
      item
        Name = 'NOEXTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'NOINTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'CODIGOPOSTAL'
        DataType = datString
        Size = 10
      end
      item
        Name = 'MUNICIPIO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'LOCALIDAD'
        DataType = datString
        Size = 30
      end
      item
        Name = 'ESTADO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXCALLE'
        DataType = datString
        Size = 60
      end
      item
        Name = 'EXCOLONIA'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXNOEXTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXNOINTERIOR'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXCODIGOPOSTAL'
        DataType = datString
        Size = 10
      end
      item
        Name = 'EXMUNICIPIO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXLOCALIDAD'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EXESTADO'
        DataType = datString
        Size = 30
      end
      item
        Name = 'NOAPROBACION'
        DataType = datInteger
      end
      item
        Name = 'FECHAAPROBACION'
        DataType = datInteger
      end
      item
        Name = 'NOAPROBACIONES'
        DataType = datString
        Size = 150
      end
      item
        Name = 'VERSIONCFD'
        DataType = datInteger
      end
      item
        Name = 'REGIMENFISCAL'
        DataType = datString
        Size = 150
      end
      item
        Name = 'CODIGOFACTURA'
        DataType = datString
        Size = 2
      end
      item
        Name = 'FORMATOFACTURAWEB'
        DataType = datString
        Size = 100
      end
      item
        Name = 'SERIEENLINEA'
        DataType = datString
        Size = 5
      end
      item
        Name = 'TELEFONO'
        DataType = datString
        Size = 20
      end
      item
        Name = 'IDESTACIONBANCARIA'
        DataType = datInteger
      end
      item
        Name = 'SERIEBANCARIA'
        DataType = datString
        Size = 5
      end
      item
        Name = 'LOGOESTACION'
        DataType = datBlob
      end
      item
        Name = 'PAIS'
        DataType = datString
        Size = 100
      end
      item
        Name = 'EXPAIS'
        DataType = datString
        Size = 100
      end
      item
        Name = 'EXREFERENCIA'
        DataType = datString
        Size = 100
      end>
    LogicalName = 'dbo.ESTACION'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 536
    Top = 192
  end
end
