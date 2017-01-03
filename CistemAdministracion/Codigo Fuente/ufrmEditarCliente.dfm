object frmEditarCliente: TfrmEditarCliente
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Datos Cliente'
  ClientHeight = 466
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pgcCatalogo: TcxPageControl
    Left = 0
    Top = 0
    Width = 634
    Height = 420
    ActivePage = cxTabSheet2
    Align = alTop
    Images = dmImages.Imagenes
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    TabOrder = 0
    TabPosition = tpBottom
    TabSlants.Kind = skCutCorner
    OnPageChanging = pgcCatalogoPageChanging
    ClientRectBottom = 390
    ClientRectLeft = 3
    ClientRectRight = 628
    ClientRectTop = 3
    object cxTabSheet2: TcxTabSheet
      Caption = 'Datos'
      ImageIndex = 15
      ExplicitHeight = 272
      object GrpBoxDatos: TcxGroupBox
        Left = 5
        Top = 3
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 378
        Width = 615
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
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 89
        end
        object TxtNombre: TcxDBTextEdit
          Left = 112
          Top = 40
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 452
        end
        object TxtGrupo: TcxDBTextEdit
          Left = 16
          Top = 200
          DataBinding.DataField = 'Grupo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 9
          Width = 273
        end
        object TxtCalle: TcxDBTextEdit
          Left = 16
          Top = 80
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 273
        end
        object TxtColonia: TcxDBTextEdit
          Left = 296
          Top = 80
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 268
        end
        object TxtCiudad: TcxDBTextEdit
          Left = 16
          Top = 120
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 273
        end
        object TxtTelefono: TcxDBTextEdit
          Left = 384
          Top = 120
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Width = 177
        end
        object TxtRFC: TcxDBTextEdit
          Left = 16
          Top = 160
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 7
          Width = 136
        end
        object LblGrupo: TcxLabel
          Left = 16
          Top = 184
          Caption = 'Grupo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCP: TcxDBTextEdit
          Left = 296
          Top = 120
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 77
        end
        object LblCurp: TcxLabel
          Left = 296
          Top = 144
          Caption = 'CURP'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCurp: TcxDBTextEdit
          Left = 296
          Top = 160
          DataBinding.DataField = 'Curp'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 8
          Width = 268
        end
        object CheckActivo: TcxDBCheckBox
          Left = 16
          Top = 341
          Caption = 'Cliente Activo?'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 10
          Transparent = True
          Width = 153
        end
        object cxLabel5: TcxLabel
          Left = 295
          Top = 184
          Caption = 'Estado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 295
          Top = 200
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 22
          Width = 273
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 223
          Caption = 'No Exterior'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 16
          Top = 239
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 24
          Width = 273
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 295
          Top = 239
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 25
          Width = 273
        end
        object cxLabel7: TcxLabel
          Left = 296
          Top = 223
          Caption = 'Pais'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 295
          Top = 261
          Caption = 'E-Mail'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 295
          Top = 278
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 28
          Width = 273
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 16
          Top = 278
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 29
          Width = 273
        end
        object cxLabel9: TcxLabel
          Left = 16
          Top = 261
          Caption = 'Localidad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel10: TcxLabel
          Left = 16
          Top = 300
          Caption = 'Municipio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 16
          Top = 316
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 32
          Width = 273
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 296
          Top = 341
          Caption = 'Mostrar Cliente en Liquidacion?'
          DataBinding.DataField = 'MostrarLiquidacion'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 33
          Transparent = True
          Width = 185
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Par'#225'metros  '
      ImageIndex = 44
      ExplicitHeight = 272
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Caption = ' Par'#225'metros  '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 233
        Width = 530
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 88
          DataBinding.DataField = 'CuentaContableCredito'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.Shadow = False
          TabOrder = 3
          Width = 137
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 168
          Top = 88
          DataBinding.DataField = 'CuentaContableAnticipo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.Shadow = False
          TabOrder = 4
          Width = 137
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 72
          Caption = 'Cuenta Contable Credito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 168
          Top = 72
          Caption = 'Cuenta Contable Anticipos'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 16
          Top = 176
          Caption = 'Solicitar Ticket de Venta al Capturar Boucher'
          DataBinding.DataField = 'TicketBoucher'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Transparent = True
          Width = 249
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 16
          Top = 200
          Caption = 'Permitir Registrar Vales de Cr'#233'dito'
          DataBinding.DataField = 'AutorizaValeCredito'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 7
          Transparent = True
          Width = 233
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 16
          Top = 152
          Caption = 'Aceptar cheque de este cliente'
          DataBinding.DataField = 'AutorizaCheque'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Transparent = True
          Width = 201
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 16
          Top = 128
          Caption = 'Cliente de Cr'#233'dito? '
          DataBinding.DataField = 'Credito'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Transparent = True
          Width = 124
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 48
          DataBinding.DataField = 'LimiteCredito'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.Shadow = False
          TabOrder = 1
          Width = 138
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 32
          Caption = 'L'#237'mite de cr'#233'dito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 168
          Top = 48
          DataBinding.DataField = 'DiasCredito'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          Style.Shadow = False
          TabOrder = 2
          Width = 77
        end
        object cxLabel4: TcxLabel
          Left = 168
          Top = 32
          Caption = 'D'#237'as de cr'#233'dito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
    object datos: TcxTabSheet
      Caption = 'Datos'
      ImageIndex = 39
      ExplicitHeight = 272
    end
  end
  object btnAceptar: TcxButton
    Left = 237
    Top = 426
    Width = 82
    Height = 25
    Caption = 'Aceptar'
    Default = True
    TabOrder = 1
    OnClick = btnAceptarClick
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
  object btnCancelar: TcxButton
    Left = 324
    Top = 426
    Width = 82
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
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
  object cdsCatalogo: TDAMemDataTable
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
    Params = <
      item
        Name = 'ClienteID'
        DataType = datInteger
        Value = '-1'
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Cliente2'
    IndexDefs = <>
    Left = 432
    Top = 128
  end
  object dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    DataTable = cdsCatalogo
    Left = 432
    Top = 168
  end
end
