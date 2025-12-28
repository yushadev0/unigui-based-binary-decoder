object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 596
  ClientWidth = 1128
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  OnKeyDown = UniFormKeyDown
  KeyPreview = True
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object UniEdit1: TUniEdit
    Left = 97
    Top = 120
    Width = 157
    Height = 41
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -23
    Font.Style = [fsBold]
    TabOrder = 0
    EmptyText = 'Desimal Say'#305
  end
  object UniButton1: TUniButton
    Left = 260
    Top = 120
    Width = 75
    Height = 41
    Hint = ''
    Caption = #199#246'z'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniLabel1: TUniLabel
    Left = 97
    Top = 167
    Width = 238
    Height = 59
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = '00000000'
    ParentFont = False
    Font.Height = -43
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object UniEdit2: TUniEdit
    Left = 97
    Top = 248
    Width = 157
    Height = 41
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -23
    Font.Style = [fsBold]
    TabOrder = 3
    EmptyText = 'Binary Kodu'
  end
  object UniButton2: TUniButton
    Left = 260
    Top = 248
    Width = 75
    Height = 41
    Hint = ''
    Caption = #199#246'z'
    TabOrder = 4
    OnClick = UniButton2Click
  end
  object UniLabel2: TUniLabel
    Left = 97
    Top = 295
    Width = 238
    Height = 59
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    ParentFont = False
    Font.Height = -43
    Font.Style = [fsBold]
    TabOrder = 5
  end
  object UniEdit3: TUniEdit
    Left = 729
    Top = 402
    Width = 238
    Height = 49
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -27
    Font.Style = [fsBold]
    TabOrder = 7
    EmptyText = 'Tahmin Et!'
  end
  object UniGauge1: TUniGauge
    Left = 729
    Top = 120
    Width = 238
    Height = 238
    Hint = ''
    Max = 30.000000000000000000
    Value = 100.000000000000000000
    Needle.NeedleType = 'arrow'
    ParentFont = False
    Font.Height = -23
    Font.Style = [fsBold]
  end
  object UniLabel4: TUniLabel
    Left = 729
    Top = 457
    Width = 238
    Height = 59
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    ParentFont = False
    Font.Height = -43
    Font.Style = [fsBold]
    TabOrder = 9
  end
  object UniButton3: TUniButton
    Left = 973
    Top = 402
    Width = 92
    Height = 49
    Hint = ''
    Caption = 'Oyna'
    TabOrder = 10
    OnClick = UniButton3Click
  end
  object UniLabel3: TUniLabel
    Left = 729
    Top = 331
    Width = 238
    Height = 59
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = '00000000'
    ParentFont = False
    Font.Height = -43
    Font.Style = [fsBold]
    TabOrder = 6
  end
  object UniLabel5: TUniLabel
    Left = 973
    Top = 316
    Width = 116
    Height = 59
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    ParentFont = False
    Font.Color = clMaroon
    Font.Height = -43
    Font.Style = [fsBold, fsUnderline]
    TabOrder = 11
    OnDblClick = UniLabel5DblClick
  end
  object UniLabel6: TUniLabel
    Left = 621
    Top = 268
    Width = 92
    Height = 59
    Hint = ''
    Visible = False
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    ParentFont = False
    Font.Height = -43
    Font.Style = [fsBold]
    TabOrder = 12
  end
  object UniLabel7: TUniLabel
    Left = 973
    Top = 286
    Width = 106
    Height = 34
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = ''
    ParentFont = False
    Font.Color = clLime
    Font.Height = -27
    Font.Style = [fsBold]
    TabOrder = 13
  end
  object UniCheckBox1: TUniCheckBox
    Left = 973
    Top = 457
    Width = 97
    Height = 16
    Hint = ''
    Caption = 'Yard'#305'ml'#305
    TabOrder = 14
    OnChange = UniCheckBox1Change
  end
  object UniLabel8: TUniLabel
    Left = 741
    Top = 383
    Width = 18
    Height = 13
    Hint = ''
    Caption = '128'
    TabOrder = 15
  end
  object UniLabel9: TUniLabel
    Left = 773
    Top = 383
    Width = 12
    Height = 13
    Hint = ''
    Caption = '64'
    TabOrder = 16
  end
  object UniLabel10: TUniLabel
    Left = 801
    Top = 383
    Width = 12
    Height = 13
    Hint = ''
    Caption = '32'
    TabOrder = 17
  end
  object UniLabel11: TUniLabel
    Left = 828
    Top = 383
    Width = 12
    Height = 13
    Hint = ''
    Caption = '16'
    TabOrder = 18
  end
  object UniLabel12: TUniLabel
    Left = 858
    Top = 383
    Width = 6
    Height = 13
    Hint = ''
    Caption = '8'
    TabOrder = 19
  end
  object UniLabel13: TUniLabel
    Left = 886
    Top = 383
    Width = 6
    Height = 13
    Hint = ''
    Caption = '4'
    TabOrder = 20
  end
  object UniLabel14: TUniLabel
    Left = 913
    Top = 383
    Width = 6
    Height = 13
    Hint = ''
    Caption = '2'
    TabOrder = 21
  end
  object UniLabel15: TUniLabel
    Left = 941
    Top = 383
    Width = 6
    Height = 13
    Hint = ''
    Caption = '1'
    TabOrder = 22
  end
  object UniTimer1: TUniTimer
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 752
    Top = 141
  end
  object UniTimer2: TUniTimer
    Interval = 300
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer2Timer
    Left = 783
    Top = 141
  end
  object UniTimer3: TUniTimer
    Interval = 300
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer3Timer
    Left = 815
    Top = 141
  end
end
