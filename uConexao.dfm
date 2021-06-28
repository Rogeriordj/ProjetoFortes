object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 287
  Width = 435
  object FDConnection1: TFDConnection
    ConnectionName = 'FBConection'
    Params.Strings = (
      'Database=C:\Projeto Fortes\ABASTECIMENTO.GDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=IB')
    Connected = True
    Left = 104
    Top = 40
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\gds32.dll'
    Left = 232
    Top = 40
  end
end
