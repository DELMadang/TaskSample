object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 233
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnSync: TButton
    Left = 7
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sync'
    TabOrder = 0
    OnClick = btnSyncClick
  end
  object btnTask: TButton
    Left = 88
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Task'
    TabOrder = 1
    OnClick = btnTaskClick
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 481
    Height = 185
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
