object frmPentagon: TfrmPentagon
  Left = 0
  Top = 0
  Caption = 'Pent'#225'gono'
  ClientHeight = 179
  ClientWidth = 289
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object LblResult: TLabel
    Left = 27
    Top = 88
    Width = 3
    Height = 15
  end
  object EdtInput: TEdit
    Left = 8
    Top = 40
    Width = 193
    Height = 23
    NumbersOnly = True
    TabOrder = 0
  end
  object BtnCalculate: TButton
    Left = 207
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 1
    OnClick = BtnCalculateClick
  end
end
