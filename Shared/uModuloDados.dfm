object ModuloDados: TModuloDados
  OldCreateOrder = False
  Height = 193
  Width = 251
  object conTeste: TFDConnection
    ConnectionName = 'TESTE'
    Params.Strings = (
      'User_Name=sa'
      'Password=201103'
      'Database=testeAreco'
      'Server=MATHEUS-NOT'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 176
    Top = 118
  end
  object SQLDriverLink: TFDPhysMSSQLDriverLink
    Left = 112
    Top = 118
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 118
  end
end
