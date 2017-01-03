inherited frmPuntosCatalogoCriterio: TfrmPuntosCatalogoCriterio
  Left = 0
  Top = 0
  Caption = 'frmPuntosCatalogoCriterio'
  ClientHeight = 629
  ClientWidth = 683
  Font.Name = 'Tahoma'
  OldCreateOrder = False
  ExplicitWidth = 683
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 683
    Height = 629
    ActivePage = cxTabSheet2
    ExplicitWidth = 683
    ExplicitHeight = 629
    ClientRectBottom = 599
    ClientRectRight = 677
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 674
      ExplicitHeight = 596
      inherited dbgCatalogo: TcxGrid
        Width = 674
        Height = 596
        ExplicitWidth = 674
        ExplicitHeight = 596
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          OptionsView.GroupByBox = False
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1PuntosCriterioID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'PuntosCriterioID'
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
      ExplicitWidth = 674
      ExplicitHeight = 596
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 17
        Caption = ' Datos'
        TabOrder = 0
        Height = 89
        Width = 425
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 17
          Top = 48
          DataBinding.DataField = 'PuntosCriterioID'
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
          Left = 86
          Top = 48
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 240
        end
        object cxLabel1: TcxLabel
          Left = 86
          Top = 25
          Caption = 'Nombre'
          Transparent = True
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 16
        Top = 120
        Caption = ' Parametros'
        TabOrder = 1
        Height = 321
        Width = 425
        object cxPeriodo: TcxGroupBox
          Tag = 100
          Left = 16
          Top = 30
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          TabOrder = 0
          Height = 42
          Width = 390
          object lblFechaInicial: TcxLabel
            Left = 15
            Top = 14
            Caption = 'Fecha Inicial:'
            Style.BorderStyle = ebsNone
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 204
            Top = 14
            Caption = 'Fecha Final:'
            Style.BorderStyle = ebsNone
            Transparent = True
          end
          object edtFechaInicial: TcxDateEdit
            Left = 88
            Top = 13
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
            Properties.OnChange = edtFechaInicialPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 89
          end
          object edtFechaFinal: TcxDateEdit
            Left = 272
            Top = 13
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
            Properties.OnChange = edtFechaInicialPropertiesChange
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clNavy
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = []
            Style.TextColor = clNavy
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 103
          end
        end
        object cxCriterio: TcxGroupBox
          Tag = 100
          Left = 16
          Top = 87
          PanelStyle.Active = True
          TabOrder = 1
          Height = 42
          Width = 390
          object cxLabel4: TcxLabel
            Left = 14
            Top = 10
            Caption = 'Criterio'
            Style.BorderStyle = ebsNone
            Transparent = True
          end
          object edtCriterio: TcxTextEdit
            Left = 59
            Top = 9
            Properties.OnChange = edtFechaInicialPropertiesChange
            TabOrder = 1
            Width = 61
          end
        end
        object cxClub: TcxGroupBox
          Tag = 100
          Left = 16
          Top = 151
          PanelStyle.Active = True
          TabOrder = 2
          Height = 146
          Width = 390
          object cxGrid1: TcxGrid
            Left = 2
            Top = 2
            Width = 386
            Height = 142
            Align = alClient
            TabOrder = 0
            object cxGrid1DBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsPuntosListaClub
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsView.GroupByBox = False
              object cxGrid1DBTableView1RecID: TcxGridDBColumn
                DataBinding.FieldName = 'RecID'
                Visible = False
              end
              object cxGrid1DBTableView1PuntosClubID: TcxGridDBColumn
                Caption = 'Nombre'
                DataBinding.FieldName = 'PuntosClubID'
                PropertiesClassName = 'TcxLookupComboBoxProperties'
                Properties.KeyFieldNames = 'PuntosClubID'
                Properties.ListColumns = <
                  item
                    FieldName = 'Nombre'
                  end>
                Properties.ListSource = dsPuntosClub
                Properties.ReadOnly = False
                Options.Editing = False
                Options.Focusing = False
                Width = 177
              end
              object cxGrid1DBTableView1Puntos: TcxGridDBColumn
                DataBinding.FieldName = 'Puntos'
                Width = 92
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'PuntosCriterioID'
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
        Name = 'Parametros'
        DataType = datString
        Size = 20
        Required = True
      end
      item
        Name = 'Datos'
        DataType = datMemo
        Required = True
      end
      item
        Name = 'Activo'
        DataType = datBoolean
        Required = True
      end
      item
        Name = 'AgrupacionEstacionID'
        DataType = datInteger
      end>
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterScroll = cdsCatalogoAfterScroll
    LogicalName = 'dbo PuntosCriterio'
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Top = 344
  end
  object cdsPuntosClub: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'PuntosClubID'
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
        Name = 'Puntos'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    LogicalName = 'dbo PuntosClub'
    IndexDefs = <>
    Left = 464
    Top = 312
  end
  object dsPuntosClub: TDADataSource
    DataSet = cdsPuntosClub.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsPuntosClub
    Left = 464
    Top = 344
  end
  object cdsMemClub: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 464
    Top = 392
    object cdsMemClubPuntosClubID: TIntegerField
      FieldName = 'PuntosClubID'
    end
    object cdsMemClubPuntos: TFloatField
      FieldName = 'Puntos'
    end
    object cdsMemClubNombre: TStringField
      FieldName = 'Nombre'
    end
  end
  object dsMemClub: TDataSource
    DataSet = cdsMemClub
    Left = 464
    Top = 424
  end
  object cdsPuntosListaClub: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'PuntosClubID'
        DataType = datInteger
      end
      item
        Name = 'PuntosCriterioID'
        DataType = datInteger
      end
      item
        Name = 'Puntos'
        DataType = datFloat
      end>
    Params = <
      item
        Name = 'PuntosCriterioID'
        DataType = datInteger
        Value = '0'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsCatalogoAfterPost
    AfterDelete = cdsCatalogoAfterPost
    LogicalName = 'dbo PuntosListaClub'
    IndexDefs = <>
    Left = 544
    Top = 400
  end
  object dsPuntosListaClub: TDADataSource
    DataSet = cdsPuntosListaClub.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsPuntosListaClub
    Left = 544
    Top = 432
  end
end
