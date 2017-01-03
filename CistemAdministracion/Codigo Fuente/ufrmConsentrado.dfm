inherited frmConcentrado: TfrmConcentrado
  Caption = 'frmConcentrado'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object Depositos: TcxPageControl
    Left = 0
    Top = 137
    Width = 625
    Height = 312
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 288
    ClientRectRight = 625
    ClientRectTop = 0
    object cxTabSheet1: TcxTabSheet
      Caption = 'Concentrado'
      ImageIndex = 0
      object cxLabel4: TcxLabel
        Left = 40
        Top = 30
        Caption = 'Corte'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object cxLabel5: TcxLabel
        Left = 40
        Top = 57
        Caption = 'Aceites'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object cxLabel6: TcxLabel
        Left = 40
        Top = 89
        Caption = 'Creditos'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object cxLabel7: TcxLabel
        Left = 40
        Top = 116
        Caption = 'Gastos'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object cxLabel9: TcxLabel
        Left = 40
        Top = 165
        Caption = 'Dif. en Creditos'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object cxLabel10: TcxLabel
        Left = 40
        Top = 192
        Caption = 'Dif. en Litros'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object txtCombustible: TcxTextEdit
        Left = 120
        Top = 29
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 6
        OnExit = txtCombustibleExit
        Width = 81
      end
      object cxTextEdit9: TcxTextEdit
        Left = 120
        Top = 164
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 7
        Width = 81
      end
      object cxTextEdit10: TcxTextEdit
        Left = 120
        Top = 191
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 8
        Width = 81
      end
      object cxGroupBox3: TcxGroupBox
        Left = 223
        Top = 19
        Caption = ' Dollares '
        TabOrder = 9
        Height = 121
        Width = 321
        object cxLabel8: TcxLabel
          Left = 16
          Top = 25
          Caption = 'TipoCambio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object dbTipoCambio: TcxDBTextEdit
          Left = 82
          Top = 24
          DataBinding.DataField = 'TipoCambio'
          DataBinding.DataSource = dsConcentradoDlls
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 1
          Width = 103
        end
        object dbImportePesos: TcxDBTextEdit
          Left = 82
          Top = 78
          DataBinding.DataField = 'Importe'
          DataBinding.DataSource = dsConcentradoDlls
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 2
          Width = 105
        end
        object Cantidad: TcxLabel
          Left = 16
          Top = 52
          Caption = 'Cantidad'
          Style.BorderStyle = ebsNone
        end
        object Importe: TcxLabel
          Left = 16
          Top = 79
          Caption = 'Importe'
          Style.BorderStyle = ebsNone
        end
        object dbCantidad: TcxDBTextEdit
          Left = 82
          Top = 51
          DataBinding.DataField = 'Cantidad'
          DataBinding.DataSource = dsConcentradoDlls
          Properties.Alignment.Horz = taRightJustify
          TabOrder = 5
          Width = 103
        end
      end
      object dbAceites: TcxDBTextEdit
        Left = 120
        Top = 56
        DataBinding.DataField = 'Aceites'
        DataBinding.DataSource = dsConcentradoAceites
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 10
        Width = 81
      end
      object dbCreditos: TcxDBTextEdit
        Left = 120
        Top = 88
        DataBinding.DataField = 'Credito'
        DataBinding.DataSource = dsConcentradoCreditos
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 11
        Width = 81
      end
      object dbGastos: TcxDBTextEdit
        Left = 119
        Top = 115
        DataBinding.DataField = 'Gastos'
        DataBinding.DataSource = dsConcentradoGastos
        Properties.Alignment.Horz = taRightJustify
        TabOrder = 12
        Width = 82
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Depositos'
      ImageIndex = 1
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 625
        Height = 288
        Align = alClient
        TabOrder = 0
        object cxGrid1DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsConcentradoDeposito
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '##,###,##0.#0'
              Kind = skSum
              Column = cxGrid1DBTableView1Cantidad
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          object cxGrid1DBTableView1Fecha: TcxGridDBColumn
            DataBinding.FieldName = 'Fecha'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
            DataBinding.FieldName = 'Cantidad'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Width = 100
          end
          object cxGrid1DBTableView1Descripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1EstacionID: TcxGridDBColumn
            DataBinding.FieldName = 'EstacionID'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1Secuencia: TcxGridDBColumn
            DataBinding.FieldName = 'Secuencia'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1Ejercicio: TcxGridDBColumn
            DataBinding.FieldName = 'Ejercicio'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1Periodo: TcxGridDBColumn
            DataBinding.FieldName = 'Periodo'
            PropertiesClassName = 'TcxLabelProperties'
          end
          object cxGrid1DBTableView1Dia: TcxGridDBColumn
            DataBinding.FieldName = 'Dia'
            PropertiesClassName = 'TcxLabelProperties'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Hint = '-'
    Align = alTop
    Caption = ' Datos '
    TabOrder = 1
    Transparent = True
    Height = 137
    Width = 625
    object cxGroupBox2: TcxGroupBox
      Left = 410
      Top = 8
      Caption = 'Totales'
      Style.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      TabOrder = 0
      Transparent = True
      Height = 118
      Width = 199
      object cxLabel1: TcxLabel
        Left = 24
        Top = 18
        Caption = 'Total'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object txtTotal: TcxTextEdit
        Left = 24
        Top = 34
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 1
        Text = '0'
        Width = 73
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 61
        Caption = 'Fichas'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object txtFichas: TcxTextEdit
        Left = 24
        Top = 77
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 3
        Text = '0'
        Width = 73
      end
      object cxLabel3: TcxLabel
        Left = 112
        Top = 61
        Caption = 'Diferencia'
        Style.BorderStyle = ebsNone
        Transparent = True
      end
      object txtDiferencia: TcxTextEdit
        Left = 112
        Top = 77
        Properties.Alignment.Horz = taRightJustify
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 5
        Text = '0'
        Width = 73
      end
    end
    object cxLabel11: TcxLabel
      Left = 16
      Top = 27
      Caption = 'Estacion'
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object Fecha: TcxLabel
      Left = 16
      Top = 78
      Caption = 'Fecha'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object edtFechaInicial: TcxDateEdit
      Left = 67
      Top = 77
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
      TabOrder = 3
      OnExit = edtFechaInicialExit
      Width = 110
    end
    object txtEstacion: TcxTextEdit
      Left = 67
      Top = 23
      TabOrder = 4
      Text = '0000'
      OnExit = txtEstacionExit
      Width = 46
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 67
      Top = 50
      DataBinding.DataField = 'Nombre'
      DataBinding.DataSource = dsEstacion
      Enabled = False
      TabOrder = 5
      Width = 265
    end
    object cbBtnBuscaEstacion: TcxButton
      Tag = 1
      Left = 338
      Top = 48
      Width = 66
      Height = 25
      Caption = 'Buscar'
      TabOrder = 6
      TabStop = False
      OnClick = cbBtnBuscaEstacionClick
      Colors.Default = clWhite
      Colors.Normal = clWhite
      Colors.Hot = clWhite
      Colors.Pressed = clWhite
      Colors.Disabled = clWhite
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100000000000000000000FFFF
        FF00FF00FF00623C230062442D005339240072503300CB925E00DAA97600836E
        5800695A4600FFCF8900C2AC8600D4D0C9000A0A0900EDFFFF00F8FFFF0064A5
        AD003692AD0051D4FF00EEFBFF000089BC0039CAFF005CD3FF00091114000493
        C9000C96CF000FA1DC001CBFFF001EC1FF0021BCFB0021BAFA002BC2FE0031C2
        FF002882A50057D0FF005DBAE0008CDDFF00C1EDFF00D0F2FF000075AA00027F
        B600129DDD0017A1E0001CB1F2001BADEB001AA5E0001FB7F8001FB4F4001EAF
        ED003FC5FE0045ABD7004AADD7004093B8007ACEF40072BBDD008AC5DE009DCC
        E200D0EBF700006FA5000173AA000774AC00087AB5000B84C0001498D700148A
        C5001697D50018445B0044ABDE0041A0D00099D3EF00AAD0E300BFE5F7000474
        AF00056BA5000B5B88000C4B6D001680B8002182B60000578A00035A91000464
        9E00046099000454860000518800002A470000243D0002558E0002416A000351
        8800033E640006609A000E6096000D24330000447600013B650000386C00161D
        2300000000000000000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        02505853020202020202020202020202572205184B0202020202020202020257
        1C120B045D0260600202020202572D4232240807615C60605A02020257201345
        460F0D094344340A0E5F524D1725263A3539374E1A212E0C0356595748101427
        3329283B192F1D11065557475738362316313F3C151B1E2A4C5E025757574140
        2C1F302B3D4F5B02020202020202024A513E4954020202020202020202020202
        0202020202020202020202020202020202020202020202020202020202020202
        0202020202020202020202020202020202020202020202020202}
      LookAndFeel.NativeStyle = True
    end
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = True
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RazonSocial'
        DataType = datString
        Size = 70
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 80
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 10
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Host'
        DataType = datString
        Size = 30
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
        BlobType = dabtUnknown
        Required = True
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'EstacionID'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ObtenerDatosEstacion'
    IndexDefs = <>
    Left = 560
    Top = 152
  end
  object dsEstacion: TDADataSource
    DataSet = cdsEstacion.Dataset
    DataTable = cdsEstacion
    Left = 592
    Top = 152
  end
  object cdsConcentradoAceites: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Aceites'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'ejercicio'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Estacion'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ConcentradoAceites'
    IndexDefs = <>
    Left = 563
    Top = 224
  end
  object dsConcentradoAceites: TDADataSource
    DataSet = cdsConcentradoAceites.Dataset
    DataTable = cdsConcentradoAceites
    Left = 591
    Top = 223
  end
  object cdsConcentradoCreditos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Credito'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'ejercicio'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Estacion'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ConcentradoCreditos'
    IndexDefs = <>
    Left = 562
    Top = 251
  end
  object dsConcentradoCreditos: TDADataSource
    DataSet = cdsConcentradoCreditos.Dataset
    DataTable = cdsConcentradoCreditos
    Left = 592
    Top = 251
  end
  object cdsConcentradoDlls: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Importe'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'TipoCambio'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,##0.#0'
        EditFormat = '##,###,##0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'ejercicio'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Estacion'
        BlobType = dabtUnknown
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ConcentradoDlls'
    IndexDefs = <>
    Left = 562
    Top = 278
  end
  object dsConcentradoDlls: TDADataSource
    DataSet = cdsConcentradoDlls.Dataset
    DataTable = cdsConcentradoDlls
    Left = 592
    Top = 279
  end
  object cdsConcentradoGastos: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Gastos'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'Ejercicio'
        BlobType = dabtUnknown
        Value = '2007'
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        BlobType = dabtUnknown
        Value = '8'
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        BlobType = dabtUnknown
        Value = '10'
        ParamType = daptInput
      end
      item
        Name = 'Estacion'
        BlobType = dabtUnknown
        Value = '5185'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ConcentradoGastos'
    IndexDefs = <>
    Left = 562
    Top = 306
  end
  object dsConcentradoGastos: TDADataSource
    DataSet = cdsConcentradoGastos.Dataset
    DataTable = cdsConcentradoGastos
    Left = 592
    Top = 307
  end
  object cdsConcentradoDeposito: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DepositoID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
        BlobType = dabtUnknown
        DisplayWidth = 0
        DisplayFormat = '##,###,#0.#0'
        EditFormat = '##,###,#0.#0'
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'UsuarioID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Secuencia'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Descripcion'
        DataType = datString
        Size = 50
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Periodo'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end
      item
        Name = 'Dia'
        DataType = datInteger
        BlobType = dabtUnknown
        DisplayWidth = 0
        Alignment = taLeftJustify
        InPrimaryKey = False
        Calculated = False
        ServerCalculated = False
        Lookup = False
        LookupCache = False
      end>
    Params = <
      item
        Name = 'Ejercicio'
        BlobType = dabtUnknown
        Value = '2007'
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        BlobType = dabtUnknown
        Value = '8'
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        BlobType = dabtUnknown
        Value = '10'
        ParamType = daptInput
      end
      item
        Name = 'Estacion'
        BlobType = dabtUnknown
        Value = '5185'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    ReadOnly = False
    DetailOptions = [dtCascadeOpenClose, dtCascadeApplyUpdates, dtAutoFetch, dtCascadeDelete, dtCascadeUpdate, dtDisableLogOfCascadeDeletes, dtDisableLogOfCascadeUpdates, dtIncludeInAllInOneFetch]
    MasterOptions = [moCascadeOpenClose, moCascadeApplyUpdates, moCascadeDelete, moCascadeUpdate, moDisableLogOfCascadeDeletes, moDisableLogOfCascadeUpdates]
    LogicalName = 'ConcentradoDeposito'
    IndexDefs = <>
    Left = 560
    Top = 336
  end
  object dsConcentradoDeposito: TDADataSource
    DataSet = cdsConcentradoDeposito.Dataset
    DataTable = cdsConcentradoDeposito
    Left = 592
    Top = 336
  end
end
