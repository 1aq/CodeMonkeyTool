object frmMain: TfrmMain
  Left = 276
  Top = 232
  Width = 1305
  Height = 675
  Caption = 'CodeMonkeyTool'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 104
    Top = 112
    Width = 281
    Height = 25
    Action = actAlgorithmAndDataStructure
    TabOrder = 0
  end
  object Button2: TButton
    Left = 104
    Top = 176
    Width = 281
    Height = 25
    Action = actCodeGen
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 544
    Top = 208
    object actAlgorithmAndDataStructure: TAction
      AutoCheck = True
      Caption = 'Algorithm And Data Structure'
      Checked = True
      OnExecute = actAlgorithmAndDataStructureExecute
    end
    object actCodeGen: TAction
      AutoCheck = True
      Caption = 'CodeGen'
      Checked = True
      OnExecute = actCodeGenExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 128
    Top = 64
    object actAlgorithmAndDataStructure1: TMenuItem
      Action = actAlgorithmAndDataStructure
      AutoCheck = True
    end
    object actCodeGen1: TMenuItem
      Action = actCodeGen
      AutoCheck = True
    end
  end
end
