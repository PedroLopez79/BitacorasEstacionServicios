inherited frmDatosSAT: TfrmDatosSAT
  Caption = 'Datos SAT'
  ClientHeight = 470
  ClientWidth = 782
  OnShow = FormShow
  ExplicitWidth = 782
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    Width = 782
    Height = 470
    ExplicitWidth = 782
    ExplicitHeight = 470
    ClientRectBottom = 440
    ClientRectRight = 776
    inherited cxTabSheet1: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 773
      ExplicitHeight = 437
      inherited dbgCatalogo: TcxGrid
        Width = 773
        Height = 437
        ExplicitWidth = 773
        ExplicitHeight = 437
        inherited dbgCatalogoDBTableView1: TcxGridDBTableView
          object dbgCatalogoDBTableView1RecID: TcxGridDBColumn
            DataBinding.FieldName = 'RecID'
            Visible = False
          end
          object dbgCatalogoDBTableView1DatosSatEmpresasID: TcxGridDBColumn
            Caption = 'SAT Datos ID'
            DataBinding.FieldName = 'DatosSatEmpresasID'
            Width = 82
          end
          object dbgCatalogoDBTableView1Nombre: TcxGridDBColumn
            DataBinding.FieldName = 'Nombre'
          end
          object dbgCatalogoDBTableView1Domicilio: TcxGridDBColumn
            DataBinding.FieldName = 'Domicilio'
          end
          object dbgCatalogoDBTableView1RFC: TcxGridDBColumn
            DataBinding.FieldName = 'RFC'
          end
          object dbgCatalogoDBTableView1IVA: TcxGridDBColumn
            DataBinding.FieldName = 'IVA'
          end
          object dbgCatalogoDBTableView1NoExterior: TcxGridDBColumn
            DataBinding.FieldName = 'NoExterior'
          end
          object dbgCatalogoDBTableView1Localidad: TcxGridDBColumn
            DataBinding.FieldName = 'Localidad'
          end
          object dbgCatalogoDBTableView1Municipio: TcxGridDBColumn
            DataBinding.FieldName = 'Municipio'
          end
          object dbgCatalogoDBTableView1Estado: TcxGridDBColumn
            DataBinding.FieldName = 'Estado'
          end
          object dbgCatalogoDBTableView1Pais: TcxGridDBColumn
            DataBinding.FieldName = 'Pais'
          end
          object dbgCatalogoDBTableView1noAprobacion: TcxGridDBColumn
            DataBinding.FieldName = 'noAprobacion'
          end
          object dbgCatalogoDBTableView1Colonia: TcxGridDBColumn
            DataBinding.FieldName = 'Colonia'
          end
          object dbgCatalogoDBTableView1CodigoPostal: TcxGridDBColumn
            DataBinding.FieldName = 'CodigoPostal'
          end
          object dbgCatalogoDBTableView1NoCertificado: TcxGridDBColumn
            DataBinding.FieldName = 'NoCertificado'
          end
          object dbgCatalogoDBTableView1ArchivoClavePrivada: TcxGridDBColumn
            DataBinding.FieldName = 'ArchivoClavePrivada'
          end
          object dbgCatalogoDBTableView1ArchivoCertificado: TcxGridDBColumn
            DataBinding.FieldName = 'ArchivoCertificado'
          end
          object dbgCatalogoDBTableView1ClavePriv: TcxGridDBColumn
            DataBinding.FieldName = 'ClavePriv'
          end
          object dbgCatalogoDBTableView1Certificado: TcxGridDBColumn
            DataBinding.FieldName = 'Certificado'
          end
          object dbgCatalogoDBTableView1PasswordFCTElect: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordFCTElect'
          end
          object dbgCatalogoDBTableView1EmpresaID: TcxGridDBColumn
            DataBinding.FieldName = 'EmpresaID'
          end
          object dbgCatalogoDBTableView1Sucursal: TcxGridDBColumn
            DataBinding.FieldName = 'Sucursal'
          end
          object dbgCatalogoDBTableView1SucursalDE: TcxGridDBColumn
            DataBinding.FieldName = 'SucursalDE'
          end
          object dbgCatalogoDBTableView1Telefono1: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono1'
          end
          object dbgCatalogoDBTableView1Telefono2: TcxGridDBColumn
            DataBinding.FieldName = 'Telefono2'
          end
          object dbgCatalogoDBTableView1AnoAprobacion: TcxGridDBColumn
            DataBinding.FieldName = 'AnoAprobacion'
          end
          object dbgCatalogoDBTableView1FolioInicial: TcxGridDBColumn
            DataBinding.FieldName = 'FolioInicial'
          end
          object dbgCatalogoDBTableView1FolioFinal: TcxGridDBColumn
            DataBinding.FieldName = 'FolioFinal'
          end
        end
      end
    end
    inherited cxTabSheet2: TcxTabSheet
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 773
      ExplicitHeight = 437
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 3
        Hint = ''
        Caption = ' Datos '
        TabOrder = 0
        Height = 524
        Width = 769
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 48
          Hint = ''
          DataBinding.DataField = 'DatosSatEmpresasID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 0
          Width = 57
        end
        object cxLabel1: TcxLabel
          Left = 16
          Top = 32
          Hint = ''
          Caption = 'ID'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 72
          Hint = ''
          Caption = 'Nombre'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 16
          Top = 88
          Hint = ''
          DataBinding.DataField = 'Nombre'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 433
        end
        object cxLabel3: TcxLabel
          Left = 16
          Top = 112
          Hint = ''
          Caption = 'Domicilio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 16
          Top = 128
          Hint = ''
          DataBinding.DataField = 'Domicilio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 433
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 240
          Hint = ''
          Caption = '# Certificado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 16
          Top = 256
          Hint = ''
          DataBinding.DataField = 'NoCertificado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 12
          Width = 185
        end
        object cxLabel6: TcxLabel
          Left = 16
          Top = 283
          Hint = ''
          Caption = 'Archivo de Clave Privada'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 16
          Top = 299
          Hint = ''
          DataBinding.DataField = 'ArchivoClavePrivada'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 16
          Width = 185
        end
        object cxLabel7: TcxLabel
          Left = 16
          Top = 364
          Hint = ''
          Caption = 'Archivo de Certificado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 16
          Top = 380
          Hint = ''
          DataBinding.DataField = 'ArchivoCertificado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 21
          Width = 185
        end
        object cxLabel9: TcxLabel
          Left = 207
          Top = 283
          Hint = ''
          Caption = 'Password Clave Fiel'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel8: TcxLabel
          Left = 569
          Top = 381
          Hint = ''
          Caption = 'Llave privada generada'
          Style.BorderStyle = ebsNone
          Transparent = True
          Visible = False
        end
        object Button3: TButton
          Left = 455
          Top = 378
          Width = 108
          Height = 25
          Caption = 'Genera llave Privada'
          TabOrder = 30
          OnClick = Button3Click
        end
        object cxLabel10: TcxLabel
          Left = 455
          Top = 240
          Hint = ''
          Caption = 'Estacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cbxAlmacen: TcxDBLookupComboBox
          Left = 455
          Top = 256
          Hint = ''
          DataBinding.DataField = 'EmpresaID'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'EmpresaID'
          Properties.ListColumns = <
            item
              FieldName = 'EmpresaID'
            end
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = DADataSource1
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 15
          Width = 230
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 207
          Top = 256
          Hint = ''
          DataBinding.DataField = 'noAprobacion'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 83
        end
        object cxLabel11: TcxLabel
          Left = 207
          Top = 240
          Hint = ''
          Caption = '# de Aprobacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 455
          Top = 339
          Hint = ''
          DataBinding.DataField = 'SucursalDE'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'EstacionID'
          Properties.ListColumns = <
            item
              FieldName = 'EstacionID'
            end
            item
              FieldName = 'Nombre'
            end>
          Properties.ListSource = DADataSource1
          Style.BorderStyle = ebsUltraFlat
          TabOrder = 18
          Width = 230
        end
        object cxLabel12: TcxLabel
          Left = 455
          Top = 323
          Hint = ''
          Caption = 'Sucursal de'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 455
          Top = 298
          Hint = ''
          Caption = 'Sucursal ?'
          DataBinding.DataField = 'Sucursal'
          DataBinding.DataSource = dsCatalogo
          Properties.OnEditValueChanged = cxDBCheckBox1PropertiesEditValueChanged
          TabOrder = 22
          Transparent = True
          Width = 83
        end
        object Edit1: TEdit
          Left = 207
          Top = 299
          Width = 182
          Height = 21
          PasswordChar = '*'
          TabOrder = 17
          OnChange = Edit1Change
        end
        object cxLabel4: TcxLabel
          Left = 207
          Top = 155
          Hint = ''
          Caption = 'Colonia'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 207
          Top = 171
          Hint = ''
          DataBinding.DataField = 'Colonia'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 242
        end
        object cxLabel13: TcxLabel
          Left = 455
          Top = 112
          Hint = ''
          Caption = 'Municipio'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 455
          Top = 128
          Hint = ''
          DataBinding.DataField = 'Municipio'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 185
        end
        object cxLabel14: TcxLabel
          Left = 16
          Top = 155
          Hint = ''
          Caption = 'Localidad'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 16
          Top = 171
          Hint = ''
          DataBinding.DataField = 'Localidad'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 185
        end
        object cxDBTextEdit11: TcxDBTextEdit
          Left = 207
          Top = 213
          Hint = ''
          DataBinding.DataField = 'CodigoPostal'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 10
          Width = 185
        end
        object cxLabel15: TcxLabel
          Left = 207
          Top = 197
          Hint = ''
          Caption = 'Codigo Postal'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit12: TcxDBTextEdit
          Left = 455
          Top = 171
          Hint = ''
          DataBinding.DataField = 'Estado'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 185
        end
        object cxLabel16: TcxLabel
          Left = 455
          Top = 155
          Hint = ''
          Caption = 'Estado'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit13: TcxDBTextEdit
          Left = 16
          Top = 213
          Hint = ''
          DataBinding.DataField = 'Pais'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 185
        end
        object cxLabel17: TcxLabel
          Left = 16
          Top = 197
          Hint = ''
          Caption = 'Pais'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit14: TcxDBTextEdit
          Left = 455
          Top = 213
          Hint = ''
          DataBinding.DataField = 'NoExterior'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 11
          Width = 185
        end
        object cxLabel18: TcxLabel
          Left = 455
          Top = 197
          Hint = ''
          Caption = 'No Exterior'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit15: TcxDBTextEdit
          Left = 16
          Top = 339
          Hint = ''
          DataBinding.DataField = 'Telefono1'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 19
          Width = 185
        end
        object cxLabel19: TcxLabel
          Left = 16
          Top = 323
          Hint = ''
          Caption = 'Telefono 1'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 207
          Top = 339
          Hint = ''
          DataBinding.DataField = 'Telefono2'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 20
          Width = 185
        end
        object cxLabel20: TcxLabel
          Left = 207
          Top = 323
          Hint = ''
          Caption = 'Telefono 2'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel21: TcxLabel
          Left = 296
          Top = 240
          Hint = ''
          Caption = 'A'#241'o Aprobacion'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 296
          Top = 256
          Hint = ''
          DataBinding.DataField = 'AnoAprobacion'
          DataBinding.DataSource = dsCatalogo
          TabOrder = 14
          Width = 153
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 455
          Top = 88
          Hint = ''
          DataBinding.DataField = 'RFC'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 185
        end
        object cxLabel22: TcxLabel
          Left = 455
          Top = 72
          Hint = ''
          Caption = 'RFC'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxLabel23: TcxLabel
          Left = 207
          Top = 364
          Hint = ''
          Caption = 'Folio Inicial'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 207
          Top = 380
          Hint = ''
          DataBinding.DataField = 'FolioInicial'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 46
          Width = 104
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 317
          Top = 380
          Hint = ''
          DataBinding.DataField = 'FolioFinal'
          DataBinding.DataSource = dsCatalogo
          Properties.CharCase = ecUpperCase
          TabOrder = 47
          Width = 132
        end
        object cxLabel24: TcxLabel
          Left = 317
          Top = 364
          Hint = ''
          Caption = 'Folio Final'
          Style.BorderStyle = ebsNone
          Transparent = True
        end
      end
    end
  end
  inherited cdsCatalogo: TDAMemDataTable
    Fields = <
      item
        Name = 'DatosSatEmpresasID'
        DataType = datInteger
      end
      item
        Name = 'Nombre'
        DataType = datString
        Size = 70
      end
      item
        Name = 'Domicilio'
        DataType = datString
        Size = 100
      end
      item
        Name = 'RFC'
        DataType = datString
        Size = 20
      end
      item
        Name = 'IVA'
        DataType = datFloat
      end
      item
        Name = 'NoExterior'
        DataType = datString
        Size = 20
      end
      item
        Name = 'NoInterior'
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
        Name = 'NoAprobacion'
        DataType = datInteger
      end
      item
        Name = 'Colonia'
        DataType = datString
        Size = 50
      end
      item
        Name = 'CodigoPostal'
        DataType = datString
        Size = 50
      end
      item
        Name = 'NoCertificado'
        DataType = datString
        Size = 50
      end
      item
        Name = 'ArchivoClavePrivada'
        DataType = datString
        Size = 200
      end
      item
        Name = 'ArchivoCertificado'
        DataType = datString
        Size = 200
      end
      item
        Name = 'ClavePriv'
        DataType = datString
        Size = 200
      end
      item
        Name = 'Certificado'
        DataType = datString
        Size = 4000
      end
      item
        Name = 'PasswordFCTElect'
        DataType = datString
        Size = 200
      end
      item
        Name = 'EmpresaID'
        DataType = datInteger
      end
      item
        Name = 'Sucursal'
        DataType = datInteger
      end
      item
        Name = 'SucursalDE'
        DataType = datInteger
      end
      item
        Name = 'Telefono1'
        DataType = datString
        Size = 50
      end
      item
        Name = 'Telefono2'
        DataType = datString
        Size = 50
      end
      item
        Name = 'AnoAprobacion'
        DataType = datDateTime
      end
      item
        Name = 'FolioInicial'
        DataType = datInteger
      end
      item
        Name = 'FolioFinal'
        DataType = datInteger
      end>
    LogicalName = 'dbo.DatosSATEmpresas'
    RemoteDataAdapter = DM.RemoteDataAdapter
    Left = 664
    Top = 32
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 664
    Top = 80
  end
  inherited tblCatalogo: TdxMemData
    Left = 728
    Top = 32
  end
  object cdsEstacion: TDACDSDataTable
    Fields = <
      item
        Name = 'EMPRESAID'
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
        Size = 30
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
        Name = 'IvaRetenido'
        DataType = datBoolean
      end
      item
        Name = 'ISR'
        DataType = datFloat
      end>
    LogicalName = 'dbo.Empresas'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 728
    Top = 80
  end
  object DADataSource1: TDADataSource
    DataSet = cdsEstacion.Dataset
    OnStateChange = dsCatalogoStateChange
    DataTable = cdsEstacion
    Left = 728
    Top = 112
  end
end
