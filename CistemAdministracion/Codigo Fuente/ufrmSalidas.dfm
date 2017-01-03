inherited frmSalidas: TfrmSalidas
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
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
          object dbgCatalogoDBTableView1SalidaID: TcxGridDBColumn
            DataBinding.FieldName = 'SalidaID'
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1ConceptoSalidaID: TcxGridDBColumn
            DataBinding.FieldName = 'ConceptoSalidaID'
            Width = 98
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 616
      ExplicitHeight = 416
      object cxGroupBox1: TcxGroupBox
        Left = 5
        Top = 0
        Hint = ''
        Caption = ' Salidas  '
        TabOrder = 0
        Height = 153
        Width = 388
        object txtSalida: TcxDBTextEdit
          Left = 16
          Top = 48
          Hint = ''
          DataBinding.DataField = 'SalidaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 57
        end
        object LblNoEstacion: TcxLabel
          Left = 16
          Top = 31
          Hint = ''
          Caption = 'Salida'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object txtNombre: TcxDBTextEdit
          Left = 79
          Top = 48
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 293
        end
        object cxLabel2: TcxLabel
          Left = 79
          Top = 31
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object LookUpCmboxNombre: TcxDBLookupComboBox
          Left = 16
          Top = 90
          Hint = ''
          DataBinding.DataField = 'ConceptoSalidaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'ConceptoSalidaID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsConceptoSalida
          TabOrder = 4
          Width = 220
        end
        object LblCategoria: TcxLabel
          Left = 16
          Top = 73
          Hint = ''
          Caption = 'Concepto Salida'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
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
    LogicalName = 'dbo Salida'
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
  end
  object cdsConceptoSalida: TDACDSDataTable
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtDisableLogOfCascadeDeletes, dtIncludeInAllInOneFetch]
    Fields = <
      item
        Name = 'ConceptoSalidaID'
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
        Name = 'AfectaInventario'
        DataType = datBoolean
      end>
    LogicalName = 'dbo ConceptoSalida'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    AfterDelete = cdsCatalogoAfterPost
    AfterPost = cdsCatalogoAfterPost
    IndexDefs = <>
    Left = 224
    Top = 120
  end
  object dsConceptoSalida: TDADataSource
    DataSet = cdsConceptoSalida.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsConceptoSalida
    Left = 256
    Top = 120
  end
end
