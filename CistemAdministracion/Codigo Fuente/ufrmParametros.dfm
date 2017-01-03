object frmParametros: TfrmParametros
  Left = 0
  Top = 0
  Align = alCustom
  BorderStyle = bsDialog
  Caption = 'Parametros'
  ClientHeight = 903
  ClientWidth = 1229
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object cxFacturaID: TcxGroupBox
    Tag = 100
    Left = 626
    Top = 444
    Caption = ' Identificador de Factura '
    TabOrder = 0
    Height = 61
    Width = 583
    object cxLabel17: TcxLabel
      Left = 31
      Top = 31
      Caption = 'FacturaID'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object edtFacturaID: TcxTextEdit
      Left = 104
      Top = 30
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
  end
  object cxTurno: TcxGroupBox
    Tag = 100
    Left = 622
    Top = 379
    Caption = ' Turno '
    TabOrder = 1
    Height = 62
    Width = 585
    object cxLabel15: TcxLabel
      Left = 31
      Top = 31
      Caption = 'Turno'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxTxtTurno: TcxTextEdit
      Left = 104
      Top = 30
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
  end
  object cxClientes: TcxGroupBox
    Left = 622
    Top = 280
    Caption = 'Clientes'
    TabOrder = 2
    Height = 97
    Width = 585
    object cxBtnClienteIni: TcxButton
      Tag = 1
      Left = 452
      Top = 27
      Width = 66
      Height = 23
      Caption = 'Buscar'
      TabOrder = 0
      TabStop = False
      OnClick = cxBtnClienteIniClick
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
      LookAndFeel.NativeStyle = False
    end
    object cxTextClienteIni: TcxDBTextEdit
      Left = 182
      Top = 28
      DataBinding.DataField = 'Nombre'
      Enabled = False
      TabOrder = 1
      Width = 264
    end
    object cxClienteIni: TcxCurrencyEdit
      Left = 87
      Top = 28
      EditValue = '0'
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0000'
      TabOrder = 2
      OnExit = txtNoClienteExit
      Width = 89
    end
    object cxLabel13: TcxLabel
      Left = 14
      Top = 29
      Caption = 'Cliente Inicial'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxLabel14: TcxLabel
      Left = 14
      Top = 65
      Caption = 'Cliente Final'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxClienteFin: TcxCurrencyEdit
      Left = 87
      Top = 64
      EditValue = '99999'
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0000'
      TabOrder = 5
      OnExit = txtNoClienteExit
      Width = 89
    end
    object cxTextClienteFin: TcxDBTextEdit
      Left = 182
      Top = 64
      DataBinding.DataField = 'Nombre'
      Enabled = False
      TabOrder = 6
      Width = 264
    end
    object cxBtnClienteFin: TcxButton
      Tag = 1
      Left = 452
      Top = 63
      Width = 66
      Height = 23
      Caption = 'Buscar'
      TabOrder = 7
      TabStop = False
      OnClick = cxBtnClienteFinClick
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
      LookAndFeel.NativeStyle = False
    end
  end
  object cxCliente: TcxGroupBox
    Tag = 100
    Left = 622
    Top = 213
    Caption = ' Cliente '
    TabOrder = 3
    Visible = False
    Height = 68
    Width = 583
    object cxLabel2: TcxLabel
      Left = 31
      Top = 32
      Caption = 'Cliente'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object edtBuscaClienteIni: TcxButton
      Tag = 1
      Left = 469
      Top = 29
      Width = 66
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      TabStop = False
      OnClick = edtBuscaClienteIniClick
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
      LookAndFeel.NativeStyle = False
    end
    object txtNoCliente: TcxCurrencyEdit
      Left = 104
      Top = 31
      EditValue = '0'
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0000'
      TabOrder = 2
      OnExit = txtNoClienteExit
      Width = 89
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 199
      Top = 31
      DataBinding.DataField = 'Nombre'
      Enabled = False
      TabOrder = 3
      Width = 264
    end
  end
  object cxAgrupacion: TcxGroupBox
    Tag = 100
    Left = 622
    Top = 164
    Caption = ' Agrupacion '
    TabOrder = 4
    Height = 53
    Width = 583
    object CmbAgrupacion: TcxLookupComboBox
      Left = 104
      Top = 23
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'AgrupacionID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsAgrupacion
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 201
    end
  end
  object cxRangoPeriodos: TcxGroupBox
    Left = 626
    Top = 95
    Caption = '  Rango de Periodos '
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 5
    Visible = False
    Height = 63
    Width = 579
    object Label11: TLabel
      Left = 8
      Top = 30
      Width = 40
      Height = 13
      Caption = 'Ejercicio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 125
      Top = 30
      Width = 66
      Height = 13
      Caption = 'Periodo Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 358
      Top = 30
      Width = 61
      Height = 13
      Caption = 'Periodo Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtEjercicio: TcxSpinEdit
      Left = 54
      Top = 26
      Properties.MaxValue = 2006.000000000000000000
      Properties.MinValue = 2006.000000000000000000
      TabOrder = 0
      Value = 2006
      Width = 57
    end
    object cbPeriodoIni: TcxImageComboBox
      Left = 197
      Top = 26
      Properties.Items = <
        item
          Description = 'ENERO'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'FEBRERO'
          Value = 2
        end
        item
          Description = 'MARZO'
          Value = 3
        end
        item
          Description = 'ABRIL'
          Value = 4
        end
        item
          Description = 'MAYO'
          Value = 5
        end
        item
          Description = 'JUNIO'
          Value = 6
        end
        item
          Description = 'JULIO'
          Value = 7
        end
        item
          Description = 'AGOSTO'
          Value = 8
        end
        item
          Description = 'SEPTIEMBRE'
          Value = 9
        end
        item
          Description = 'OCTUBRE'
          Value = 10
        end
        item
          Description = 'NOVIEMBRE'
          Value = 11
        end
        item
          Description = 'DICIEMBRE'
          Value = 12
        end>
      TabOrder = 1
      Width = 145
    end
    object cbPeriodoFin: TcxImageComboBox
      Left = 425
      Top = 26
      Properties.Items = <
        item
          Description = 'ENERO'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'FEBRERO'
          Value = 2
        end
        item
          Description = 'MARZO'
          Value = 3
        end
        item
          Description = 'ABRIL'
          Value = 4
        end
        item
          Description = 'MAYO'
          Value = 5
        end
        item
          Description = 'JUNIO'
          Value = 6
        end
        item
          Description = 'JULIO'
          Value = 7
        end
        item
          Description = 'AGOSTO'
          Value = 8
        end
        item
          Description = 'SEPTIEMBRE'
          Value = 9
        end
        item
          Description = 'OCTUBRE'
          Value = 10
        end
        item
          Description = 'NOVIEMBRE'
          Value = 11
        end
        item
          Description = 'DICIEMBRE'
          Value = 12
        end>
      TabOrder = 2
      Width = 145
    end
  end
  object cxFactura: TcxGroupBox
    Tag = 100
    Left = 626
    Top = 24
    Caption = '  Factura  '
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 6
    Visible = False
    Height = 65
    Width = 577
    object Label12: TLabel
      Left = 251
      Top = 28
      Width = 88
      Height = 13
      Caption = 'N'#250'mero de factura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 131
      Top = 28
      Width = 24
      Height = 13
      Caption = 'Serie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edtFactura: TcxCurrencyEdit
      Left = 344
      Top = 24
      EditValue = '1'
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '#'
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -11
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.TextColor = clNavy
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 65
    end
    object edtSerie: TcxImageComboBox
      Left = 160
      Top = 24
      TabStop = False
      Properties.Items = <>
      TabOrder = 1
      Width = 57
    end
  end
  object cxRangoEstacion: TcxGroupBox
    Tag = 100
    Left = 626
    Top = 507
    Caption = 'Rango Estacion'
    TabOrder = 7
    Height = 86
    Width = 583
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 70
      Height = 13
      Caption = 'Estacion Inicial'
      Transparent = True
    end
    object Label2: TLabel
      Left = 304
      Top = 32
      Width = 65
      Height = 13
      Caption = 'Estacion Final'
      Transparent = True
    end
    object dbcEstacionIni: TcxLookupComboBox
      Left = 32
      Top = 48
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'EmpresaID'
      Properties.ListColumns = <
        item
          FieldName = 'EmpresaID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEstaciones
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 233
    end
    object dbcEstacionFin: TcxLookupComboBox
      Left = 304
      Top = 48
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'EmpresaID'
      Properties.ListColumns = <
        item
          FieldName = 'EmpresaID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEstaciones
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 1
      Width = 225
    end
  end
  object cxRangoEmpleados: TcxGroupBox
    Tag = 100
    Left = 636
    Top = 599
    Caption = 'Rango Empleados'
    TabOrder = 8
    Height = 86
    Width = 583
    object Label3: TLabel
      Left = 32
      Top = 32
      Width = 76
      Height = 13
      Caption = 'Empleado Inicial'
      Transparent = True
    end
    object Label4: TLabel
      Left = 304
      Top = 32
      Width = 71
      Height = 13
      Caption = 'Empleado Final'
      Transparent = True
    end
    object dbcEmpleadoIni: TcxLookupComboBox
      Left = 32
      Top = 48
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'DespachadorID'
      Properties.ListColumns = <
        item
          FieldName = 'DespachadorID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEmpleados
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 0
      OnEnter = dbcEmpleadoIniEnter
      Width = 233
    end
    object dbcEmpledoFin: TcxLookupComboBox
      Left = 304
      Top = 48
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'DespachadorID'
      Properties.ListColumns = <
        item
          FieldName = 'DespachadorID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEmpleados
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 1
      OnEnter = dbcEmpledoFinEnter
      Width = 225
    end
  end
  object cxSecuenciaEstacion: TcxGroupBox
    Tag = 100
    Left = 24
    Top = 797
    Caption = 'Secuencia Estacion'
    TabOrder = 9
    Height = 68
    Width = 583
    object cxLabel12: TcxLabel
      Left = 48
      Top = 32
      Caption = 'Secuencia'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object SecuenciaEstacion: TcxLookupComboBox
      Left = 117
      Top = 31
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'Secuencia'
      Properties.ListColumns = <
        item
          FieldName = 'Secuencia'
        end>
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 1
      OnEnter = SecuenciaEstacionEnter
      Width = 89
    end
  end
  object cxMontoFacturado: TcxGroupBox
    Tag = 100
    Left = 24
    Top = 733
    Caption = ' Monto Facturado'
    TabOrder = 10
    Height = 60
    Width = 583
    object txtMontoFacturado: TcxTextEdit
      Left = 117
      Top = 27
      Properties.CharCase = ecUpperCase
      TabOrder = 0
      Width = 89
    end
    object cxLabel8: TcxLabel
      Left = 15
      Top = 28
      Caption = 'Monto Facturado'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
  end
  object cxFacturasCompras: TcxGroupBox
    Tag = 100
    Left = 24
    Top = 669
    Caption = 'Compras '
    TabOrder = 11
    Height = 48
    Width = 583
    object cxCompras: TcxLookupComboBox
      Left = 117
      Top = 19
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'TransaccionId'
      Properties.ListColumns = <
        item
          FieldName = 'Referencia'
        end>
      TabOrder = 0
      Width = 90
    end
  end
  object cxSecuenciaCorteIni: TcxGroupBox
    Tag = 100
    Left = 24
    Top = 613
    Caption = 'Secuencia del Corte'
    TabOrder = 12
    Height = 60
    Width = 583
    object cxLabel11: TcxLabel
      Left = 14
      Top = 28
      Caption = 'Secuencia de Corte'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object SecuenciaCorte: TcxTextEdit
      Left = 118
      Top = 27
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 24
    Top = 566
    Caption = ' Almacen '
    TabOrder = 13
    Height = 59
    Width = 583
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 104
      Top = 25
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'AlmacenID'
      Properties.ListColumns = <
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsAlmacen
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 0
      OnEnter = cxLookupComboBox1Enter
      Width = 201
    end
  end
  object cxSecuenciaLiquidacion: TcxGroupBox
    Left = 24
    Top = 497
    Caption = ' Secuencia '
    TabOrder = 14
    Height = 63
    Width = 583
    object cxLabel5: TcxLabel
      Left = 14
      Top = 32
      Caption = 'Secuencia Inicial:'
      Style.BorderStyle = ebsNone
      Style.TransparentBorder = True
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 245
      Top = 32
      Caption = 'Secuencia Final:'
      Style.BorderStyle = ebsNone
      Style.TransparentBorder = True
      Transparent = True
    end
    object TxtSecuenciaIniLiquidacion: TcxTextEdit
      Left = 104
      Top = 32
      TabOrder = 2
      Width = 121
    end
    object TxtSecuenciaFinLiquidacion: TcxTextEdit
      Left = 334
      Top = 32
      TabOrder = 3
      Width = 121
    end
  end
  object cxStatus: TcxGroupBox
    Left = 24
    Top = 424
    Caption = ' Status '
    TabOrder = 15
    Height = 66
    Width = 583
    object cxLabel3: TcxLabel
      Left = 31
      Top = 33
      Caption = 'Status'
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object txtStatus: TcxTextEdit
      Left = 104
      Top = 32
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
  end
  object cxSecuencia: TcxGroupBox
    Tag = 100
    Left = 27
    Top = 375
    Caption = 'Secuencia del Corte'
    TabOrder = 16
    Height = 63
    Width = 583
    object cxLabel9: TcxLabel
      Left = 14
      Top = 32
      Caption = 'Secuencia Inicial:'
      Style.BorderStyle = ebsNone
      Style.TransparentBorder = True
      Transparent = True
    end
    object cxLabel10: TcxLabel
      Left = 245
      Top = 32
      Caption = 'Secuencia Final:'
      Style.BorderStyle = ebsNone
      Style.TransparentBorder = True
      Transparent = True
    end
    object CmbSecuenciaIni: TcxLookupComboBox
      Left = 104
      Top = 31
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'Secuencia'
      Properties.ListColumns = <
        item
          FieldName = 'Secuencia'
        end>
      Properties.ListSource = dsSecuenciaLiquidacionInicial
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 2
      OnEnter = CmbSecuenciaIniEnter
      OnKeyDown = CmbSecuenciaIniKeyDown
      Width = 89
    end
    object CmbSecuenciaFin: TcxLookupComboBox
      Left = 328
      Top = 31
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'Secuencia'
      Properties.ListColumns = <
        item
          FieldName = 'Secuencia'
        end>
      Properties.ListSource = dsSEcuenciaLiquidacionFinal
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 3
      OnEnter = CmbSecuenciaFinEnter
      Width = 89
    end
  end
  object cxSerie: TcxGroupBox
    Tag = 100
    Left = 26
    Top = 312
    Caption = ' Serie de Factura '
    TabOrder = 17
    Height = 57
    Width = 583
    object cxLabel4: TcxLabel
      Left = 31
      Top = 31
      Caption = 'Serie'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object txtSerie: TcxTextEdit
      Left = 104
      Top = 30
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
  end
  object cxFolioFactura: TcxGroupBox
    Left = 24
    Top = 248
    Caption = ' Factura'
    TabOrder = 18
    Height = 58
    Width = 583
    object cxLabel7: TcxLabel
      Left = 188
      Top = 31
      Caption = 'Folio'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object txtFolioFactura: TcxTextEdit
      Left = 222
      Top = 30
      Properties.CharCase = ecUpperCase
      TabOrder = 1
      Width = 89
    end
    object cxLabel16: TcxLabel
      Left = 71
      Top = 31
      Caption = 'Serie'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object TxtSerieFactura: TcxTextEdit
      Left = 105
      Top = 30
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 58
    end
  end
  object btnAceptar: TcxButton
    Left = 216
    Top = 464
    Width = 82
    Height = 25
    Caption = 'Aceptar'
    Default = True
    TabOrder = 19
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
    Left = 304
    Top = 464
    Width = 82
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 20
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
  object cxPeriodo: TcxGroupBox
    Tag = 100
    Left = 25
    Top = 87
    Caption = ' Periodo '
    TabOrder = 22
    Height = 66
    Width = 583
    object lblFechaInicial: TcxLabel
      Left = 31
      Top = 34
      Caption = 'Fecha Inicial:'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 292
      Top = 34
      Caption = 'Fecha Final:'
      Style.BorderStyle = ebsNone
      Transparent = True
    end
    object edtFechaInicial: TcxDateEdit
      Left = 104
      Top = 33
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
      TabOrder = 2
      Width = 89
    end
    object edtFechaFinal: TcxDateEdit
      Left = 360
      Top = 33
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
      Width = 103
    end
  end
  object cxEstacion: TcxGroupBox
    Tag = 100
    Left = 24
    Top = 24
    Caption = 'Empresa'
    TabOrder = 21
    Height = 57
    Width = 583
    object lblEstacion: TcxLabel
      Left = 31
      Top = 25
      Caption = 'Empresa:'
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      Transparent = True
    end
    object cxEstaciones: TcxLookupComboBox
      Left = 104
      Top = 24
      Properties.CharCase = ecUpperCase
      Properties.KeyFieldNames = 'EmpresaID'
      Properties.ListColumns = <
        item
          FieldName = 'EmpresaID'
        end
        item
          FieldName = 'Nombre'
        end>
      Properties.ListSource = dsEmpresa
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      TabOrder = 1
      Width = 385
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1229
    Height = 24
    BarManager = frmPrincipal.dxBarManager1
    ColorSchemeName = 'Blue'
    ShowTabHeaders = False
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 23
    TabStop = False
  end
  object cdsEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EmpresaID'
        DataType = datInteger
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
    Params = <
      item
        Name = 'EstacionID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerDatosEstacion'
    IndexDefs = <>
    Left = 544
    Top = 48
  end
  object dsCliente: TDADataSource
    DataSet = cdsCliente.Dataset
    DataTable = cdsCliente
    Left = 584
    Top = 200
  end
  object cdsCliente: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
        Required = True
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'AlmacenID'
        DataType = datInteger
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Agrupacion'
    IndexDefs = <>
    Left = 552
    Top = 200
  end
  object dsAgrupacion: TDADataSource
    DataSet = cdsAgrupacion.Dataset
    DataTable = cdsAgrupacion
    Left = 646
    Top = 268
  end
  object cdsAgrupacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AgrupacionID'
        DataType = datInteger
        Required = True
        InPrimaryKey = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    MasterParamsMappings.Strings = (
      'EstacionID=EstacionID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'LIQAgrupacion2'
    IndexDefs = <>
    Left = 616
    Top = 269
  end
  object dsSecuenciaFin: TDADataSource
    DataSet = cdsSecuenciaFin.Dataset
    DataTable = cdsSecuenciaFin
    Left = 632
    Top = 381
  end
  object cdsSecuenciaFin: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Secuencia'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = '2007'
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = '5'
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = '2'
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = '7073'
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = '3'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerCortePorFecha'
    IndexDefs = <>
    Left = 632
    Top = 353
  end
  object cdsSecuenciaIni: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Secuencia'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = '2007'
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = '5'
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = '2'
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = '7073'
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = '3'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerCortePorFecha'
    IndexDefs = <>
    Left = 600
    Top = 354
  end
  object dsSecuenciaini: TDADataSource
    DataSet = cdsSecuenciaIni.Dataset
    DataTable = cdsSecuenciaIni
    Left = 601
    Top = 382
  end
  object cdsSecuenciaLiquidacionInicial: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerSecuenciaLiquidacion'
    IndexDefs = <>
    Left = 596
    Top = 424
  end
  object cdsSecuenciaLiquidacionFinal: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Secuencia'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'AgrupacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerSecuenciaLiquidacion'
    IndexDefs = <>
    Left = 624
    Top = 423
  end
  object dsSEcuenciaLiquidacionFinal: TDADataSource
    DataSet = cdsSecuenciaLiquidacionFinal.Dataset
    DataTable = cdsSecuenciaLiquidacionFinal
    Left = 624
    Top = 450
  end
  object dsSecuenciaLiquidacionInicial: TDADataSource
    DataSet = cdsSecuenciaLiquidacionInicial.Dataset
    DataTable = cdsSecuenciaLiquidacionInicial
    Left = 597
    Top = 450
  end
  object dsAlmacen: TDADataSource
    DataSet = cdsAlmacen.Dataset
    DataTable = cdsAlmacen
    Left = 640
    Top = 312
  end
  object cdsAlmacen: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'AlmacenID'
        DataType = datInteger
        Required = True
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 30
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    MasterParamsMappings.Strings = (
      'EstacionID=EstacionID')
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    MasterFields = 'EstacionID'
    DetailFields = 'EstacionID'
    LogicalName = 'dbo AlmacenPorEstacion'
    IndexDefs = <>
    Left = 608
    Top = 312
  end
  object dsObtenerReferenciaTransaccion: TDADataSource
    DataSet = cdsObtenerReferenciaTransaccion.Dataset
    DataTable = cdsObtenerReferenciaTransaccion
    Left = 628
    Top = 520
  end
  object cdsObtenerReferenciaTransaccion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Referencia'
        DataType = datString
        Size = 20
      end
      item
        Name = 'TransaccionId'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'FechaIni'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'FechaFin'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerReferenciaTransaccion'
    IndexDefs = <>
    Left = 600
    Top = 520
  end
  object dsSecuenciadelCorte: TDADataSource
    DataSet = cdsSecuenciadelCorte.Dataset
    DataTable = cdsSecuenciadelCorte
    Left = 632
    Top = 616
  end
  object cdsSecuenciadelCorte: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'secuencia'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerSecuenciadelCorte'
    IndexDefs = <>
    Left = 600
    Top = 616
  end
  object dsSecuenciaEstacion: TDADataSource
    DataSet = cdsSecuenciaEstacion.Dataset
    DataTable = cdsSecuenciaEstacion
    Left = 632
    Top = 664
  end
  object cdsSecuenciaEstacion: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'Secuencia'
        DataType = datInteger
      end>
    Params = <
      item
        Name = 'EstacionId'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Ejercicio'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Periodo'
        Value = ''
        ParamType = daptInput
      end
      item
        Name = 'Dia'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerSecuenciaEstacion'
    IndexDefs = <>
    Left = 600
    Top = 664
  end
  object dsFolioFactura: TDADataSource
    DataSet = cdsFolioFactura.Dataset
    DataTable = cdsFolioFactura
    Left = 632
    Top = 576
  end
  object cdsFolioFactura: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'FacturaID'
        DataType = datInteger
      end
      item
        Name = 'Folio'
        DataType = datInteger
      end
      item
        Name = 'Serie'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Ejercicio'
        DataType = datInteger
      end
      item
        Name = 'Periodo'
        DataType = datInteger
      end
      item
        Name = 'Dia'
        DataType = datInteger
      end
      item
        Name = 'Fecha'
        DataType = datDateTime
      end
      item
        Name = 'Subtotal'
        DataType = datFloat
      end
      item
        Name = 'Impuesto'
        DataType = datFloat
      end
      item
        Name = 'Total'
        DataType = datFloat
      end
      item
        Name = 'ImpuestoPorcentaje'
        DataType = datFloat
      end
      item
        Name = 'Turno'
        DataType = datInteger
      end
      item
        Name = 'Cancelada'
        DataType = datBoolean
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
      end
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'LiquidacionID'
        DataType = datInteger
      end
      item
        Name = 'FormaPagoID'
        DataType = datInteger
      end
      item
        Name = 'TipoFacturaID'
        DataType = datInteger
      end
      item
        Name = 'Tickets'
        DataType = datWideString
        Size = 250
      end>
    Params = <
      item
        Name = 'Folio'
        Value = '78'
        ParamType = daptInput
      end
      item
        Name = 'Serie'
        Value = 'A'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'ObtenerFacturaPorFolioSerie'
    IndexDefs = <>
    Left = 600
    Top = 576
  end
  object cdsEstaciones: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'EmpresaID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
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
      end
      item
        Name = 'ClavePemex'
        DataType = datString
        Size = 10
      end
      item
        Name = 'NoBombas'
        DataType = datInteger
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
      end
      item
        Name = 'ClienteSagarpa'
        DataType = datInteger
      end
      item
        Name = 'ClienteSagarpaPemex'
        DataType = datInteger
      end
      item
        Name = 'ISR'
        DataType = datFloat
      end
      item
        Name = 'IvaRetenido'
        DataType = datBoolean
      end>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo Empresas'
    IndexDefs = <>
    Left = 544
    Top = 88
  end
  object dsEstaciones: TDADataSource
    DataSet = cdsEstaciones.Dataset
    DataTable = cdsEstaciones
    Left = 576
    Top = 88
  end
  object cdsEmpleados: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'DespachadorID'
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
        Name = 'Codigo'
        DataType = datString
        Size = 10
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 80
        Required = True
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
        Name = 'Status'
        DataType = datBoolean
      end
      item
        Name = 'FechaAlta'
        DataType = datDateTime
        Required = True
      end
      item
        Name = 'CuentaContable'
        DataType = datString
        Size = 20
      end
      item
        Name = 'EstacionID'
        DataType = datInteger
        Required = True
      end>
    Params = <
      item
        Name = 'EstacionID'
        Value = ''
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'dbo DespachadorPorEstacion'
    IndexDefs = <>
    Left = 600
    Top = 712
  end
  object dsEmpleados: TDADataSource
    DataSet = cdsEmpleados.Dataset
    DataTable = cdsEmpleados
    Left = 632
    Top = 712
  end
  object cdsClientes: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <
      item
        Name = 'ClienteID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 80
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 15
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
        Name = 'CodigoPostal'
        DataType = datString
        Size = 5
      end
      item
        Name = 'Telefono'
        DataType = datString
        Size = 20
      end>
    Params = <
      item
        Name = 'ClienteID'
        Value = '1'
        ParamType = daptInput
      end>
    StreamingOptions = [soDisableEventsWhileStreaming]
    RemoteDataAdapter = DM.RemoteDataAdapter
    LogicalName = 'DatosCliente'
    IndexDefs = <>
    Left = 488
    Top = 184
  end
  object dsClientes: TDADataSource
    DataSet = cdsClientes.Dataset
    DataTable = cdsClientes
    Left = 488
    Top = 216
  end
  object dsEmpresa: TDADataSource
    DataSet = cdsEstaciones.Dataset
    DataTable = cdsEstaciones
    Left = 576
    Top = 48
  end
end
