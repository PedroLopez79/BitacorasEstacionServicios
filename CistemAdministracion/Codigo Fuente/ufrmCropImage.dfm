inherited frmcropimage: Tfrmcropimage
  Caption = 'frmcropimage'
  ClientHeight = 551
  ClientWidth = 663
  Menu = MainMenu1
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 663
  ExplicitHeight = 571
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 663
    Height = 551
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 0
    ExplicitWidth = 652
    ExplicitHeight = 500
    object Image1: TImage
      Left = 3
      Top = 3
      Width = 105
      Height = 105
      AutoSize = True
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
    end
  end
  object MainMenu1: TMainMenu
    Left = 144
    Top = 48
    object Archivo1: TMenuItem
      Caption = 'Archivo'
      object CargarArchivo1: TMenuItem
        Caption = 'Cargar Archivo'
        OnClick = CargarArchivo1Click
      end
      object Guardar1: TMenuItem
        Caption = 'Guardar'
        OnClick = Guardar1Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 144
  end
end
