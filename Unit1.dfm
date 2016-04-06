object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1085#1103#1090#1080#1077' '#1089' '#1085#1072#1083#1086#1075#1086#1074#1086#1075#1086' '#1091#1095#1077#1090#1072
  ClientHeight = 462
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 424
    Top = 418
    Width = 162
    Height = 25
    Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1082#1091#1084#1077#1085#1090
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 410
    Height = 449
    Caption = #1047#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1077#1084
    Color = clAppWorkSpace
    ParentBackground = False
    ParentColor = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 30
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Label2: TLabel
      Left = 8
      Top = 55
      Width = 119
      Height = 13
      Caption = #1050#1086#1076' '#1085#1072#1083#1086#1075#1086#1074#1086#1075#1086' '#1086#1088#1075#1072#1085#1072
    end
    object Label4: TLabel
      Left = 8
      Top = 332
      Width = 41
      Height = 13
      Caption = #1054#1043#1056#1053#1048#1055
    end
    object Label5: TLabel
      Left = 8
      Top = 358
      Width = 177
      Height = 13
      Caption = #1044#1072#1090#1072' '#1087#1088#1077#1082#1088#1072#1097#1077#1085#1080#1103' '#1091#1087#1083#1072#1090#1099' '#1085#1072#1083#1086#1075#1072
    end
    object Label12: TLabel
      Left = 8
      Top = 243
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label13: TLabel
      Left = 8
      Top = 274
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label14: TLabel
      Left = 8
      Top = 305
      Width = 123
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086' ('#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080')'
    end
    object Label15: TLabel
      Left = 8
      Top = 390
      Width = 261
      Height = 13
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1089#1086#1089#1090#1072#1074#1083#1077#1085#1086' '#1085#1072'                       '#1089#1090#1088#1072#1085#1080#1094#1072#1093
    end
    object Label16: TLabel
      Left = 8
      Top = 415
      Width = 291
      Height = 13
      Caption = #1055#1088#1080#1083#1086#1078#1077#1085#1080#1077' '#1082#1086#1087#1080#1080' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '#1085#1072'                       '#1089#1090#1088#1072#1085#1080#1094#1072#1093
    end
    object MaskEdit1: TMaskEdit
      Left = 35
      Top = 28
      Width = 94
      Height = 21
      EditMask = '!999999999999;1;_'
      MaxLength = 12
      TabOrder = 0
      Text = '            '
    end
    object MaskEdit2: TMaskEdit
      Left = 134
      Top = 52
      Width = 38
      Height = 21
      EditMask = '!9999;1;_'
      MaxLength = 4
      TabOrder = 1
      Text = '    '
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 79
      Width = 399
      Height = 131
      Caption = #1055#1088#1080#1095#1080#1085#1072' '#1089#1085#1103#1090#1080#1103' '#1089' '#1091#1095#1077#1090#1072
      TabOrder = 2
    end
    object RadioButton1: TRadioButton
      Left = 15
      Top = 97
      Width = 281
      Height = 17
      Caption = #1055#1088#1077#1082#1088#1072#1097#1077#1085#1080#1077' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100#1089#1082#1086#1081' '#1076#1077#1103#1090#1077#1083#1100#1085#1086#1089#1090#1080
      Checked = True
      TabOrder = 3
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 15
      Top = 124
      Width = 233
      Height = 17
      Caption = #1055#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1080#1085#1086#1081' '#1089#1087#1086#1089#1086#1073' '#1085#1072#1083#1086#1075#1086#1086#1073#1083#1086#1078#1077#1085#1080#1103
      TabOrder = 4
      OnClick = RadioButton2Click
    end
    object RadioButton3: TRadioButton
      Left = 15
      Top = 147
      Width = 395
      Height = 30
      Caption = #1053#1072#1088#1091#1096#1077#1085#1080#1077' '#1090#1088#1077#1073#1086#1074#1072#1085#1080#1081
      TabOrder = 5
      WordWrap = True
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 15
      Top = 182
      Width = 112
      Height = 17
      Caption = #1048#1085#1072#1103
      TabOrder = 6
      OnClick = RadioButton4Click
    end
    object Edit1: TEdit
      Left = 8
      Top = 216
      Width = 392
      Height = 21
      Hint = #1047#1076#1077#1089#1100' '#1091#1082#1072#1079#1099#1074#1072#1077#1090#1089#1103' '#1080#1085#1072#1103' '#1087#1088#1080#1095#1080#1085#1072
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object MaskEdit3: TMaskEdit
      Left = 67
      Top = 329
      Width = 118
      Height = 21
      EditMask = '!999999999999999;1;_'
      MaxLength = 15
      TabOrder = 8
      Text = '               '
    end
    object DateTimePicker1: TDateTimePicker
      Left = 191
      Top = 356
      Width = 210
      Height = 21
      Date = 42430.040411365740000000
      Time = 42430.040411365740000000
      TabOrder = 9
    end
    object Edit7: TEdit
      Left = 153
      Top = 243
      Width = 248
      Height = 21
      TabOrder = 10
      Text = #1048#1074#1072#1085#1086#1074
    end
    object Edit8: TEdit
      Left = 159
      Top = 270
      Width = 248
      Height = 21
      TabOrder = 11
      Text = #1048#1074#1072#1085
    end
    object Edit9: TEdit
      Left = 153
      Top = 302
      Width = 248
      Height = 21
      TabOrder = 12
      Text = #1048#1074#1072#1085#1086#1074#1080#1095
    end
    object SpinEdit1: TSpinEdit
      Left = 153
      Top = 387
      Width = 56
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 13
      Value = 1
    end
    object SpinEdit2: TSpinEdit
      Left = 183
      Top = 412
      Width = 56
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 14
      Value = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 424
    Top = 8
    Width = 419
    Height = 210
    Caption = #1047#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1077#1084
    Color = clSkyBlue
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object Label6: TLabel
      Left = 5
      Top = 153
      Width = 282
      Height = 13
      Caption = #1044#1086#1082#1091#1084#1077#1085#1090', '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102#1097#1080#1081' '#1083#1080#1095#1085#1086#1089#1090#1100' '#1087#1088#1077#1076#1089#1090#1072#1074#1080#1090#1077#1083#1103
    end
    object Label7: TLabel
      Left = 5
      Top = 21
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label8: TLabel
      Left = 5
      Top = 48
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label9: TLabel
      Left = 5
      Top = 75
      Width = 123
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086' ('#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080')'
    end
    object Label17: TLabel
      Left = 5
      Top = 129
      Width = 110
      Height = 13
      Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
    end
    object Label18: TLabel
      Left = 5
      Top = 102
      Width = 21
      Height = 13
      Caption = #1048#1053#1053
    end
    object Edit3: TEdit
      Left = 3
      Top = 172
      Width = 413
      Height = 21
      TabOrder = 0
      Text = #1055#1072#1089#1087#1086#1088#1090' '#1056#1060
    end
    object Edit4: TEdit
      Left = 169
      Top = 18
      Width = 247
      Height = 21
      TabOrder = 1
      Text = #1055#1077#1090#1088#1086#1074
    end
    object Edit5: TEdit
      Left = 169
      Top = 45
      Width = 247
      Height = 21
      TabOrder = 2
      Text = #1055#1077#1090#1088
    end
    object Edit6: TEdit
      Left = 169
      Top = 72
      Width = 247
      Height = 21
      TabOrder = 3
      Text = #1055#1077#1090#1088#1086#1074#1080#1095
    end
    object Edit2: TEdit
      Left = 169
      Top = 126
      Width = 247
      Height = 21
      TabOrder = 4
      Text = '123456789'
    end
    object MaskEdit4: TMaskEdit
      Left = 169
      Top = 99
      Width = 96
      Height = 21
      EditMask = '!999999999999;1;_'
      MaxLength = 12
      TabOrder = 5
      Text = '            '
    end
  end
  object GroupBox3: TGroupBox
    Left = 424
    Top = 224
    Width = 416
    Height = 177
    Caption = #1047#1072#1087#1086#1083#1085#1103#1077#1090#1089#1103' '#1088#1072#1073#1086#1090#1085#1080#1082#1086#1084' '#1085#1072#1083#1086#1075#1086#1074#1086#1075#1086' '#1086#1088#1075#1072#1085#1072
    Color = clInactiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object Label20: TLabel
      Left = 5
      Top = 17
      Width = 44
      Height = 13
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label21: TLabel
      Left = 5
      Top = 44
      Width = 19
      Height = 13
      Caption = #1048#1084#1103
    end
    object Label22: TLabel
      Left = 5
      Top = 71
      Width = 123
      Height = 13
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086' ('#1087#1088#1080' '#1085#1072#1083#1080#1095#1080#1080')'
    end
    object Label19: TLabel
      Left = 3
      Top = 152
      Width = 57
      Height = 13
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object Label23: TLabel
      Left = 3
      Top = 125
      Width = 159
      Height = 13
      Caption = #1047#1072#1103#1074#1083#1077#1085#1080#1077' '#1087#1088#1077#1076#1089#1090#1072#1074#1083#1077#1085#1086' ('#1082#1086#1076')'
    end
    object Label24: TLabel
      Left = 5
      Top = 98
      Width = 124
      Height = 13
      Caption = #1047#1072#1088#1077#1075#1077#1089#1090#1088#1080#1088#1086#1074#1072#1085#1086' '#1079#1072' '#8470
    end
    object Edit10: TEdit
      Left = 165
      Top = 14
      Width = 248
      Height = 21
      TabOrder = 0
      Text = #1057#1080#1076#1086#1088#1086#1074
    end
    object Edit11: TEdit
      Left = 165
      Top = 41
      Width = 248
      Height = 21
      TabOrder = 1
      Text = #1044#1084#1080#1090#1088#1080#1081
    end
    object Edit12: TEdit
      Left = 165
      Top = 68
      Width = 248
      Height = 21
      TabOrder = 2
      Text = #1044#1084#1080#1090#1088#1080#1077#1074#1080#1095
    end
    object Edit13: TEdit
      Left = 165
      Top = 149
      Width = 248
      Height = 21
      TabOrder = 3
      Text = '----'
    end
    object Edit14: TEdit
      Left = 165
      Top = 122
      Width = 248
      Height = 21
      TabOrder = 4
      Text = '12'
    end
    object Edit15: TEdit
      Left = 165
      Top = 95
      Width = 248
      Height = 21
      TabOrder = 5
      Text = '123456789'
    end
  end
end
