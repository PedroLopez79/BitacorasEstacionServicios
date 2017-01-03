object frmQuemaCupones: TfrmQuemaCupones
  Left = 0
  Top = 0
  ActiveControl = edtCupon
  BorderStyle = bsToolWindow
  Caption = 'Quemar Cupones'
  ClientHeight = 90
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 8
    Top = 16
    Caption = 'Datos Cupon'
    TabOrder = 0
    Height = 57
    Width = 225
    object edtCupon: TcxTextEdit
      Left = 8
      Top = 24
      TabOrder = 0
      OnKeyPress = edtCuponKeyPress
      Width = 201
    end
  end
end
