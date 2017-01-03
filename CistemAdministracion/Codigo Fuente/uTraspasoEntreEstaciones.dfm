inherited frmTraspasoEntreEstaciones: TfrmTraspasoEntreEstaciones
  Caption = 'FrmTraspasoEntreEstaciones'
  ExplicitWidth = 625
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 449
    ActivePage = cxTabSheet1
    Align = alClient
    TabOrder = 0
    TabPosition = tpBottom
    ClientRectBottom = 426
    ClientRectRight = 625
    ClientRectTop = 0
    object cxTabSheet1: TcxTabSheet
      Caption = ' Traspaso '
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Datos '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Height = 129
        Width = 625
        object LblTraspasoEstacionOrigen: TcxLabel
          Left = 32
          Top = 24
          Caption = 'Estaci'#243'n Origen'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblTraspasoEstacionDestino: TcxLabel
          Left = 32
          Top = 67
          Caption = 'Estaci'#243'n Destino'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
        end
        object LblTraspasoFolio: TcxLabel
          Left = 232
          Top = 24
          Caption = 'Folio'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblTraspasoTurno: TcxLabel
          Left = 232
          Top = 67
          Caption = 'Tuno'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblTraspasoFecha: TcxLabel
          Left = 376
          Top = 24
          Caption = 'Fecha'
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object CmBoxTraspasoEstacionOrigen: TcxDBComboBox
          Left = 32
          Top = 40
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 161
        end
        object CmBoxTraspasoEstacionDestino: TcxDBComboBox
          Left = 32
          Top = 82
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 161
        end
        object CmboxTraspasoTurno: TcxDBComboBox
          Left = 232
          Top = 82
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 121
        end
        object TxtTraspasoFolio: TcxDBTextEdit
          Left = 232
          Top = 40
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 121
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 376
          Top = 40
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 137
        end
      end
      object GridTraspasoDatos: TcxGrid
        Left = 0
        Top = 129
        Width = 625
        Height = 297
        Align = alClient
        TabOrder = 1
        object GridTraspasoDatosDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object GridTraspasoDatosLevel1: TcxGridLevel
          GridView = GridTraspasoDatosDBTableView1
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Recepcion '
      ImageIndex = 1
      ExplicitHeight = 425
      object GridRecepcionDatos: TcxGrid
        Left = 0
        Top = 121
        Width = 625
        Height = 305
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 304
        object GridRecepcionDatosDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
        end
        object GridRecepcionDatosLevel1: TcxGridLevel
          GridView = GridRecepcionDatosDBTableView1
        end
      end
      object GrBoxDatos: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Datos '
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Height = 121
        Width = 625
        object LbRecepcionlFolioTraspaso: TcxLabel
          Left = 24
          Top = 24
          Caption = 'Folio de Traspaso'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblRecepcionFecha: TcxLabel
          Left = 352
          Top = 24
          Caption = 'Fecha'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblRecepcionEstacionOrigen: TcxLabel
          Left = 24
          Top = 64
          Caption = 'Estaci'#243'n Origen'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object LblRecepcionFolioRecepcion: TcxLabel
          Left = 352
          Top = 64
          Caption = 'Folio de Recepci'#243'n'
          Style.LookAndFeel.NativeStyle = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
        end
        object TxtFolioTraspaso: TcxDBTextEdit
          Left = 24
          Top = 40
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 113
        end
        object TxtRecepcionEstacionOrigen: TcxDBTextEdit
          Left = 24
          Top = 80
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 297
        end
        object TxtRecepcionFolioRecepcion: TcxDBTextEdit
          Left = 352
          Top = 80
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 129
        end
        object DtRecepcionFecha: TcxDBDateEdit
          Left = 352
          Top = 40
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 129
        end
      end
    end
  end
end
