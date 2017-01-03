inherited frmCierreMensual: TfrmCierreMensual
  Caption = 'frmCierreMensual'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Cierre de Mes'
    TabOrder = 0
    Height = 113
    Width = 625
    object cbEstacion: TcxLookupComboBox
      Left = 16
      Top = 40
      Properties.KeyFieldNames = 'EstacionID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEstaciones
      TabOrder = 0
      Width = 257
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 24
      Caption = 'Estaci'#243'n:'
      Transparent = True
    end
    object dtpFechaFin: TcxDateEdit
      Left = 152
      Top = 80
      TabOrder = 2
      Width = 121
    end
    object dtpFechaIni: TcxDateEdit
      Left = 16
      Top = 80
      TabOrder = 3
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 64
      Caption = 'Fecha Inicial:'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 152
      Top = 64
      Caption = 'Fecha Final:'
      Transparent = True
    end
    object edtMagna: TcxCurrencyEdit
      Left = 288
      Top = 80
      EditValue = '.36'
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#0.0000'
      TabOrder = 6
      Width = 81
    end
    object cxLabel4: TcxLabel
      Left = 288
      Top = 64
      Caption = 'IEPS Magna:'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 376
      Top = 64
      Caption = 'IEPS Premium:'
      Transparent = True
    end
    object edtPremium: TcxCurrencyEdit
      Left = 376
      Top = 80
      EditValue = '.4392'
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#0.0000'
      TabOrder = 9
      Width = 81
    end
    object cxLabel6: TcxLabel
      Left = 464
      Top = 64
      Caption = 'IEPS Diesel:'
      Transparent = True
    end
    object edtDiesel: TcxCurrencyEdit
      Left = 464
      Top = 80
      EditValue = '.2988'
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 4
      Properties.DisplayFormat = '#0.0000'
      TabOrder = 11
      Width = 81
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 113
    Width = 625
    Height = 336
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsCierre
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column1
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column2
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Column1
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Position = spFooter
          Column = cxGrid1DBTableView1Column2
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column1
        end
        item
          Format = '$#,#0.00'
          Kind = skSum
          Column = cxGrid1DBTableView1Column2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      object cxGrid1DBTableView1GrupoCierre: TcxGridDBColumn
        Caption = 'Grupo Cierre'
        DataBinding.FieldName = 'GrupoCierre'
        Visible = False
        GroupIndex = 0
        Width = 174
      end
      object cxGrid1DBTableView1Tipo: TcxGridDBColumn
        DataBinding.FieldName = 'Tipo'
        Width = 181
      end
      object cxGrid1DBTableView1Cantidad: TcxGridDBColumn
        DataBinding.FieldName = 'Cantidad'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '#,#0.00'
        Width = 125
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'Cargos'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Width = 99
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Abonos'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Width = 89
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cdsCierre: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'TipoValorID'
        DataType = datInteger
      end
      item
        Name = 'GrupoCierre'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Tipo'
        DataType = datString
        Size = 80
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'Cantidad'
        DataType = datFloat
      end
      item
        Name = 'Operador'
        DataType = datInteger
      end
      item
        Name = 'TurnoINI'
        DataType = datInteger
      end
      item
        Name = 'TurnoFIN'
        DataType = datInteger
      end
      item
        Name = 'Documentos'
        DataType = datFloat
      end
      item
        Name = 'Estacion'
        DataType = datString
        Size = 100
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'FechaINI'
        DataType = datDateTime
      end
      item
        Name = 'FechaFIN'
        DataType = datDateTime
      end
      item
        Name = 'IVA'
        DataType = datFloat
      end
      item
        Name = 'Cargos'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end
      item
        Name = 'Abonos'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end
      item
        Name = 'CSubTotal'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end
      item
        Name = 'CIVA'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end
      item
        Name = 'CIEPS'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end
      item
        Name = 'CImporte'
        DataType = datFloat
        LogChanges = False
        Calculated = True
      end>
    Params = <
      item
        Name = 'FechaIni'
        DataType = datDateTime
        Value = 36894d
        ParamType = daptInput
      end
      item
        Name = 'FechaFin'
        DataType = datDateTime
        Value = 39538d
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    OnCalcFields = cdsCierreCalcFields
    LogicalName = 'spCierreMensual'
    IndexDefs = <>
    Left = 296
    Top = 208
  end
  object dsCierre: TDADataSource
    DataSet = cdsCierre.Dataset
    DataTable = cdsCierre
    Left = 296
    Top = 256
  end
  object cdsEstaciones: TDAMemDataTable
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
    LogicalName = 'dbo Estacion'
    IndexDefs = <>
    Left = 376
    Top = 208
  end
  object dsEstaciones: TDADataSource
    DataSet = cdsEstaciones.Dataset
    DataTable = cdsEstaciones
    Left = 376
    Top = 256
  end
  object cdsMermaRango: TDAMemDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ProductoID'
        DataType = datInteger
      end
      item
        Name = 'Volumen'
        DataType = datFloat
      end
      item
        Name = 'Importe'
        DataType = datFloat
      end
      item
        Name = 'Diferencia'
        DataType = datFloat
      end
      item
        Name = 'ImporteTrama'
        DataType = datFloat
      end>
    Params = <
      item
        Name = 'TurnoINI'
        Value = '1'
      end
      item
        Name = 'TurnoFIN'
        Value = '1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.AdapterCistemGas
    LogicalName = 'MermaRango'
    IndexDefs = <>
    Left = 104
    Top = 288
  end
  object dbpCierre: TppDBPipeline
    DataSource = dsCierre
    UserName = 'dbpCierre'
    Left = 456
    Top = 56
  end
  object repCierre: TppReport
    AutoStop = False
    DataPipeline = dbpCierre
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Letter'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 256
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<HallarTexto>'
    TextSearchSettings.Enabled = True
    Left = 400
    Top = 56
    Version = '10.09'
    mmColumnWidth = 0
    DataPipelineName = 'dbpCierre'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40217
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cierre de Liquidaciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5165
        mmLeft = 265
        mmTop = 10054
        mmWidth = 48175
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 529
        mmTop = 20638
        mmWidth = 139700
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 22490
        mmWidth = 8996
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 26458
        mmWidth = 14023
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DisplayFormat = 'dddd dd/mmm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10848
        mmTop = 22490
        mmWidth = 23283
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 38629
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Label23'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 265
        mmTop = 16140
        mmWidth = 13081
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Picture.Data = {
          0A544A504547496D616765C1150000FFD8FFE000104A46494600010101006000
          600000FFDB004300070404040504070505070A0705070A0C090707090C0D0B0B
          0C0B0B0D110D0D0D0D0D0D110D0F1011100F0D1414161614141E1D1D1D1E2222
          2222222222222222FFDB0043010807070D0C0D181010181A1511151A20202020
          2020202020202020202120202020202021212120202021212121212121212222
          22222222222222222222222222FFC0001108006E009C03011100021101031101
          FFC4001C0000020203010100000000000000000000000605070304080201FFC4
          004E100000050302030403071007090000000001020304050006110712132131
          081422411551612332718192A1B317333637424352536272738391A2B2D21656
          75B1B4C1D12426354446748294E3FFC4001A0101000301010100000000000000
          00000000010304050206FFC4002D110002010303020601040301000000000000
          010203041105123113211533415152A1142232347123426181FFDA000C030100
          02110311003F00E91A00A00A00A00A00A00A00A00A00A00A00A00A00A00A00A0
          3E08800647A50109357E5A9119076F93E297EF29FBA1FE4973F3D5F4AD2A4F84
          62B8D4E852FDD242BDC5AB724C96EE8CA2CC0B9885548758721C3386487DA4F6
          7AC6B65BE9B1977723957BAF4E9F68C1E79EFEC33D8530FA6AD76D24FC40CE56
          13EE1286D0E47100E558EEE9AA751C5707534CB8956A2A72E593B541B8280280
          280280280280280280280280280280F2739485131C7050E6223D00280569FD5D
          B06104535E448BB90FBC35F763FEEF843E31AD34ACAACF8467AB794E1CB1166F
          B45BA5B727051E0900F459D0EE37C3B09CBE7ADF4B48F933975F597FE884F95B
          F6ED9B11F48C82A64C7EF298F0D3F924C7CF5D0A5694E1C2389757B5AA72CDCB
          1578C19E6EDDFB14DEA4E0E528F14E620261F747E5C8701CF9D45DC65D37B5E0
          A2C367596F5B90E7A877D42CB438B4827424326AF0D726CDBC6443A6C3F99007
          CAB0D85A4A32DD35D8E96B3A9D2A94B6D37DD3C3FF00A86ED28FB0563FACFA41
          AC1A879CCEC685FC588D1594EA0500500500500500500500500501AB252D1B18
          D8CEA45CA4D1B1799955CE54CBCBDA610A4537C033A0BA4BA045D1301D150A07
          4CE1D04A60C8087C21407BA0177539CF75D3D9C5FF000592C1F28B8FF3ABAD96
          6A2FECF157F6B394DA9C0085C72E55F52702A40DD495A931D481B68A94325481
          33030D3B30A8A310D8EE55C78B67900FAC4443955756B460BF51553B59D47882
          CB1C2EDD383C02657A774922C3829F84E61154CE36F8C8428073E7CEB1DAEA3D
          478C77C9A352D17A2B765258FB2C4D27FB0463FACFA41AE56A3E733E8B43FE2C
          469AC8750280280280280280280280ABB503B4AD9D68CA388549B3891976A6D8
          BA698026910D8CE054375EBE4035B2869F3A8B3C22C852C951DD3DA9B5265F72
          7162843361E9C02F155C7E914CFCC50AE8D3D2E0B9EE5F1A08AF5C49CEDCD30D
          C92AF577CE5CAC9A60670A194E6A1C0BC80DC83AF956AE9C6117847A71491DD6
          D502B76A9205E4548852007B0A18AF996CC4CC95004AD77722DF4A6684070274
          C89FCB54A15AAC17F9A278ABFB4E5E494AFA4391389B88A95264A9036D252A4C
          95204D5B13048B9B6B22713F0DB1C1431133094C7DBCC0B9F508F5AAABD3DF0C
          15529F4E6A5EC305C9A853B70B533498493E4A8386A205D87440C1EF43F08A25
          1F3AA2DACE349E62C8D42FEA565B64963945B7A4839B0580FE93E90D5C6D47CE
          67D268BFC688D5590E90500500500500500501E545089A6650E3821004C61F60
          510383EE8963CCDCB272C61C8BC76B2DF11D4110F9ABEA68476C1237C17623AA
          D3D8CFA4B1BE92D4CB79A632517C91CDF9A90F107E62D66BC9629BFE8AEAF076
          64ADCB6EC4904F2920D9A143F1CA909FC4215F391849F08C586274BF68AD248E
          C97D2DDF140FB86899D5F9F005F9EB4474FACFD09D8CACF567B4141DE36C2D6F
          C431729916513399D38121436A66DD8D80261E78AE859E9F2A73DD22B9956A4A
          D750C1381B69294325489B88A95264A90192C9616FCACDA11B3077442BA50A92
          066A05378CC38C1F773C0FAC2B3DD549C21BA278A142139E24597AB91769B08F
          4E4DA332BC7A1B23CCB156F7340522E09C4214799F0180CD73B4EA951CB19C2E
          4D7ABD1A4A1B92CBE06DD1E1CE9EC70FE93E90D59350F3A46FD23F8F11B2B21D
          00A00A00A00A00A00A01635626C6134DE7648070A26CD42A7F9EA070CBF39AAD
          B68EEA891EA0BB9C460180C57D41BD20A924CAD5D396AB1576CA9D158B9DAAA6
          6129833C8702181E950D64868F0A9CEA9C5454454507A9CE2261FDA350A29704
          6D3D267C72A93C4A26DA2A5499670371252864A9036D256864A90371256A4C95
          224846C93964E9370D15145D93EB4A17DF809836F87DBCEBCCD26BBF0667179E
          DC93131152F032CE21DEEF2AE00432A50DC20A01CA07011F5F5F3AF14AA426B3
          133DC529C5E1E4BEF46873A731A3EC53E90D5C0D43CE91F43A5AFF000446EAC8
          6E0A00A00A00A00A00A02A1ED6937DCB4E518D28E0F24F132087E42402A1BE70
          2D6ED3219A99F62DA2BB9CB55F406D0A01AAC1D27BCEFB4DC2B6FA291D168629
          1755654130031C32001D4479566B8BB852E4AE75521ED87643BF960CBC918F6D
          EB0015551F98A50AC8F568FB157E4138C3B1C79C85C5F120DBFCCE7FF2AAA5AB
          3F447977022EB669843E9D48C5C7C7BB5DE28F1151658EBED0C6D36D2ED02807
          B6B658DD3AB9CF6C08BDC24A2AD6D29A903712528649C0DB455A192A4079D23B
          848C2E96E83C4D99E295131DE28F53298124D328984E438F329B972F5D64BEA7
          BA1DB393CD0ED2EFC0E1AA9A9D1571C127FD1B77B13154C948A074F86E0E9FDE
          CE06EA298E3980566B1B474E7FAFFF0008D42E14E1FA4B0B45473A6D17F029F4
          86AC1A879D23669DE4A1C2B21B0280280280280280280E6DED8337C6B961A14A
          3E16AD8EE540FCA58DB4BFBA9D7634987672345BA28EAEB1A8FA1420EA8EC9F1
          3DCF4C8EF4C183BF7AAA9FF8A600987F08D7CFEA72CD531D6E4B6AB0951F0680
          E60ED74EF89A851EDFF111E51F96A9FF00D2BB7A4AFD0CD341762A5454AE9935
          226DA2AD0C9381B88A94325480C56BD9D73DC99F42B333A2904A554C512F8370
          F5300880E3CFA55556E234F933F41C98DB7EE925C36DC83B72D50E25BA894872
          3C3A899719286E2E0C60308EFCF40ACF6BA8466927FB8A6E6CDAFE8B8B4479E9
          9450FE4A9F4A6AE4EA1E748E858F94872AC86A0CD005006680280280280E62D7
          0D38D4FB9F52E4E51841B95E3FDCD06AB17660C9A4400C864DE66CD766CAE694
          29E1BEE69A73490926D12D5A2F5B75E7C4528FF70D6CFCEA5F2459D64791D16D
          58FEAE3DF901FEB51F9F4BDC8EB23AB7496DF736F69C42C43A4C517683628B84
          8DD4AA9C44E701F80C6AE0DCCF74DB32C9F71A2A93C80D01CDDDA1B4D750EE5D
          4956421A1D7771C46A8249AE4DBB444A022600C983A09ABAFA7DD4210C378345
          19A48400D0ED5B0FFA75D7EE7F356CFCEA5F22C7522664F45F564A1CEDD77CBF
          33F9AA7F3A97C8A26D1992D24D520EB6E3EF905FE6A9FCDA3F24679C066D3BB2
          F516DABB1ACE39B7E4F84D00E6145000299636D1022661DD8DA26C673545CD7A
          5521B7722A50698C77E9B53EF9856C8C95ACF5AC933702A25C1E681D13863072
          89B20A139606A9B4E9519E54934D14DC42735C16869045C8C569E46309240ED9
          EA453F11153918B950C219F886B9F79352A8DAE0D16D071824CE72ED03AABA8F
          07AB73319113CF59C7A228F09BA4A89485DC810C3800F68E6B39717769D4FCF3
          FECEE94E3C78B2D3268B78B77C31B2AF109C5D86DDEB0DA140738585AC7AA8FA
          F78364EEE47EAB55DFB64D648CB184A621952818A3EC10A01DBB526B25ECC6FC
          56D4847EB46C6B04921545B1C535165152029931C3C58281800033401A5FA67A
          C97F59E8DCADEFB76CD25CEA11340EAB938FB9184991103863221405790FACFA
          A5695D02A8CE3A7A2C96324BB670B1D5416021F698A25388F21C75EA14059BDA
          9F51AF387B9A0C60255DC6367916470741BAA621771D43731DB8C8E3966808FD
          1C89D6CD4D887B22CEFC78C0AC96040C9AA759413649BF202060F5D008B2DAB9
          AC96FDC4EA3CF74BE5978E72A2263718C74CE644E25F7A6C809471D0680B27B4
          6EA8DF91CDACF7D0F2AE234D29140E9DA6D5414C8654FB044701F0F2A03DE8BB
          9D55D4DD3E9D668DD2E5B4BA0FDA1917EB28A18C44B86A6F4CA25F1001871FB2
          80FB7DE9E6B25936BBAB8663521606CDC3C0915473BD554DEF12264DEF8C3405
          5307A8FAD13930D62232E0935E41E2A5450481CA99131BE3E401D44680B775E6
          F3BDB4C6CE81B3A3A5DCAD2AFD3557949B514319C1CC5128091239B2242EE11E
          9E5402A68CDB9AB9A9E8482CD2F57B1E9C799321B88B38504C2A818431B4E5C6
          36D4600B97B5D5AB5A7F7CBB8252EA7AE5DC6284F7605D514CFB88550B922822
          1D0DCC06A700B3F573566F27BA27675D316F558994937064DD99A9C5203090A7
          20F4FB9131376280A9CFAC9AD10737C17D3D21DED8AC1C66AE1530944C99B224
          3947A94680E99BC351BD39D9EE42F4B71C9DAB951902845123614416050A5509
          90E82536428090ECF3332B35A490F252CE5478FD6E3715C2C6DE736173943223
          EA00A03983B4DFDBB677F390FF000E9D00E7676803898D204EEF2DD0F5B26662
          E5D7A34803C20E0F13C1F5C0E46D9EAA02A5D35FB625BDFDA4D3E98B4037F6A8
          28FD5B65F3F8B6BFE1C9405FBD945C370D168F0150A0255DD6E0DC1CBDD8DD7D
          5407225CE206B924C4A390176BF3FD68D016CF6B8FF8FDAFFD888FF19A80C3A5
          B6B4C4F681DCEB42385DBCBC4C811F3716E73A6639536FEEA9F80433926443DA
          14056769338796BAD8B3B85D2ADA39E2E54DDBC260CA138838DFE3E5EF87C423
          E5405C1DB1A31B45485A718D73DD59C69D04770E476266294B91F5E028065EC4
          67292DDB94E610294AE1B898C3C8003867E634056BDA3F580D7EDD7DC6394FF7
          6628C64D9E3A2CAF43B81F87A13D9F0D0169764ED23461A37FA7736529651F13
          6C5A47C6526C6EAAE3C8CAF97E4FC3402E76DC1019FB70C5E65EEAE39874FAE1
          68095EC44B2058EB948639414E2B51DA2219C6D539E3D540557DA5144D4D6CB8
          0C9980C5DE8864A390C8374C07F6500CDA84021D9934FF0097FCE2FF00C4B501
          3BDAB74AC48C98EA1C627E155245BCC8143EEB60024B8FC3EF0DF15015BD85A9
          468AB06EAB29F1CDE8F986A2A32F3023B218A38F602A42F3F680501D3BD987ED
          2707F02FFE214A0213513B2B41DED783DB99CCD396AB3D1209904D2218A5D842
          A7C84473F73403D5B5A78D60B4D8B62A6ECEB362B55DA77B31400F85F7E4DB7A
          72DF405676F7638B7A16758CBA73CE94518B849C15314530030A4703E079F9E2
          8070D57ECFF676A3BB4645F1D6632C91787DF1B6DC9D30E8550A60101C790D00
          949F62DB6D220953B8E44851EA052A601406FDB1D8F2C187994249F3E7728440
          C0A15A2C099523183986FDA19307B2809ED5DECF50DA9534D255EC9AEC4CD1BF
          762A4890862886F31F3E2FCEA02274ED3D2ED1B2CA5B0A4DACE9C2CB95472559
          B9BC23C300DBE028944315E1D54746868F71563BA31ECCADE4B493B3E3C9170E
          91BA9EB549650CA11B91A88953030E7694449D03A05475A25BE0177F1FB186FA
          85D1BBD5942213376BE32F0AD3B995C95B0EE58321832994C7C580F2A75A23C0
          2EFE3F616EC4691DB965CCDAD0F78BE4119B3A62EDD7751E282498081932E080
          0007036047D54EB447805DFC7EC55FA8BE837F5C9FFF00E98FF253AD123C02EF
          E3F68CFF00528D1500FB3A94C074FF00663FF2D3AD127C02EFE3F6319ADBD007
          3A7E85A1273CEDDF7570ABA672628A857090AD8DE50F018360ED0C853AD11E01
          77F1FB1651D20D0B444451BD649311EA256A60FEE253AD123C02EFE3F67B6BA4
          1D9F08F08B3CBB245CA406DCAA5DDC4827F586FE1888669D6893E0177F1FB1DF
          510DA1D795AD136C926968A8D873819A11B36507901360147713DB9A75A23C02
          EFE3F637C9EAA68FCADBCB4048BF15E3DC37EECB10C82DE220976FE075F30F6D
          3AD11E0177F1FB2961D1AECFC23CAEF9100FFB6FFE74EB447805DFC7ECE82D1C
          89B7E234F23A3EDE78A3F894B89C074B178673654309B25C074308D7B4F2736B
          D195296D97286EA92B0A00A00A00A00A03E5014C4B6B04DCC5C7388DB810B1F0
          702A020E65A6B7ED5DC18C24021766319310719F556D56B1514E596D97472972
          C98D56D495ECBB2E35DB364C9F5C6FD305386526E6FC34D303AEB06306D81900
          0E7E75E2DAD5549B5E8845C9FAB305FBABC8C2693C4DDF1B1E828F6641122627
          4F28A0739372863E398EC128800679D4D2B3CD4717E813967966043570911A4C
          BDE5303192EB8AFDDA3BD1C99D22A8710C94AB9150DC918BCC4C1EAF86A5D9A7
          536704E659E59AD6B6A5DE0D2FB84B7AF4631C642E568476C4EC521299015004
          C54D4DC23BBDEE06A6A5AC36371FF50DBC72C9BD30BEA42ECBEAEA8974CD9962
          6156E0B43A4960E61E21C9E3111101E49F90578B8B78C2317EAC89B925CB216D
          BD5D9692B76FA9970C188256D98E48E02A621BC437EDE2F31CFBD2F4C57B9D9A
          4E2BE44B72F7669D95AF0B5C89C0C7F706495C0EA58AC6510E18E01A8A663F19
          20EA03E1DBCF381AF55AC1433ED8265B97AB33B0D599E92D5691B492F42B18E6
          6F7BBA27748A82B2E5E2010534F60E388219EA18AF33B48C69EEEF9646658E59
          0D7E7681B960EF698858C8D8C59B47392376E8A89282E17CE0040BB4719037B2
          ADA5A7C650DCC98E719CB1B758B555CD970718A46C4B7526DDA60E9E355C992B
          76E0000613EDC0E78A70207C7545B5A2A8DFB2221B9FAB0D5BD594ED8B36125A
          19A3615A784829BB592E2208266201CC61293026306EE45CFAEA2DED37CDA7E8
          445C9BE58DFA6337213767B69174E183A3AA27D8BC601CA818803801D8A78887
          FC228F4AAAB4146583C4F91A2AA3C0500500500500501F280A8E7BB323091792
          856738E19434CB92BD7AC0114D4F762098C5D8A184040005437956D85F612EDD
          D16753B13774E86425CCF1CB89674758A11A58D884B6E0196D0E6B17021BCE61
          C0F3E5E555D3BB9478F7C90AA60D469A297131B118DAAC2E73240C955CFC53B3
          4964D54D7FBDA892A260F00888946BD3BA4E7B9A27A9DF2654BB3DDA85D3352C
          73AEA98AAADDF0F2380057BDF405767BDC017C3B7D55E5DDCBA9BC8EA773DD8B
          A27E849F6D70DC330ACF4B47B70671665532A49B740A1B400A501364D811E623
          535AEB72C2584F9129E4F3A7DA3935675CCFA55BCFF19949AE770F99775200A8
          23BC481C513098BB44F9E5D6956E54E29638129E4C10BA049C6D8D3F6B7A5CEA
          1A7DC15759E704A0620018A22502EE101CEDEBEDA99DDE64A5EC37F7339741A1
          90D546D7E3175DDCA978D58E2A61B0EB70C531500D9F0E73910C75A7E649D3D8
          C9EA763CDA9A2D2F6E5EEF6E5697088A324E8CE5FB216890F10A2631CA982A61
          318801BFA96A2A5D2941471C0753B10531D978242E7777192E05109070FF00D2
          09181B947866DE2702878F9E07156C350C436E09557B609FBC741E2EEE7B3325
          32F4CB49C8228378E5B8782B1223CC78640306FDE6C88EEAAA95DB8631C23CC6
          7830BBD15B894B222ED66D73991423D155B2A26668AC45D254DE1C914136D326
          5F0944068AE96F72C12AA771BEC0B1E2EC9B5DB5BD18631D043263ACA7BF5143
          8E4E73639731AA2B5573964F0DE4FFD9}
        mmHeight = 28840
        mmLeft = 141552
        mmTop = 0
        mmWidth = 61913
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Estacion'
        DataPipeline = dbpCierre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 5842
        mmLeft = 265
        mmTop = 794
        mmWidth = 52663
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 0
        mmTop = 26458
        mmWidth = 7197
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cantidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 65617
        mmTop = 35190
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cargos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 164571
        mmTop = 35190
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Abonos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 189177
        mmTop = 35190
        mmWidth = 13229
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 34131
        mmWidth = 203200
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Decripcion'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 35190
        mmWidth = 18373
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'SubTotal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 91281
        mmTop = 35190
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IVA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 122481
        mmTop = 35190
        mmWidth = 5842
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'IEPS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 142685
        mmTop = 35190
        mmWidth = 8128
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Turno Inicial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 52917
        mmTop = 22490
        mmWidth = 17441
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Turno Final:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3302
        mmLeft = 52917
        mmTop = 26458
        mmWidth = 16087
        BandType = 0
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TurnoINI'
        DataPipeline = dbpCierre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3302
        mmLeft = 72231
        mmTop = 22490
        mmWidth = 17198
        BandType = 0
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'TurnoFIN'
        DataPipeline = dbpCierre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3302
        mmLeft = 72231
        mmTop = 26458
        mmWidth = 17198
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Tipo'
        DataPipeline = dbpCierre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 1323
        mmWidth = 60590
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Cantidad'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 61913
        mmTop = 1323
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Cargos'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3302
        mmLeft = 151607
        mmTop = 1323
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Abonos'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 177271
        mmTop = 1323
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CSubTotal'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 81492
        mmTop = 1323
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CIVA'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 107686
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CIEPS'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3175
        mmLeft = 130175
        mmTop = 1323
        mmWidth = 20638
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = clSilver
        ParentHeight = True
        ParentWidth = True
        Pen.Style = psClear
        mmHeight = 6085
        mmLeft = 0
        mmTop = 0
        mmWidth = 203200
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Cargos'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3302
        mmLeft = 151607
        mmTop = 794
        mmWidth = 25135
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'Abonos'
        DataPipeline = dbpCierre
        DisplayFormat = '#,#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpCierre'
        mmHeight = 3302
        mmLeft = 177271
        mmTop = 794
        mmWidth = 25135
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'GrupoCierre'
      DataPipeline = dbpCierre
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpCierre'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'GrupoCierre'
          DataPipeline = dbpCierre
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 4233
          mmLeft = 0
          mmTop = 1058
          mmWidth = 28533
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Cargos'
          DataPipeline = dbpCierre
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 3302
          mmLeft = 151607
          mmTop = 794
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Abonos'
          DataPipeline = dbpCierre
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 3302
          mmLeft = 177271
          mmTop = 529
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 151607
          mmTop = 0
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 177271
          mmTop = 0
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CSubTotal'
          DataPipeline = dbpCierre
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 3175
          mmLeft = 81492
          mmTop = 794
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 81492
          mmTop = 0
          mmWidth = 25135
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CIVA'
          DataPipeline = dbpCierre
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 3175
          mmLeft = 107686
          mmTop = 794
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 107686
          mmTop = 0
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CIEPS'
          DataPipeline = dbpCierre
          DisplayFormat = '#,#0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpCierre'
          mmHeight = 3175
          mmLeft = 130175
          mmTop = 794
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 130175
          mmTop = 0
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        4C6162656C32334F6E476574546578740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506CA70726F636564757265204C616265
        6C32334F6E476574546578742876617220546578743A20537472696E67293B0D
        0A626567696E0D0A0D0A202054657874203A3D202744656C2027202B20466F72
        6D61744461746554696D65282764642F6D6D6D2F79797979272C206462704369
        657272655B274665636861494E49275D29202B202720416C2027202B20466F72
        6D61744461746554696D65282764642F6D6D6D2F79797979272C206462704369
        657272655B27466563686146494E275D293B0D0A0D0A656E643B0D0A0D436F6D
        706F6E656E744E616D6506074C6162656C3233094576656E744E616D6506094F
        6E47657454657874074576656E74494402350001060F5472614576656E744861
        6E646C65720B50726F6772616D4E616D65061B47726F7570466F6F7465724261
        6E64314265666F72655072696E740B50726F6772616D54797065070B74745072
        6F63656475726506536F757263650CC302000070726F6365647572652047726F
        7570466F6F74657242616E64314265666F72655072696E743B0D0A626567696E
        0D0A2020444243616C63362E56697369626C653A3D2028646270436965727265
        5B27477275706F436965727265275D203D2027434F4D4255535449424C455327
        29206F7220286462704369657272655B27477275706F436965727265275D203D
        202750524F445543544F5327293B0D0A2020444243616C63372E56697369626C
        653A3D20286462704369657272655B27477275706F436965727265275D203D20
        27434F4D4255535449424C45532729206F7220286462704369657272655B2747
        7275706F436965727265275D203D202750524F445543544F5327293B0D0A2020
        444243616C63382E56697369626C653A3D20286462704369657272655B274772
        75706F436965727265275D203D2027434F4D4255535449424C45532729206F72
        20286462704369657272655B27477275706F436965727265275D203D20275052
        4F445543544F5327293B0D0A20204C696E65372E56697369626C653A3D202864
        62704369657272655B27477275706F436965727265275D203D2027434F4D4255
        535449424C45532729206F7220286462704369657272655B27477275706F4369
        65727265275D203D202750524F445543544F5327293B0D0A20204C696E65382E
        56697369626C653A3D20286462704369657272655B27477275706F4369657272
        65275D203D2027434F4D4255535449424C45532729206F722028646270436965
        7272655B27477275706F436965727265275D203D202750524F445543544F5327
        293B0D0A20204C696E65392E56697369626C653A3D2028646270436965727265
        5B27477275706F436965727265275D203D2027434F4D4255535449424C455327
        29206F7220286462704369657272655B27477275706F436965727265275D203D
        202750524F445543544F5327293B0D0A656E643B0D0A0D436F6D706F6E656E74
        4E616D65061047726F7570466F6F74657242616E6431094576656E744E616D65
        060B4265666F72655072696E74074576656E74494402180000}
    end
    object ppParameterList1: TppParameterList
    end
  end
end
