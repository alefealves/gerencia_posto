object form_dados: Tform_dados
  OnCreate = DataModuleCreate
  Height = 840
  Width = 1695
  PixelsPerInch = 288
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Dados\LMC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 156
    Top = 144
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_3_0\WOW64\fbclient.dll'
    Left = 576
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1020
    Top = 108
  end
end
