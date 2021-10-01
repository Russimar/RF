object dmDatabase: TdmDatabase
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 398
  Top = 192
  Height = 293
  Width = 464
  object scoPrincipal: TSQLConnection
    ConnectionName = 'IBConnection'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    KeepConnection = False
    LibraryName = 'dbexpint.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=E:\projetos\Dados\DADOS.fdb'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False')
    VendorLib = 'gds32.dll'
    Left = 39
    Top = 14
  end
  object Decoder64: TIdDecoderMIME
    FillChar = '='
    Left = 168
    Top = 16
  end
  object Encoder64: TIdEncoderMIME
    FillChar = '='
    Left = 248
    Top = 16
  end
  object Conexao_SQLServer: TSQLConnection
    ConnectionName = 'MSSQLConnection'
    DriverName = 'MSSQL'
    GetDriverFunc = 'getSQLDriverMSSQL'
    LibraryName = 'dbexpmss.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MSSQL'
      'HostName=RUSSIMAR-DELL'
      'DataBase=Sage_Gestao_Contabil_RF'
      'User_Name=RUSSIMAR-DELL\Russimar'
      'Password=GUI180400'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'MSSQL TransIsolation=ReadCommited'
      'OS Authentication=True')
    VendorLib = 'oledb'
    Left = 39
    Top = 94
  end
end
