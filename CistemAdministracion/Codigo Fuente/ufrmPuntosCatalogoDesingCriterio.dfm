inherited frmPuntosCatalogoDesingCriterio: TfrmPuntosCatalogoDesingCriterio
  Left = 0
  Top = 0
  Caption = 'frmPuntosCatalogoDesingCriterio'
  ClientHeight = 400
  ClientWidth = 594
  Font.Name = 'Tahoma'
  OldCreateOrder = False
  ExplicitWidth = 594
  ExplicitHeight = 400
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 594
    Height = 400
    ActivePage = cxTabSheet2
    ExplicitWidth = 594
    ExplicitHeight = 400
    ClientRectBottom = 370
    ClientRectRight = 588
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 585
      ExplicitHeight = 367
      inherited dbgCatalogo: TcxGrid
        Width = 585
        Height = 367
        ExplicitWidth = 585
        ExplicitHeight = 367
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OptionsView.GroupByBox = False
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1PuntosCriterioID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PuntosCriterioID'
            Width = 80
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
      ExplicitWidth = 585
      ExplicitHeight = 367
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Datos'
        TabOrder = 0
        Height = 297
        Width = 337
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 17
          Top = 48
          DataBinding.DataField = 'PuntosCriterioID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
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
          Left = 16
          Top = 98
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 201
        end
        object clbParametros: TcxCheckListBox
          Left = 16
          Top = 204
          Width = 201
          Height = 77
          Items = <
            item
              Tag = 65
              Text = 'Rango de Fechas'
            end
            item
              Tag = 66
              Text = 'Criterio'
            end
            item
              Tag = 67
              Text = 'Catalogo Club'
            end>
          Style.BorderStyle = cbsUltraFlat
          Style.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 3
          OnClickCheck = clbParametrosClickCheck
        end
        object cxLabel1: TcxLabel
          Left = 17
          Top = 75
          Caption = 'Nombre'
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 17
          Top = 181
          Caption = 'Par'#225'metros'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 17
          Top = 125
          Caption = 'Zona'
          Transparent = True
        end
        object comboZona: TcxDBLookupComboBox
          Left = 17
          Top = 148
          DataBinding.DataField = 'AgrupacionEstacionID'
          DataBinding.DataSource = dsCatalogo
          Properties.KeyFieldNames = 'AgrupacionEstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = dsAgrupacionEstacion
          TabOrder = 2
          Width = 200
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'PuntosCriterioID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Parametros'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Datos'
        DataType = datMemo
      end
      item
        Name = 'Activo'
        DataType = datBoolean
      end
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    AfterScroll = cdsCatalogoAfterScroll
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo PuntosCriterio'
    Left = 448
    Top = 256
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 448
    Top = 288
  end
  inherited tblCatalogo: TdxMemData
    Left = 480
    Top = 256
  end
  object cdsAgrupacionEstacion: TDAMemDataTable
    RemoteUpdatesOptions = []
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
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    AfterScroll = cdsCatalogoAfterScroll
    OnNewRecord = cdsCatalogoNewRecord
    LogicalName = 'dbo AgrupacionEstacion'
    IndexDefs = <>
    Left = 416
    Top = 256
  end
  object dsAgrupacionEstacion: TDADataSource
    DataSet = cdsAgrupacionEstacion.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsAgrupacionEstacion
    Left = 416
    Top = 288
  end
end
