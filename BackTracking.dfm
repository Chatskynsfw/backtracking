object Form1: TForm1
  Left = 1081
  Top = 269
  Width = 324
  Height = 403
  Caption = 'BachTracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 25
    Height = 13
    Caption = #1042#1074#1086#1076
  end
  object Label2: TLabel
    Left = 160
    Top = 24
    Width = 116
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1086#1077' '#1082#1086#1083#1100#1094#1086
  end
  object Label3: TLabel
    Left = 8
    Top = 328
    Width = 116
    Height = 13
    Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1076#1083#1080#1085#1072': '
  end
  object ButtonTask: TButton
    Left = 160
    Top = 328
    Width = 145
    Height = 33
    Caption = #1047#1072#1076#1072#1095#1072
    TabOrder = 0
    OnClick = ButtonTaskClick
  end
  object MemoOutput: TMemo
    Left = 160
    Top = 40
    Width = 145
    Height = 273
    ReadOnly = True
    TabOrder = 1
  end
  object MemoInput: TEdit
    Left = 8
    Top = 40
    Width = 145
    Height = 273
    TabOrder = 2
  end
  object OpenDialog1: TOpenDialog
    Left = 280
    Top = 280
  end
end
