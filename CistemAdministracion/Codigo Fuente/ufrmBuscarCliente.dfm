inherited frmBuscarCliente: TfrmBuscarCliente
  Caption = 'Buscar Cliente'
  ClientHeight = 434
  OnPaint = FormPaint
  ExplicitWidth = 625
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcBuscar: TcxPageControl
    Height = 410
    ActivePage = tsAgregar
    ClientRectBottom = 380
    inherited tsBuscar: TcxTabSheet
      inherited dbgBuscar: TcxGrid
        Height = 311
        inherited dbgBuscarDBTableView2: TcxGridDBTableView
          object dbgBuscarDBTableView2ClienteID: TcxGridDBColumn
            DataBinding.FieldName = 'ClienteID'
          end
          object dbgBuscarDBTableView2Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 260
          end
          object dbgBuscarDBTableView2RFC: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
            Width = 106
          end
          object dbgBuscarDBTableView2Calle: TcxGridDBColumn
            DataBinding.FieldName = 'Calle'
          end
          object dbgBuscarDBTableView2Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Colonia'
          end
          object dbgBuscarDBTableView2Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgBuscarDBTableView2Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgBuscarDBTableView2CodigoPostal: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoPostal'
            Width = 70
          end
        end
      end
    end
    inherited tsAgregar: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 610
      ExplicitHeight = 360
      object GrpBoxDatos: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Datos '
        Enabled = False
        TabOrder = 0
        Height = 345
        Width = 610
        object LblClientes: TcxLabel
          Left = 16
          Top = 24
          Caption = 'Cliente'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCliente: TcxLabel
          Left = 112
          Top = 24
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 16
          Top = 64
          Caption = 'Calle'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCiudad: TcxLabel
          Left = 16
          Top = 104
          Caption = 'Ciudad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblColonia: TcxLabel
          Left = 296
          Top = 64
          Caption = 'Colonia'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblTelefono: TcxLabel
          Left = 384
          Top = 104
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCP: TcxLabel
          Left = 296
          Top = 104
          Caption = 'C.P.'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblRFC: TcxLabel
          Left = 16
          Top = 144
          Caption = 'R.F.C.'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCliente: TcxDBTextEdit
          Left = 16
          Top = 40
          DataBinding.DataField = 'ClienteID'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 89
        end
        object TxtNombre: TcxDBTextEdit
          Left = 112
          Top = 40
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 452
        end
        object TxtCalle: TcxDBTextEdit
          Left = 16
          Top = 80
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 273
        end
        object TxtColonia: TcxDBTextEdit
          Left = 296
          Top = 80
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 268
        end
        object TxtCiudad: TcxDBTextEdit
          Left = 16
          Top = 120
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 273
        end
        object TxtTelefono: TcxDBTextEdit
          Left = 384
          Top = 120
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 177
        end
        object TxtRFC: TcxDBTextEdit
          Left = 16
          Top = 160
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          OnExit = TxtRFCExit
          Width = 273
        end
        object TxtCP: TcxDBTextEdit
          Left = 296
          Top = 120
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          OnExit = TxtCPExit
          Width = 77
        end
        object CheckActivo: TcxDBCheckBox
          Left = 16
          Top = 320
          Caption = 'Cliente Activo?'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCliente
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 8
          Transparent = True
          Width = 153
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 296
          Top = 320
          Caption = 'Mostrar Cliente en Liquidacion?'
          DataBinding.DataField = 'MostrarLiquidacion'
          DataBinding.DataSource = dsCliente
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          TabOrder = 17
          Transparent = True
          Width = 177
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 16
          Top = 282
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 18
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 266
          Caption = 'Municipio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 244
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 20
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 227
          Caption = 'Localidad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 295
          Top = 227
          Caption = 'E-Mail'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 295
          Top = 244
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 23
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 295
          Top = 205
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 24
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxLabel6: TcxLabel
          Left = 296
          Top = 189
          Caption = 'Pais'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 205
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 26
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 189
          Caption = 'No Exterior'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 295
          Top = 160
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsCliente
          Properties.CharCase = ecUpperCase
          TabOrder = 28
          OnExit = TxtRFCExit
          Width = 273
        end
        object cxLabel4: TcxLabel
          Left = 295
          Top = 144
          Caption = 'Estado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
      object btnCancelar: TcxButton
        Left = 352
        Top = 348
        Width = 81
        Height = 25
        Caption = '&Cancelar'
        TabOrder = 1
        OnClick = btnCancelarClick
        Colors.Default = clWhite
        Colors.Normal = clWhite
        Colors.Hot = clWhite
        Colors.Pressed = clWhite
        Colors.Disabled = clWhite
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF000288010893010B99010C99010893000389FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000186010D9D021CAF021FB402
          1FB5021FB5021FB2021CB0010F9F000287FF00FFFF00FFFF00FFFF00FFFF00FF
          00038A0118B2021FB7021EB1021DB1021DB1021DB1021DB1021EB2021FB40219
          AC00048EFF00FFFF00FFFF00FF0001830118BB0220CC011CBF0015B4011AB002
          1DB1021DB1011CB00015AD011BB0021FB4021AAC000287FF00FFFF00FF010CA7
          0121E0011CD30726CC4966D70B28BC0018B00019AF0622B44A66CE0D2BB7011B
          B0021FB5010F9FFF00FF000187011CDC0120ED0017DC3655E2FFFFFFA4B4ED05
          20BB0119B28B9EE1FFFFFF4E6ACF0014AC021EB2021CB000038900069A0120F8
          011FF6001DE9031FE1738BEEFFFFFFA0B1ED93A5E7FFFFFF91A4E20823B4011B
          B0021DB1021FB4010895020CAA0A2EFE0323FB011FF6001CEB0018E1788FF0FF
          FFFFFFFFFF96A7EA021BB50019AF021DB1021DB10220B5010C99040EAC294DFE
          0D30FB011FFA001CF7011CEE8EA1F4FFFFFFFFFFFFA6B6EE0520C20018B6021D
          B1021DB10220B5010B980208A04162FB2F51FC001EFA0725FA8AA0FEFFFFFF8E
          A3F67991F2FFFFFFA3B4EE0C29C6011BB8021DB4021FB2000793000189314FEF
          7690FF0F2DFA3354FBFFFFFF91A5FE021EF30017E7738BF3FFFFFF4765E00016
          C2021FBD021CB2000288FF00FF0C1BBC819AFF728BFE1134FA3456FB0526FA00
          1CFA001CF40220ED3353ED0625DA011DD00220CB010DA1FF00FFFF00FF000189
          2943E6A5B7FF849AFC2341FB0323FA011FFA011FFA001EF7011BEE021FE50121
          E20118BF000184FF00FFFF00FFFF00FF01038F2A45E693A9FFABBBFF758FFE49
          69FC3658FB3153FC2346FC092CF70118CB00038BFF00FFFF00FFFF00FFFF00FF
          FF00FF0001890F1DBF3E5BF36B87FE728CFF5E7BFE395BFB1231EB010FB50001
          84FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000189030AA306
          11B2050FB10107A0000188FF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.NativeStyle = False
      end
      object btnNuevo: TcxButton
        Left = 160
        Top = 348
        Width = 78
        Height = 26
        Caption = '&Nuevo'
        TabOrder = 2
        OnClick = btnNuevoClick
        Colors.Default = clWhite
        Colors.Normal = clWhite
        Colors.Hot = clWhite
        Colors.Pressed = clWhite
        Colors.Disabled = clWhite
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000FF00FF00004B
          0000098611000A8615000D931A000C9518000C9C19000F991C000E9D1D001392
          240011A0210011A422001CA134001CB1350024BC430029B548002EC6520035CA
          5E0039D465000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000001
          0100000000000000000000000000010808010000000000000000000000010D0B
          080B0100000000000000000001100E0901040801000000000000000111120C01
          000103080100000000000000010F010000000001040100000000000000010000
          0000000001030100000000000000000000000000000001010000000000000000
          0000000000000001010000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        LookAndFeel.NativeStyle = False
      end
      object btnGuardar: TcxButton
        Left = 256
        Top = 348
        Width = 79
        Height = 26
        Caption = '&Guardar'
        TabOrder = 3
        OnClick = btnGuardarClick
        Colors.Default = clWhite
        Colors.Normal = clWhite
        Colors.Hot = clWhite
        Colors.Pressed = clWhite
        Colors.Disabled = clWhite
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FF7F2B287F2B28A18283A18283A18283A1
          8283A18283A18283A182837A1C1C7F2B28FF00FFFF00FFFF00FFFF00FF7F2B28
          CA4D4DB64545DDD4D5791617791617DCE0E0D7DADECED5D7BDBABD76100F9A2D
          2D7F2B28FF00FFFF00FFFF00FF7F2B28C24A4BB14444E2D9D9791617791617D9
          D8DAD9DEE1D3D9DCC1BDC1761111982D2D7F2B28FF00FFFF00FFFF00FF7F2B28
          C24A4AB04242E6DCDC791617791617D5D3D5D8DEE1D7DDE0C6C2C5700F0F962C
          2C7F2B28FF00FFFF00FFFF00FF7F2B28C24A4AB04141EADEDEE7DDDDDDD4D5D7
          D3D5D5D7D9D7D8DACAC2C57E17179E31317F2B28FF00FFFF00FFFF00FF7F2B28
          BF4748B84545BA4C4CBD5757BB5756B64E4EB44949BD5251BB4B4CB54242BF4A
          4A7F2B28FF00FFFF00FFFF00FF7F2B28A33B39B1605DC68684CB918FCC9190CC
          908FCB8988C98988CB9391CC9696BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FF7F2B28
          BD4B4CF7F7F7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF7F7F7BD4B
          4C7F2B28FF00FFFF00FFFF00FF7F2B28BD4B4CF7F7F7F7F7F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7BD4B4C7F2B28FF00FFFF00FFFF00FFFF00FF
          7F2B28F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F77F2B
          28FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.NativeStyle = False
      end
    end
  end
  inherited cdsBuscar: TDACDSDataTable
    Fields = <
      item
        Name = 'ClienteID'
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
        Size = 80
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 40
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
      end
      item
        Name = 'Curp'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaCheque'
        DataType = datBoolean
      end
      item
        Name = 'TicketBoucher'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaValeCredito'
        DataType = datBoolean
      end
      item
        Name = 'CuentaContableAnticipo'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableCredito'
        DataType = datString
        Size = 20
      end
      item
        Name = 'LimiteCredito'
        DataType = datFloat
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'DiasCredito'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Parametro'
        Value = '201'
        ParamType = daptInput
      end>
    LogicalName = 'BuscarCliente'
    Top = 256
  end
  inherited dsBuscar: TDADataSource
    DataSet = cdsBuscar.Dataset
  end
  object cdsCliente: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
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
        Size = 80
      end
      item
        Name = 'Grupo'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Calle'
        DataType = datString
        Size = 60
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Ciudad'
        DataType = datString
        Size = 30
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
      end
      item
        Name = 'Curp'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaCheque'
        DataType = datBoolean
      end
      item
        Name = 'TicketBoucher'
        DataType = datBoolean
      end
      item
        Name = 'AutorizaValeCredito'
        DataType = datBoolean
      end
      item
        Name = 'CuentaContableAnticipo'
        DataType = datString
        Size = 20
      end
      item
        Name = 'CuentaContableCredito'
        DataType = datString
        Size = 20
      end
      item
        Name = 'LimiteCredito'
        DataType = datFloat
      end
      item
        Name = 'Credito'
        DataType = datBoolean
      end
      item
        Name = 'DiasCredito'
        DataType = datInteger
      end
      item
        Name = 'FechaAltaCliente'
        DataType = datDateTime
      end
      item
        Name = 'FechaAltaExpress'
        DataType = datDateTime
      end
      item
        Name = 'RegistroCliente'
        DataType = datDateTime
      end
      item
        Name = 'RegistroExpress'
        DataType = datDateTime
      end
      item
        Name = 'Sexo'
        DataType = datInteger
      end
      item
        Name = 'MostrarLiquidacion'
        DataType = datBoolean
      end
      item
        Name = 'NoExterior'
        DataType = datString
        Size = 20
      end
      item
        Name = 'Localidad'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Municipio'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Estado'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Pais'
        DataType = datString
        Size = 50
      end
      item
        Name = 'email'
        DataType = datString
        Size = 100
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    AfterPost = cdsClienteAfterPost
    LogicalName = 'dbo Cliente'
    IndexDefs = <>
    Left = 448
    Top = 256
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 448
    Top = 304
  end
  object cdsRFC: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Rfc'
        DataType = datString
        Size = 15
      end>
    Params = <
      item
        Name = 'ClienteID'
        Value = '4120'
        ParamType = daptInput
      end
      item
        Name = 'Rfc'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ExisteRFC'
    IndexDefs = <>
    Left = 512
    Top = 192
  end
end
