inherited frmCancelarFactura: TfrmCancelarFactura
  Caption = 'frmCancelarFactura'
  ClientHeight = 448
  ExplicitWidth = 625
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  object pgcFacturas: TcxPageControl
    Left = 0
    Top = 0
    Width = 625
    Height = 448
    ActivePage = TabCancelaFactura
    Align = alClient
    Images = dmImages.Imagenes
    TabOrder = 0
    TabPosition = tpBottom
    OnChange = pgcFacturasChange
    ClientRectBottom = 418
    ClientRectLeft = 3
    ClientRectRight = 619
    ClientRectTop = 3
    object TabCancelaFactura: TcxTabSheet
      Caption = 'Cancela Factura'
      ImageIndex = 9
      object grpCancelaFactura: TcxGroupBox
        Left = 24
        Top = 24
        Caption = ' Cancelar Factura '
        Style.BorderStyle = ebsUltraFlat
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Transparent = True
        Height = 193
        Width = 185
        object cxLabel1: TcxLabel
          Left = 32
          Top = 24
          Caption = 'Serie'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 32
          Top = 80
          Caption = 'Folio'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object edtFolio: TcxCurrencyEdit
          Left = 32
          Top = 96
          Properties.DisplayFormat = '#0'
          Properties.OnChange = TxtFolioPropertiesChange
          TabOrder = 2
          Width = 105
        end
        object edtSerie: TcxImageComboBox
          Left = 32
          Top = 40
          Enabled = False
          Properties.Items = <>
          TabOrder = 3
          Width = 105
        end
        object cxLabel3: TcxLabel
          Left = 32
          Top = 136
          Caption = 'Fecha'
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          Transparent = True
        end
        object dtpFecha: TcxDateEdit
          Left = 32
          Top = 151
          TabOrder = 5
          Width = 105
        end
      end
    end
  end
  object DACDSDataTable1: TDACDSDataTable
    RemoteUpdatesOptions = []
    Fields = <>
    Params = <>
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 408
    Top = 328
  end
  object DADataSource1: TDADataSource
    Left = 448
    Top = 328
  end
end
