object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 338
  Width = 512
  object fdcConexao: TFDConnection
    ConnectionName = 'Conector'
    Params.Strings = (
      'Database=C:\Projeto Fortes\ABASTECIMENTO.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    Left = 168
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 272
    Top = 24
  end
end
