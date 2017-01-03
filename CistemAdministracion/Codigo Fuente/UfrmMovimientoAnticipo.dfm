inherited frmCatalogoAnticipo: TfrmCatalogoAnticipo
  Caption = 'frmMovimientoAnticipo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCatalogo: TcxPageControl
    inherited cxTabSheet2: TcxTabSheet
      ExplicitWidth = 625
      ExplicitHeight = 424
      object GrpBoxDatos: TcxGroupBox
        Left = 16
        Top = 18
        Caption = ' Datos '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 369
        Width = 409
        object LblEstacion: TcxLabel
          Left = 32
          Top = 38
          Caption = 'Estaci'#243'n'
        end
        object LblFecha: TcxLabel
          Left = 232
          Top = 38
          Caption = 'Fecha'
        end
        object LblAgrupacion: TcxLabel
          Left = 32
          Top = 79
          Caption = 'Agrupaci'#243'n'
        end
        object LblDespachador: TcxLabel
          Left = 32
          Top = 120
          Caption = 'Despachador'
        end
        object GrpBoxTipoValor: TcxGroupBox
          Left = 24
          Top = 168
          Caption = ' Tipo de Valores '
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Height = 169
          Width = 353
          object LblValor: TcxLabel
            Left = 24
            Top = 32
            Caption = 'Valor'
          end
          object LblAnticipo: TcxLabel
            Left = 32
            Top = 72
            Caption = 'Anticipo'
          end
          object LblAnticipoAcomulado: TcxLabel
            Left = 24
            Top = 120
            Caption = 'Anticipo Acomulado'
          end
          object CmBoxValor: TcxDBComboBox
            Left = 24
            Top = 48
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 265
          end
          object TxtAnticipoAcomulado: TcxDBTextEdit
            Left = 24
            Top = 136
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            Width = 265
          end
          object TxtAnticipo: TcxDBTextEdit
            Left = 24
            Top = 88
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Width = 265
          end
        end
        object CmBoxEstacion: TcxDBComboBox
          Left = 32
          Top = 52
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 169
        end
        object CmBoxAgrupacion: TcxDBComboBox
          Left = 32
          Top = 94
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 169
        end
        object CmBoxDespachador: TcxDBComboBox
          Left = 32
          Top = 136
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 345
        end
      end
      object CmBoxFecha: TcxDBDateEdit
        Left = 248
        Top = 70
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 145
      end
    end
  end
  inherited cdsCatalogo: TDACDSDataTable
    Left = 560
    Top = 320
  end
  inherited dsCatalogo: TDADataSource
    DataSet = cdsCatalogo.Dataset
    Left = 560
    Top = 352
  end
  inherited tblCatalogo: TdxMemData
    Left = 592
    Top = 320
  end
end
