inherited frmBitacoraServicioEst: TfrmBitacoraServicioEst
  Caption = 'frmBitacoraServicioEst'
  ClientHeight = 482
  ClientWidth = 781
  ExplicitWidth = 781
  ExplicitHeight = 482
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 41
    Height = 482
    Align = alLeft
    Caption = '----'
    TabOrder = 0
    ExplicitHeight = 449
  end
  object Panel2: TPanel
    Left = 756
    Top = 0
    Width = 25
    Height = 482
    Align = alRight
    Caption = '----'
    TabOrder = 1
    ExplicitLeft = 600
    ExplicitHeight = 449
  end
  object Panel3: TPanel
    Left = 41
    Top = 0
    Width = 715
    Height = 482
    Align = alClient
    Caption = '.'
    TabOrder = 2
    ExplicitLeft = 113
    ExplicitTop = -8
    ExplicitHeight = 449
    object Panel5: TPanel
      Left = 1
      Top = 358
      Width = 713
      Height = 123
      Align = alBottom
      BevelOuter = bvNone
      Color = clGray
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 6
      ExplicitTop = 326
      object Panel4: TPanel
        Left = 5
        Top = 4
        Width = 626
        Height = 113
        BevelKind = bkTile
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Image1: TImage
          Left = 0
          Top = 0
          Width = 622
          Height = 109
          Align = alClient
          OnMouseDown = Image1MouseDown
          OnMouseMove = Image1MouseMove
          OnMouseUp = Image1MouseUp
          ExplicitLeft = 1
          ExplicitTop = 1
          ExplicitWidth = 472
          ExplicitHeight = 111
        end
      end
      object Button1: TButton
        Left = 637
        Top = 5
        Width = 71
        Height = 30
        Caption = 'Limpiar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 637
        Top = 85
        Width = 71
        Height = 30
        Caption = 'Guardar'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 313
      Width = 713
      Height = 45
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 1
      ExplicitTop = 279
      object Label2: TLabel
        Left = 141
        Top = 3
        Width = 4
        Height = 19
        Caption = '.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 5
        Top = 3
        Width = 115
        Height = 19
        Caption = 'Elaborado por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 5
        Top = 23
        Width = 80
        Height = 19
        Caption = 'Firme aqui'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object cdsUsuario: TDAMemDataTable
    Fields = <
      item
        Name = 'IDEMPLEADO'
        DataType = datInteger
      end
      item
        Name = 'CODIGO'
        DataType = datString
        Size = 10
      end
      item
        Name = 'NOMBRE'
        DataType = datString
        Size = 70
      end
      item
        Name = 'USERNAME'
        DataType = datString
        Size = 10
      end
      item
        Name = 'USERPASSWORD'
        DataType = datString
        Size = 10
      end>
    LogicalName = 'dbo.usuarios'
    Params = <>
    RemoteDataAdapter = DM.RemoteDataAdapter
    RemoteUpdatesOptions = []
    StreamingOptions = [soDisableEventsWhileStreaming]
    IndexDefs = <>
    Left = 624
    Top = 232
  end
  object dsUsuario: TDADataSource
    DataSet = cdsUsuario.Dataset
    DataTable = cdsUsuario
    Left = 680
    Top = 232
  end
end