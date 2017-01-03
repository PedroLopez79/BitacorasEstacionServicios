inherited frmCatalogoClientes: TfrmCatalogoClientes
  Caption = 'frmCatalogoClientes'
  ClientHeight = 490
  ClientWidth = 663
  ExplicitWidth = 663
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 663
    Height = 490
    OnPageChanging = pgcCatalogoPageChanging
    ExplicitWidth = 663
    ExplicitHeight = 490
    ClientRectBottom = 460
    ClientRectRight = 657
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 654
      ExplicitHeight = 457
      inherited dbgCatalogo: TcxGrid
        Width = 654
        Height = 457
        ExplicitWidth = 654
        ExplicitHeight = 457
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1ClienteID: TcxGridDBColumn
            DataBinding.FieldName = 'ClienteID'
            Width = 51
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
            Width = 113
          end
          object dbgCatalogoDBTableView1Grupo: TcxGridDBColumn
            DataBinding.FieldName = 'Grupo'
          end
          object dbgCatalogoDBTableView1Calle: TcxGridDBColumn
            DataBinding.FieldName = 'Calle'
          end
          object dbgCatalogoDBTableView1Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Colonia'
          end
          object dbgCatalogoDBTableView1Ciudad: TcxGridDBColumn
            DataBinding.FieldName = 'Ciudad'
          end
          object dbgCatalogoDBTableView1Telefono: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono'
          end
          object dbgCatalogoDBTableView1CodigoPostal: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoPostal'
            Width = 67
          end
          object dbgCatalogoDBTableView1RFC: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
          end
          object dbgCatalogoDBTableView1Status: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ImageIndex = 15
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 654
      ExplicitHeight = 457
      object GrpBoxDatos: TcxGroupBox
        Left = 13
        Top = 11
        Hint = ''
        Caption = ' Datos '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 443
        Width = 615
        object LblClientes: TcxLabel
          Left = 16
          Top = 24
          Hint = ''
          Caption = 'Cliente'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCliente: TcxLabel
          Left = 16
          Top = 67
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCalle: TcxLabel
          Left = 16
          Top = 113
          Hint = ''
          Caption = 'Calle'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCiudad: TcxLabel
          Left = 16
          Top = 156
          Hint = ''
          Caption = 'Ciudad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblColonia: TcxLabel
          Left = 296
          Top = 113
          Hint = ''
          Caption = 'Colonia'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblTelefono: TcxLabel
          Left = 384
          Top = 156
          Hint = ''
          Caption = 'Telefono'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblCP: TcxLabel
          Left = 296
          Top = 156
          Hint = ''
          Caption = 'C.P.'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object LblRFC: TcxLabel
          Left = 16
          Top = 199
          Hint = ''
          Caption = 'R.F.C.'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCliente: TcxDBTextEdit
          Left = 16
          Top = 40
          Hint = ''
          DataBinding.DataField = 'ClienteID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 0
          Width = 89
        end
        object TxtNombre: TcxDBTextEdit
          Left = 16
          Top = 86
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 452
        end
        object TxtGrupo: TcxDBTextEdit
          Left = 16
          Top = 260
          Hint = ''
          DataBinding.DataField = 'Grupo'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 9
          Width = 273
        end
        object TxtCalle: TcxDBTextEdit
          Left = 16
          Top = 129
          Hint = ''
          DataBinding.DataField = 'Calle'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 2
          Width = 273
        end
        object TxtColonia: TcxDBTextEdit
          Left = 296
          Top = 129
          Hint = ''
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 268
        end
        object TxtCiudad: TcxDBTextEdit
          Left = 16
          Top = 172
          Hint = ''
          DataBinding.DataField = 'Ciudad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 4
          Width = 273
        end
        object TxtTelefono: TcxDBTextEdit
          Left = 384
          Top = 172
          Hint = ''
          DataBinding.DataField = 'Telefono'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 6
          Width = 177
        end
        object TxtRFC: TcxDBTextEdit
          Left = 16
          Top = 215
          Hint = ''
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 7
          OnExit = TxtRFCExit
          Width = 136
        end
        object LblGrupo: TcxLabel
          Left = 16
          Top = 242
          Hint = ''
          Caption = 'Grupo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCP: TcxDBTextEdit
          Left = 296
          Top = 172
          Hint = ''
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 5
          Width = 77
        end
        object LblCurp: TcxLabel
          Left = 296
          Top = 199
          Hint = ''
          Caption = 'CURP'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object TxtCurp: TcxDBTextEdit
          Left = 296
          Top = 215
          Hint = ''
          DataBinding.DataField = 'Curp'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 8
          Width = 268
        end
        object CheckActivo: TcxDBCheckBox
          Left = 16
          Top = 416
          Hint = ''
          Caption = 'Cliente Activo?'
          DataBinding.DataField = 'Status'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 10
          Transparent = True
          Width = 153
        end
        object cxLabel8: TcxLabel
          Left = 120
          Top = 24
          Hint = ''
          Caption = 'Fecha Alta'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 120
          Top = 40
          Hint = ''
          DataBinding.DataField = 'FechaAltaCliente'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.InputKind = ikRegExpr
          Properties.ReadOnly = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 22
          Width = 145
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 296
          Top = 416
          Hint = ''
          Caption = 'Mostrar Liquidacion'
          DataBinding.DataField = 'MostrarLiquidacion'
          DataBinding.DataSource = dsCatalogo
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 23
          Transparent = True
          Width = 153
        end
        object cxLabel11: TcxLabel
          Left = 296
          Top = 242
          Hint = ''
          Caption = 'Estado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 296
          Top = 258
          Hint = ''
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 25
          Width = 273
        end
        object cxLabel9: TcxLabel
          Left = 16
          Top = 284
          Hint = ''
          Caption = 'No Exterior'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 16
          Top = 300
          Hint = ''
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 27
          Width = 273
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 297
          Top = 300
          Hint = ''
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 28
          Width = 112
        end
        object cxLabel12: TcxLabel
          Left = 297
          Top = 284
          Hint = ''
          Caption = 'Pais'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel13: TcxLabel
          Left = 296
          Top = 324
          Hint = ''
          Caption = 'E-Mail'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 296
          Top = 340
          Hint = ''
          DataBinding.DataField = 'email'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 31
          Width = 273
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 16
          Top = 340
          Hint = ''
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 32
          Width = 273
        end
        object cxLabel10: TcxLabel
          Left = 16
          Top = 323
          Hint = ''
          Caption = 'Localidad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel14: TcxLabel
          Left = 16
          Top = 370
          Hint = ''
          Caption = 'Municipio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 16
          Top = 387
          Hint = ''
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 35
          Width = 273
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Par'#225'metros  '
      ImageIndex = 44
      object cxGroupBox1: TcxGroupBox
        Left = 16
        Top = 16
        Hint = ''
        Caption = ' Par'#225'metros  '
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 0
        Height = 233
        Width = 530
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 88
          Hint = ''
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
          Hint = ''
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
          Hint = ''
          Caption = 'Cuenta Contable Credito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 168
          Top = 72
          Hint = ''
          Caption = 'Cuenta Contable Anticipos'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 16
          Top = 176
          Hint = ''
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
          Hint = ''
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
          Hint = ''
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
          Hint = ''
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
          Hint = ''
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
          Hint = ''
          Caption = 'L'#237'mite de cr'#233'dito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 168
          Top = 48
          Hint = ''
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
          Hint = ''
          Caption = 'D'#237'as de cr'#233'dito'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Imprimir Tarjeta'
      ImageIndex = 83
      object cxGroupBox9: TcxGroupBox
        Left = 16
        Top = 16
        Hint = ''
        Caption = ' Generer Tarjeta '
        TabOrder = 0
        Height = 129
        Width = 305
        object lblImpresora: TcxLabel
          Left = 18
          Top = 24
          Hint = ''
          Caption = 'Impresora:'
          ParentFont = False
          Transparent = True
        end
        object BtnProcesar: TcxButton
          Left = 112
          Top = 88
          Width = 75
          Height = 25
          Caption = '&Imprimir'
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FF6C6A6A6C6A6AFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C6A6AAAA7A7A19F9F6C6A6A6C
            6A6A6C6A6AE5E3E36C6A6A6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FFFF00FF
            6C6A6ADAD9D9A19F9FA19F9FA19F9F3736363535356C6D6DBFBFBFE1E2E2B7B6
            B66C6A6A6C6A6A6C6A6AFF00FF6C6A6AD4D3D3CACACA8E8C8C8E8C8C8E8C8C3C
            3B3B0A090A0707070B0B0B0707077A7A7ABBBBBB6C6A6AFF00FF6C6A6ACACACA
            CACACA8E8C8CD7D4D4CECBCBBFBCBCB1AFAFA3A0A08886865E5B5C0707070909
            090808086C6A6A7673736C6A6ACACACA8E8C8CEFEEEEFFFEFEFBFAFAE3E0E1DE
            DEDEDEDDDDCFCECEBDBCBCADABAB8B89895856567A78787573736C6A6A8E8C8C
            FFFFFFFEFCFCFAFAFAD5D4D5989193A09899B2ABACC4C0C1D7D7D7D8D8D8C7C6
            C6B7B6B6918F8F6C6969FF00FF6C6A6A6C6A6AEDEBEBB1A6A77A6F728A838896
            92959690919D97989A93959E9899BBBABAD1D1D1C2C2C26C6A6AFF00FFFF00FF
            FF00FF6C6A6ABB897FA7876D8B6F647D67606F62657973798F8B8EA9A3A4CBCA
            CAC1C1C16C6A6AFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFE3B4FFD39FE9
            B281C99973BA916CBD8281807D7E6C6A6A6C6A6AFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFBD8281FFE0B8FFD3A7FFD09DFFCE90FFC688BD8281FF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08683FFE7CFFFE0C0FFD9B2FF
            D3A5FFD099BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFBD8281FEEBD8FFE6CCFFDEBDFFD8B1FED3A4BD8281FF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281FFFFF2FFFFF2FFEBD8FFE5CAFF
            E1BDF3C7A7BD8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            BD8281BD8281BD8281FBEFE2FBE3CFFBDDC2BD8281FF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD8281BD8281BD
            8281FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 0
          OnClick = BtnProcesarClick
        end
        object cbImpresora: TcxImageComboBox
          Left = 18
          Top = 43
          Hint = ''
          Properties.Items = <
            item
              Description = 'Eltron'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Eltron P310'
              Value = 1
            end
            item
              Description = 'DataCard 150i'
              Value = 2
            end
            item
              Description = 'DataCard SmartDriver'
              Value = 3
            end>
          TabOrder = 1
          Width = 268
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 16
        Top = 160
        Hint = ''
        Caption = ' Asignar Tarjeta'
        TabOrder = 1
        Height = 145
        Width = 305
        object cxLabel5: TcxLabel
          Left = 16
          Top = 24
          Hint = ''
          Caption = 'N'#186' Cliente'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 16
          Top = 40
          Hint = ''
          DataBinding.DataField = 'ClienteID'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.Alignment.Horz = taRightJustify
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 1
          Width = 89
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 64
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 16
          Top = 80
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Enabled = False
          Properties.CharCase = ecUpperCase
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 3
          Width = 281
        end
        object btnAsignar: TcxButton
          Left = 112
          Top = 112
          Width = 75
          Height = 25
          Caption = '&Asignar'
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00974B
            0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B
            0F00974B0F00974B0F00FF00FF00FF00FF00FF00FF00FF00FF00974B0F00ED90
            2300ED902300ED902300ED902300ED902300ED902300ED902300ED902300ED90
            2300ED902300ED902300974B0F00FF00FF00FF00FF00FF00FF00974B0F00F4A9
            5000E7973F00E3933800E18E3200DE8B2E00ED9023006B4E6A000013FF000B4B
            E200168BFF003782C100974B0F00FF00FF00FF00FF00FF00FF00974B0F00EE9F
            4700E2913A00E08E3400DD892E00DA872A00E78A210075505B000013EE001045
            CB001781EF00417EAF00984C0F00FF00FF00FF00FF00FF00FF00974B0F00EE9F
            4700E2913A00E08E3400DD892E00DA872A00E78A2100E28A2800B1724100C581
            4100B48B5300DE9E5800994D1000FF00FF00FF00FF00FF00FF00974B0F00CE7F
            2F00B5671E00B6671D00B5661C00B4651A00B2641900B5651A00D3802E00D888
            3800EE9A4500F3A963009E4B1100FF00FF00FF00FF00FF00FF00974B0F00DE91
            3800CC7D2A00CE7A2700CC782300CB772200CB772300CE7A2700D3802E00D888
            3800F4A65A00FFB77400834C10002A6919002A691900FF00FF00FF00FF00974B
            0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B0F00974B
            0F00974B0F00974B0F00478A3100485A130034F87A002A691900FF00FF00FF00
            FF00FF00FF00485A13002FB74F002DB14A002AAC450028A9430026A53F0023A3
            3C00229F39001F97310006821D0029DD660034F87A002A691900FF00FF00FF00
            FF00FF00FF002A6919002BD55F0026CF5B0023CA57001FC552001EC450001CC1
            4F001CC04E001FC55300066B0F00086F120020B746002A691900FF00FF00FF00
            FF00FF00FF0030691A002CB84C0026CF5B0023CA57001FC552001EC450001CC1
            4F001CC04E001FD05A0026D45D000D862100179D31002A691900FF00FF00FF00
            FF00FF00FF0030691A002BB84C002B882D002A8B2E00298A2D0028892D002888
            2C0028872C0026C555002CCE5B0035DC660041FE81002A691900FF00FF00FF00
            FF00FF00FF003067190028D15D0024C4520022C0500021BD4E001FBB4C001FBC
            4C0021C04F0026C555002CCE5B0035DC660047FF8E002A691900FF00FF00FF00
            FF00FF00FF00FF00FF002A6919002A6919002A6919002A6919002A6919002A69
            19002A6919002A6919002A6919002A6919002A691900FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 4
          OnClick = btnAsignarClick
        end
        object cxLabel7: TcxLabel
          Left = 120
          Top = 24
          Hint = ''
          Caption = 'N'#186' Cliente Nuevo'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object edtCliente: TcxCurrencyEdit
          Left = 120
          Top = 40
          Hint = ''
          EditValue = '0'
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.DisplayFormat = True
          Properties.DecimalPlaces = 0
          TabOrder = 6
          Width = 89
        end
      end
    end
    object datos: TcxTabSheet
      Caption = 'Datos'
      ImageIndex = 39
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
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
        DataType = datInteger
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
    LogicalName = 'dbo Cliente'
    RemoteDataAdapter = DM.RemoteDataAdapter
    BeforePost = cdsCatalogoBeforePost
    OnNewRecord = cdsCatalogoNewRecord
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Top = 344
  end
  inherited tblCatalogo: TdxMemData
    Left = 528
  end
  object cdsRFC: TDACDSDataTable
    Fields = <
      item
        Name = 'Rfc'
        DataType = datString
        Size = 15
      end>
    LogicalName = 'ExisteRFC'
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
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 464
    Top = 312
  end
end
