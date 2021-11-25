object DM1: TDM1
  OldCreateOrder = False
  Height = 624
  Width = 1299
  object Conexao: TSQLConnection
    ConnectionName = 'Teste_Scout'
    DriverName = 'Odbc'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Odbc'
      'DriverUnit=Data.DBXOdbc'
      'DriverPackageLoader=TDBXOdbcDriverLoader,DBXOdbcDriver210.bpl'
      
        'MetaDataPackageLoader=TDBXOdbcMetaDataCommandFactory,DbxOdbcDriv' +
        'er210.bpl'
      'IsolationLevel=ReadCommitted'
      'RowSetSize=20'
      
        'DriverAssemblyLoader=Borland.Data.TDBXOdbcDriverLoader,Borland.D' +
        'ata.DbxOdbcDriver,Version=21.0.0.0,Culture=neutral,PublicKeyToke' +
        'n=91d62ebb5b0d1b1b'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXOdbcMetaDataCommandFacto' +
        'ry,Borland.Data.DbxOdbcDriver,Version=21.0.0.0,Culture=neutral,P' +
        'ublicKeyToken=91d62ebb5b0d1b1b'
      'Database=Scout'
      'User_Name=root'
      'Password=22200828')
    Connected = True
    Left = 16
    Top = 8
  end
  object sqlAtleta: TSQLDataSet
    CommandText = 'select * from `tbatleta`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 16
    Top = 56
    object sqlAtletaCod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
    end
    object sqlAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object sqlAtletaDataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object sqlAtletaFoto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object sqlAtletaRG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object sqlAtletaIdade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object sqlAtletaCod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object dspAtleta: TDataSetProvider
    DataSet = sqlAtleta
    Left = 16
    Top = 104
  end
  object cdsAtleta: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Cod_Atleta'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Atleta'
        DataType = ftWideString
        Size = 75
      end
      item
        Name = 'DataNascimento_Atleta'
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'Foto_Atleta'
        DataType = ftWideString
        Size = 50
      end
      item
        Name = 'RG_Atleta'
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'Idade_Atleta'
        DataType = ftInteger
      end
      item
        Name = 'Cod_Time_Atleta'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspAtleta'
    StoreDefs = True
    Left = 16
    Top = 152
    object cdsAtletaCod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
    end
    object cdsAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object cdsAtletaDataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object cdsAtletaFoto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object cdsAtletaRG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object cdsAtletaIdade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object cdsAtletaCod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object dsAtleta: TDataSource
    DataSet = cdsAtleta
    Left = 16
    Top = 200
  end
  object sqlTreinador: TSQLDataSet
    CommandText = 'select * from `tbtreinador`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 144
    Top = 56
    object sqlTreinadorCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object sqlTreinadorNome_Treinador: TWideStringField
      FieldName = 'Nome_Treinador'
      Size = 75
    end
    object sqlTreinadorRG_Treinador: TWideStringField
      FieldName = 'RG_Treinador'
      Size = 15
    end
    object sqlTreinadorFoto_Treinador: TWideStringField
      FieldName = 'Foto_Treinador'
      Size = 50
    end
  end
  object dspTreinador: TDataSetProvider
    DataSet = sqlTreinador
    Left = 144
    Top = 104
  end
  object cdsTreinador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTreinador'
    Left = 144
    Top = 152
    object cdsTreinadorCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object cdsTreinadorNome_Treinador: TWideStringField
      FieldName = 'Nome_Treinador'
      Size = 75
    end
    object cdsTreinadorRG_Treinador: TWideStringField
      FieldName = 'RG_Treinador'
      Size = 15
    end
    object cdsTreinadorFoto_Treinador: TWideStringField
      FieldName = 'Foto_Treinador'
      Size = 50
    end
  end
  object dsTreinador: TDataSource
    DataSet = cdsTreinador
    Left = 144
    Top = 200
  end
  object sqlTime: TSQLDataSet
    CommandText = 'select * from `tbtime`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 280
    Top = 56
    object sqlTimeCod_Time: TIntegerField
      FieldName = 'Cod_Time'
    end
    object sqlTimeNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object sqlTimeFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object sqlTimeCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
  end
  object dpsTime: TDataSetProvider
    DataSet = sqlTime
    Left = 280
    Top = 104
  end
  object cdsTime: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsTime'
    Left = 280
    Top = 152
    object cdsTimeCod_Time: TIntegerField
      FieldName = 'Cod_Time'
    end
    object cdsTimeNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object cdsTimeFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object cdsTimeCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
  end
  object dsTime: TDataSource
    DataSet = cdsTime
    Left = 280
    Top = 200
  end
  object SQLQAtleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tbAtleta;')
    SQLConnection = Conexao
    Left = 72
    Top = 56
    object SQLQAtletaCod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
    end
    object SQLQAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object SQLQAtletaDataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object SQLQAtletaFoto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object SQLQAtletaRG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object SQLQAtletaIdade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object SQLQAtletaCod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object dsAtleta2: TDataSource
    DataSet = cdsAtleta2
    Left = 72
    Top = 200
  end
  object dpsAtleta2: TDataSetProvider
    DataSet = SQLQAtleta
    Left = 72
    Top = 104
  end
  object cdsAtleta2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsAtleta2'
    Left = 72
    Top = 152
    object cdsAtleta2Cod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
    end
    object cdsAtleta2Nome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object cdsAtleta2DataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object cdsAtleta2Foto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object cdsAtleta2RG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object cdsAtleta2Idade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object cdsAtleta2Cod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object SQLQTreinador: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tbtreinador;')
    SQLConnection = Conexao
    Left = 216
    Top = 56
    object SQLQTreinadorCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object SQLQTreinadorNome_Treinador: TWideStringField
      FieldName = 'Nome_Treinador'
      Size = 75
    end
    object SQLQTreinadorRG_Treinador: TWideStringField
      FieldName = 'RG_Treinador'
      Size = 15
    end
    object SQLQTreinadorFoto_Treinador: TWideStringField
      FieldName = 'Foto_Treinador'
      Size = 50
    end
  end
  object dsTreinador2: TDataSource
    DataSet = cdsTreinador2
    Left = 216
    Top = 200
  end
  object dpsTreinador2: TDataSetProvider
    DataSet = SQLQTreinador
    Left = 216
    Top = 104
  end
  object cdsTreinador2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsTreinador2'
    Left = 216
    Top = 152
    object cdsTreinador2Cod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object cdsTreinador2Nome_Treinador: TWideStringField
      FieldName = 'Nome_Treinador'
      Size = 75
    end
    object cdsTreinador2RG_Treinador: TWideStringField
      FieldName = 'RG_Treinador'
      Size = 15
    end
    object cdsTreinador2Foto_Treinador: TWideStringField
      FieldName = 'Foto_Treinador'
      Size = 50
    end
  end
  object slqPartida: TSQLDataSet
    CommandText = 'select * from `tbpartida`'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 336
    Top = 56
    object slqPartidaLocal_Partida: TWideStringField
      FieldName = 'Local_Partida'
      Required = True
      Size = 50
    end
    object slqPartidaData_Partida: TDateField
      FieldName = 'Data_Partida'
      Required = True
    end
    object slqPartidaAdversario_Partida: TWideStringField
      FieldName = 'Adversario_Partida'
      Required = True
      Size = 25
    end
    object slqPartidaGolsContra_Partida: TIntegerField
      FieldName = 'GolsContra_Partida'
      Required = True
    end
    object slqPartidaGolsPro_Partida: TIntegerField
      FieldName = 'GolsPro_Partida'
      Required = True
    end
    object slqPartidaCod_Time_Partida: TIntegerField
      FieldName = 'Cod_Time_Partida'
      Required = True
    end
    object slqPartidaCod_Scout_Partida: TIntegerField
      FieldName = 'Cod_Scout_Partida'
      Required = True
    end
    object slqPartidaCod_Partida: TIntegerField
      FieldName = 'Cod_Partida'
    end
  end
  object dpsPartida: TDataSetProvider
    DataSet = slqPartida
    Left = 336
    Top = 104
  end
  object cdsPartida: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsPartida'
    Left = 336
    Top = 152
    object cdsPartidaAdversario_Partida: TWideStringField
      FieldName = 'Adversario_Partida'
      Required = True
      Size = 25
    end
    object cdsPartidaData_Partida: TDateField
      FieldName = 'Data_Partida'
      Required = True
    end
    object cdsPartidaLocal_Partida: TWideStringField
      FieldName = 'Local_Partida'
      Required = True
      Size = 50
    end
    object cdsPartidaGolsContra_Partida: TIntegerField
      FieldName = 'GolsContra_Partida'
      Required = True
    end
    object cdsPartidaGolsPro_Partida: TIntegerField
      FieldName = 'GolsPro_Partida'
      Required = True
    end
    object cdsPartidaCod_Time_Partida: TIntegerField
      FieldName = 'Cod_Time_Partida'
      Required = True
    end
    object cdsPartidaCod_Scout_Partida: TIntegerField
      FieldName = 'Cod_Scout_Partida'
      Required = True
    end
    object cdsPartidaCod_Partida: TIntegerField
      FieldName = 'Cod_Partida'
    end
  end
  object dsPartida: TDataSource
    DataSet = cdsPartida
    Left = 336
    Top = 200
  end
  object slqScoutatleta: TSQLDataSet
    CommandText = 'SELECT * FROM tbscoutatleta'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 408
    Top = 56
    object slqScoutatletaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object slqScoutatletaTotal_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object slqScoutatletaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object slqScoutatletaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object slqScoutatletaGols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object slqScoutatletaAssistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object slqScoutatletaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object slqScoutatletaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object slqScoutatletaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object slqScoutatletaCod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object slqScoutatletaCod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object slqScoutatletap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object slqScoutatletap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object slqScoutatletap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object slqScoutatletap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object slqScoutatletap100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
  end
  object dpsScoutatleta: TDataSetProvider
    DataSet = slqScoutatleta
    Left = 408
    Top = 104
  end
  object cdsScoutatleta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsScoutatleta'
    Left = 408
    Top = 152
    object cdsScoutatletaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object cdsScoutatletaTotal_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object cdsScoutatletaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsScoutatletaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsScoutatletaGols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object cdsScoutatletaAssistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object cdsScoutatletaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsScoutatletaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsScoutatletaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsScoutatletaCod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object cdsScoutatletaCod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object cdsScoutatletap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsScoutatletap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsScoutatletap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsScoutatletap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object cdsScoutatletap100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
  end
  object dsScoutatleta: TDataSource
    DataSet = cdsScoutatleta
    Left = 408
    Top = 200
  end
  object sqlScoutpartida: TSQLDataSet
    CommandText = 'SELECT * FROM tbscoutpartida'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 488
    Top = 56
    object sqlScoutpartidaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object sqlScoutpartidaTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object sqlScoutpartidaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object sqlScoutpartidaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object sqlScoutpartidaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object sqlScoutpartidaTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object sqlScoutpartidaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object sqlScoutpartidaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object sqlScoutpartidap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object sqlScoutpartidap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object sqlScoutpartidap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object sqlScoutpartidap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dpsScoutpartida: TDataSetProvider
    DataSet = sqlScoutpartida
    Left = 488
    Top = 104
  end
  object cdsScoutpartida: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsScoutpartida'
    Left = 488
    Top = 152
    object cdsScoutpartidaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object cdsScoutpartidaTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object cdsScoutpartidaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsScoutpartidaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsScoutpartidaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsScoutpartidaTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object cdsScoutpartidaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsScoutpartidaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsScoutpartidap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsScoutpartidap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsScoutpartidap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsScoutpartidap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dsScoutpartida: TDataSource
    DataSet = sqlScoutpartida
    Left = 488
    Top = 200
  end
  object SQLQTime: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tbtime;')
    SQLConnection = Conexao
    Left = 557
    Top = 55
    object SQLQTimeCod_Time: TIntegerField
      FieldName = 'Cod_Time'
    end
    object SQLQTimeNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object SQLQTimeFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object SQLQTimeCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
  end
  object dspTime2: TDataSetProvider
    DataSet = SQLQTime
    Left = 557
    Top = 105
  end
  object cdsTime2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTime2'
    Left = 557
    Top = 155
    object cdsTime2Cod_Time: TIntegerField
      FieldName = 'Cod_Time'
    end
    object cdsTime2Nome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object cdsTime2Foto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object cdsTime2Cod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
  end
  object dsTime2: TDataSource
    DataSet = cdsTime2
    Left = 560
    Top = 200
  end
  object SQLQScoutPartida: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tbscoutpartida;')
    SQLConnection = Conexao
    Left = 632
    Top = 56
    object SQLQScoutPartidaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object SQLQScoutPartidaTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object SQLQScoutPartidaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object SQLQScoutPartidaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object SQLQScoutPartidaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object SQLQScoutPartidaTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object SQLQScoutPartidaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object SQLQScoutPartidaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object SQLQScoutPartidap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object SQLQScoutPartidap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object SQLQScoutPartidap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object SQLQScoutPartidap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dspScoutPartida2: TDataSetProvider
    DataSet = SQLQScoutPartida
    Left = 632
    Top = 104
  end
  object cdsScoutPartida2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspScoutPartida2'
    Left = 632
    Top = 152
    object cdsScoutPartida2Cod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object cdsScoutPartida2TotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object cdsScoutPartida2TotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsScoutPartida2TotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsScoutPartida2TotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsScoutPartida2TotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object cdsScoutPartida2TotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsScoutPartida2TotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsScoutPartida2p100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsScoutPartida2p100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsScoutPartida2p100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsScoutPartida2p100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dsScoutPartida2: TDataSource
    DataSet = cdsScoutPartida2
    Left = 632
    Top = 200
  end
  object SQLQScoutAtleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM tbscoutatleta;')
    SQLConnection = Conexao
    Left = 728
    Top = 56
    object SQLQScoutAtletaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object SQLQScoutAtletaTotal_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object SQLQScoutAtletaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object SQLQScoutAtletaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object SQLQScoutAtletaGols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object SQLQScoutAtletaAssistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object SQLQScoutAtletaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object SQLQScoutAtletaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object SQLQScoutAtletaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object SQLQScoutAtletaCod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object SQLQScoutAtletaCod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object SQLQScoutAtletap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object SQLQScoutAtletap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object SQLQScoutAtletap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object SQLQScoutAtletap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object SQLQScoutAtletap100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
  end
  object dspScoutAtleta2: TDataSetProvider
    DataSet = SQLQScoutAtleta
    Left = 728
    Top = 104
  end
  object cdsScoutAtleta2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspScoutAtleta2'
    Left = 728
    Top = 152
    object cdsScoutAtleta2Cod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
    end
    object cdsScoutAtleta2Total_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object cdsScoutAtleta2TotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsScoutAtleta2TotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsScoutAtleta2Gols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object cdsScoutAtleta2Assistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object cdsScoutAtleta2TotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsScoutAtleta2TotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsScoutAtleta2TotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsScoutAtleta2Cod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object cdsScoutAtleta2Cod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object cdsScoutAtleta2p100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsScoutAtleta2p100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsScoutAtleta2p100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsScoutAtleta2p100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object cdsScoutAtleta2p100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
  end
  object dsScoutAtleta2: TDataSource
    DataSet = cdsScoutAtleta2
    Left = 728
    Top = 200
  end
  object SQLQRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT * FROM scoult.tbpartida, scoult.tbtime, scoult.tbscoutpar' +
        'tida WHERE scoult.tbpartida.Cod_Time_Partida = scoult.tbtime.Cod' +
        '_Time AND scoult.tbpartida.Cod_Scout_Partida = scoult.tbscoutpar' +
        'tida.Cod_Scout AND scoult.tbtime.Nome_Time LIKE '#39'%'#39' ORDER BY sco' +
        'ult.tbscoutpartida.Cod_Scout ASC;')
    SQLConnection = Conexao
    Left = 808
    Top = 56
    object SQLQRelatorioLocal_Partida: TWideStringField
      FieldName = 'Local_Partida'
      Required = True
      Size = 50
    end
    object SQLQRelatorioData_Partida: TDateField
      FieldName = 'Data_Partida'
      Required = True
    end
    object SQLQRelatorioAdversario_Partida: TWideStringField
      FieldName = 'Adversario_Partida'
      Required = True
      Size = 25
    end
    object SQLQRelatorioGolsContra_Partida: TIntegerField
      FieldName = 'GolsContra_Partida'
      Required = True
    end
    object SQLQRelatorioGolsPro_Partida: TIntegerField
      FieldName = 'GolsPro_Partida'
      Required = True
    end
    object SQLQRelatorioCod_Time_Partida: TIntegerField
      FieldName = 'Cod_Time_Partida'
      Required = True
    end
    object SQLQRelatorioCod_Scout_Partida: TIntegerField
      FieldName = 'Cod_Scout_Partida'
      Required = True
    end
    object SQLQRelatorioCod_Partida: TIntegerField
      FieldName = 'Cod_Partida'
      Required = True
    end
    object SQLQRelatorioCod_Time: TIntegerField
      FieldName = 'Cod_Time'
      Required = True
    end
    object SQLQRelatorioNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object SQLQRelatorioFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object SQLQRelatorioCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object SQLQRelatorioCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
      Required = True
    end
    object SQLQRelatorioTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object SQLQRelatorioTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object SQLQRelatorioTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object SQLQRelatorioTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object SQLQRelatorioTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object SQLQRelatorioTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object SQLQRelatorioTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object SQLQRelatoriop100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object SQLQRelatoriop100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object SQLQRelatoriop100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object SQLQRelatoriop100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dspRelatorio: TDataSetProvider
    DataSet = SQLQRelatorio
    Left = 804
    Top = 104
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 804
    Top = 153
    object cdsRelatorioLocal_Partida: TWideStringField
      FieldName = 'Local_Partida'
      Required = True
      Size = 50
    end
    object cdsRelatorioData_Partida: TDateField
      FieldName = 'Data_Partida'
      Required = True
    end
    object cdsRelatorioAdversario_Partida: TWideStringField
      FieldName = 'Adversario_Partida'
      Required = True
      Size = 25
    end
    object cdsRelatorioGolsContra_Partida: TIntegerField
      FieldName = 'GolsContra_Partida'
      Required = True
    end
    object cdsRelatorioGolsPro_Partida: TIntegerField
      FieldName = 'GolsPro_Partida'
      Required = True
    end
    object cdsRelatorioCod_Time_Partida: TIntegerField
      FieldName = 'Cod_Time_Partida'
      Required = True
    end
    object cdsRelatorioCod_Scout_Partida: TIntegerField
      FieldName = 'Cod_Scout_Partida'
      Required = True
    end
    object cdsRelatorioCod_Partida: TIntegerField
      FieldName = 'Cod_Partida'
      Required = True
    end
    object cdsRelatorioCod_Time: TIntegerField
      FieldName = 'Cod_Time'
      Required = True
    end
    object cdsRelatorioNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object cdsRelatorioFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object cdsRelatorioCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object cdsRelatorioCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
      Required = True
    end
    object cdsRelatorioTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object cdsRelatorioTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsRelatorioTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsRelatorioTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsRelatorioTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object cdsRelatorioTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsRelatorioTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsRelatoriop100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsRelatoriop100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsRelatoriop100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsRelatoriop100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 804
    Top = 200
  end
  object frxDBRelPartida: TfrxDBDataset
    UserName = 'RelPartida'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Local_Partida=Local_Partida'
      'Data_Partida=Data_Partida'
      'Adversario_Partida=Adversario_Partida'
      'GolsContra_Partida=GolsContra_Partida'
      'GolsPro_Partida=GolsPro_Partida'
      'Cod_Time_Partida=Cod_Time_Partida'
      'Cod_Scout_Partida=Cod_Scout_Partida'
      'Cod_Partida=Cod_Partida'
      'Cod_Time=Cod_Time'
      'Nome_Time=Nome_Time'
      'Foto_Time=Foto_Time'
      'Cod_Treinador=Cod_Treinador'
      'Cod_Scout=Cod_Scout'
      'TotalAssistencias_Scout=TotalAssistencias_Scout'
      'TotalChutesCertos_Scout=TotalChutesCertos_Scout'
      'TotalChutes_Scout=TotalChutes_Scout'
      'TotalChutesErrados_Scout=TotalChutesErrados_Scout'
      'TotalPasses_Scout=TotalPasses_Scout'
      'TotalPassesCertos_Scout=TotalPassesCertos_Scout'
      'TotalPassesErrados_Scout=TotalPassesErrados_Scout'
      'p100PassesCertos_Scout=p100PassesCertos_Scout'
      'p100PassesErrados_Scout=p100PassesErrados_Scout'
      'p100ChutesCertos_Scout=p100ChutesCertos_Scout'
      'p100ChutesErrados_Scout=p100ChutesErrados_Scout')
    DataSet = cdsRelatorio
    BCDToCurrency = False
    Left = 800
    Top = 248
  end
  object frxRepRelCompletoP: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42466.635480439800000000
    ReportOptions.LastChange = 42466.635480439800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 296
    Datasets = <
      item
        DataSet = frxDBMedia
        DataSetName = 'Media'
      end
      item
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Memo19: TfrxMemoView
        Left = 140.000000000000000000
        Top = 88.000000000000000000
        Width = 80.000000000000000000
        Height = 16.000000000000000000
        Wysiwyg = False
      end
    end
    object Page1: TfrxReportPage
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Picture1: TfrxPictureView
          Width = 143.622140000000000000
          Height = 132.283550000000000000
          Picture.Data = {
            0A544A504547496D616765054D0000FFD8FFE000104A46494600010101004800
            480000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080101012303012200021101031101
            FFC4001F00010003000105010100000000000000000008090A07010304060B05
            02FFC4005E100000060201020104080F0A0A0709000001020304050600070809
            1112131415210A173138415157961618192236586171767781B2B5D5D6232427
            33567397B6B7F0323742657492A1A5B1C12639529194B4D4253A4346537295D1
            F1FFC4001E010100020203010101000000000000000000060705080103040209
            0AFFC40056110002010401020204040C100C0700000001020300040511061221
            0731134151610814229115323436527175A1B2B4D1F009172335375556627476
            81929495B1B3164445535463739396B5D3E11842466472D4D5FFDA000C030100
            02110311003F00DFC6318C5298C6314A6318C5298C6314A6318C5299D3B00F7F
            57BBDBBFE4F733AE440E65735B4DF09B5929B0369C92ABC8C89D6634CA34399B
            AD6ABA4C244218ECA21A2CB229A4D19115497979878A231D14DD44FCB2AA3C74
            C193CF35E5E5AE3EDA6BCBD9E3B6B5B74324D3CAC1238D079924FAC9D0006CB3
            10AA0920565F0380CCF28CC63F8FF1EC6DDE5F3595B98ED31F8EB289A6B9BAB8
            90E951117C82805E4918AC7146AD248E91A33097A63149DC4E72943E0F108140
            3F288867641D36F705CA023FCEA61FECF1660EB93BD63F99BC8694916D5FBDBD
            D17405567058CA86AB7EE61E5936463981BFA6AFC9F90B5C9481501049CAD1AE
            ABF10E4DE2513826C3D80B5DEAEE9DC6BC884C2FB6765AD2C513092515BDDA54
            9128987C46107C79533901318004C20A87710EE3DC43296C8F8E783B6B868B1F
            8BBCC8428C54DC34B1DA23807E9E24649A4656EE47A458D8FAC0DF6FD10E23FA
            1A7E24E5F1515F72AE67C7B8A5F4F0A4AB8982CEE73D716E5C6FD0DECF1DCE3E
            DA2993B0716D2DE47D5D416560A0BFD36CAA10FF00E01C87FF00ED301BFE0239
            FD67CFD78EBD5779B3C74948E346EDD9CD93526AB945ED1B6D3C79778A7ED3B8
            78DB359A92726B6418109E2169E869E66D515BC0670C9DA043B5535F3C04EA37
            A7F9DB4F70AD74A34DDAB5B62DDC5EB564ABC23A928922A7237F4C4148022D53
            B255D77660451956ED9B3968AAADDB4C46C5B872CD37330E27E2571FE5928B4B
            7696C723D24AD95E742B4DA00B7C5A452526E91B3D3B49080CDE8FA54B0A07C7
            2F820F8ABE06D9B6772B059F23E242458E4E478033CB158B4AFD108CB5A4D1A5
            CE3C4ADA55987A7B30EF1C46E84B2246D62381100F58E558F3E39CB6BE3FCFC2
            EB1D5ECA2FE8BE4A152B1CDD8A61B8C8B5858C76F1E328E651D1E55934D79674
            AC7BB70E557E53B666C41A79368F1590F2B1F595F5497979F28D1DF32A9FFA97
            FBFE40C8472FF844F00E1B9DBCE3F7C32F7B7F60C23BB38EB486582198AAB342
            D24F756FD5220203F42B2A9DA96EA056B46331E23F1DC25FCD8EB93793DC40C1
            6636B0472468E403E8CB49345B75047574860347641040D41E332F9F5497979F
            28D1DF32E9FF0077FCCBF77FBF60C7D525E5E7CA3477CCBA7FDDFF0032FDDFEF
            D8322FFF008B3F0DFF00D0393FF41B1FFF004BF3D1F76F17FA6E717FF3196FE8
            D6FF00FDBF7FF6FB0D6A0F199B6D79D5139195FB247BCBDBC82BED63CE912CC4
            42B01190920661E3ECE0D13230C8C791BBF29044E819FB77ED0E72F93511029F
            CA92E1B935CAD89D21A0A336ED798A5627B74083654166E8544583B7D638A5E6
            D93D95144E57048E670ED1DC82E8B7311676AA484711C341760F50B078B78E1C
            17966173D9CB3B9BCB3B6E3900BACA4390B758AE61B7656F472C6914B324AB23
            23468B1C8CE64D02AA597722C4F38C065EC6FEFE09A6861C62096ED2E62092C7
            130255D551E40E1882802B16EB1D240DAEE61E3330AF7A9672E1D3A59746F50B
            1E928713119B3A6D68CD9B80FB89A267F1EF5E1881EBEC2BBA594F8CE39E37D5
            25E5E7CA3477CCAA7FEA5CAFCFC2CBC360CCA2C793305240616167D2C010363A
            B221B47CC6C6C8F56FB08E9F1738BEC8F43953A3E62DA0D1F2EE37760EBED807
            5E607715A83C770EE01F1FB9F9332F9F5497979F28D1DF32A9FF00A97EEFF7EC
            19E531EA5DCB768E9172BDE2124D248E063B17D4CAD91AB9287BA9AC68F62C1E
            1483F08B776829F11C3395F858F86CCCAA6CB92A06600B3585910A090093D391
            27437B3A0C740E813AAE478B7C5C900C395009036D6D0686C8EE75764E86F674
            09EC740915A79C6462E25721D0E4BEA18FBE9A352859D6724F2B96B8A6EA9D76
            6D2C11A8B470B9982AAF758CC5F31908F916C9AE265DA91E799AAB39336174BC
            9DCD8CC3662C33F8AB0CCE3261716192B68AEED6600AF5C52A875DAB00CAC01D
            32B00CAC0820106AC7B3BBB7BFB5B7BDB590496F750A4D0B8D8EA49143025480
            410080411B07608A6318CC9D7AA98C6314A6318C5298C6314A6318C5298C6314
            A6318C5298C6314A6318C5298C6314AFCE9794630915233124E91651F16C5D3F
            7AF1C1CA9A0D9AB341470E1C2CA1840A9A48A499D450E6100290A6111000EF9F
            3B5E7A72DACFCCBE46DD36A4A3D79F420D9F3BAEEAD81580E9235ED7D1AF1C04
            2905A1BF899499298F3D3EA185458F2D20BB705018B462837DCBF5057EF62F84
            3CAC7D1CE5566F51D09B53C83A6E7326BA263D2A69313A4A9440E9A80539BC2A
            104A7208F888629800C1F39BCD78F1DB2F751C788C344EC96D7026BDB8507426
            68D963855B476550FA46E93B52594E8B28AFD5EFD0CCE0785BDBAE7DE215EDBC
            57398C53E3F8F621E455636115DC725EE42788329E99AE425A4225521D238A54
            042CCE0B18C66B757EBD5339AF8EDBEAFBC66DC748DD1AE24566361A6CBB678A
            B42B851BB2B0C29D42126EAD30040382F0F3F1C2B47BC20A673A1E548F9A0A4F
            DA35708F0A633D369753D8DD5BDE5AC8F0DC5B4A93C32212AE8F1B0656523D60
            8FB558ACEE171BC8F0F93C1662CE0BFC5E5EC6E31F7F67711AC90DC5ADD42F0C
            D13A30D1564761ED1BF3DF7AD42F38F66D73746D2A56DBA8AAAAB5BD8FA4F585
            CA185C0148E92656089712246AF53218E545F333383B37C801CC283B41644C3E
            220E432CE31D1D607D3BA4354A0F965DC1ABD5F9EAFB655C18E730316FB06E92
            0D114CE7EE2641AA5240D1028089114902B72784889485E4ECA03C42BF7CAF32
            CFE4A550B2DF5FC975228F2579C2C8E07B831EDAF56BD95FC5C7C2178947C13C
            6EF14387C2ED2DBF1EE699DC5DACAE76F25ADADFCD1DBBBF73A66842161BEC76
            3D54C63190DAA6E9972FCE2F78A7117FD0B5AFF64EFF0029A32E5F9C5EF14E22
            FF00A16B4FEC9DFE5E1E18FD62F8BDFC5DC77FCC92A7DC53EB7F9A7DCDB3FC6D
            6A9A318C651F501A6318C52B42BD233FC42DFBF1BB2FFD4DA2E5ADE552748BFF
            0010B7EFC6ECBFF5368B96B79FAD7E08FEC59C37EE52FF007B2D6DEF07FAD3C1
            FF00024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C6318A5318
            C6294C6318A5318C6294C6318A547FE55EB391DCDC6DDE7AAA1D60425B606AAB
            E54E2973000912939CAC4A47479D4037A8C883D7087962F7288A5E300390440C
            5F9B03D64F235E3B8E906AE18BF60E5764F993B4546CED9BC6AA99072D5D3754
            A455070DD64CE8AC8AA42A89284310E5298A201F51E30018A2510EE0601010F8
            C043B087FDD98FCEB4DD34EC7AEAF769E5CE97AEB995D617378B4EEDC828940C
            E1CD0ADAF5631E52E00D1120AA6A9D99C1FD2330E8855420EC0BBF74ECE8C549
            352B0A3FC68E2F7795C7D9E6EC6379E4C48992EA18D4B39B4959584CAA364881
            D4FA40013D0E5CE9236D7E917E87778D181E11CB3907875C96EE0C6DAF397B1B
            9C1642EA4586DD73D64B24031D34AE422BE5209635B4672AA6E2D96DD7AA5B98
            96B3B78C63355FCBCEBF6D410C03290411B04104107C8823B107DA298C65C774
            9FE9AF6AE5AECD81DABB1A01F45F1C28B30DE5645F48B214DB6D29A877C9A88D
            2E141D1008FE045E3732772946E459B24CD1735F6EB252CF85CC5E630582C872
            1C9DAE331D0B4B34F22876504A4316C75CD330042471A9EA763DC68803640A80
            789DE24F18F0A3876639972BC84365618CB5964862678C5CE42F0A37C571F630
            B329B8BBBA97A638A35EDB62CE5635665F7561A96574C6AED0B539E4956D3B29
            A6ABD7E946CE1033670CD4D913B67BCB18F72D9500550771B113B1D1CF115801
            64DCB558A7290C1E0278996ADD55755DA2136F406CC4A25DAB48B053E1EBE498
            41013B08D9E82712291E21DA891448C4CE235660EA37CE852090ED209B3057D1
            CE412AA9CA1BC53C05DE0B9EF22C63DADC2476F78C2D99E27066B6645304CA74
            4324B190FD4A4EC923ED7F1A5E35E7F27CBFC56E79CB32903C57BC9B936573B3
            22AB145394BB92F02C474498944CAA9DB617434354C63195EFA09FFCCCBFEEDF
            F2555DE8DFEC1FF9A7F27BC7CF4CB97E717BC5388BFE85AD7FB277FF00FEB2A1
            6B359B05CA7A2EAF55887F3D609B769B18B898D41474F1E3958DF5A44D3200F8
            484280A8B2AA09516E89145D751345339CB7D7CE7D0D755F863AAEBB011EE2C1
            29A592A429626B18928EDC2D0F094C7B56959166D5148CE1C9593B74D5F2FE4D
            20F211647AF5429536C712DFFE13E132D79C0BC5D92DB1F752A3E02CA242B0C8
            4492C375F199638BE4FEA8E90C6D232AEC81AD8DB0DD8DC3ECAEE6E3BCCCC56F
            3386C7DB22908DA668E6333AA76F94CB1A962A3BEB5D8922B3EF8C6328036F38
            241865047620C6FB07D87E4D575E8E4FB07FE6B7E4F78F9E98C6302DE7274219
            493D8011BEC9F67D2D3D1BFD83FF0034FBBDDEF1F38AD0AF48CFF10D7EFC6F4B
            FE4FFA1946FF00F9F972D6F2BA7A64EB0B5EB7E3C385EDD16EE19E5E6E72D718
            F8C904146AFD08671130308C1576D1729166E77DE835A41B915294C762E9A2DD
            8015000B161001F50E7EB7F839677361E19F0FB6BC864B7B84C442CF0CAA5244
            1296953A958065251D4E88046F4456DFF0D865B7E2F848A6468E45B188B23021
            97AF6CBB520104AB03A206BD74C631966549A98C6314A6318C5298C6314A6318
            C5298C6314A6318C5298C6314A6318C5298C6314AE9DFD5DC7D5DBD63F0F6CAE
            2E41F51BD2DA8EDB33AD895E9BD91351265236CC48808C460235E18A64DE42B8
            919171FBF641B14DE4E41BB462E5A3658CA3172F137EDDDB46F632B8F645610F
            74125043FD41CC616C072BBDBE5D9E3A54EBB9776EB23972BA83DD45975E65EA
            AB2A71F84EA28731CC3F08888E6B9FC223C4FCFF0087388C1A71DF8BC57B9ABA
            BA47BBB9852E043059240CCB1C320319695AE14167560AA8405DB750AE7C44E5
            792E2F698F6C5324575773CBAB865EB6856DC44DFA9A9F921D9A45D31DE829D0
            D9D8F27931AA3813BCE59FDAF5DEA7DA1C7AB6492AE5CBD2D1A5EB12D4378F9C
            980E2E96A14991B231BE0376F0B3AA4D5663840CA18ECCEB1C550AFD3F0CE241
            D8112DA722761DC7C4E4FAF1B26EC03BFA841916FEAA22221DC440640BD843B7
            71EE22132F19A1F90F13F9364EE5EEAE8E3C4D212CE6DF1F6F688CC744931DB2
            471F513B24F4ECECF7F3353BE1FF00A223F0B1E15898B098AF12E7B9C7DBC622
            B68F338BC56667B7455E98D22BBC8DA5C5D7446A02C71B4CD1228D2A6BB57F1C
            78E3EF087574AC658F71D476EF202623542AE5837F235AA2EBB70E13382A828F
            AB318E26A7648A81C8503347D715625E904E94845B841414434DDC47E69E85DB
            8BC66A2A35557D53270D0E56F55A42F1F111F04E21E25B0F78EAA9E0CE11E42C
            4304415F4499A46AA9B14D55D8B670D59BC51B6653247F109CB869C9DD1CB365
            8E8AA3B0E05B8A898F84C283C5C59BA4847FEC2ED57590503FCA4D4317E1CB23
            C2FF001BF9762392E0B16B1E2E5C66472965637B02E3EDE19E58AEA78E02E6F2
            245B96922EB2F1FA4959037D32904835F726F85278D3E2DF26C5DCF891CC2F39
            4A35E450476976B1416368B7322472B5858DAA41676523020B35BC09D7D2A24E
            B000AD15F29795BA7F8E9111EC36134736998B324B9A369314C98C8BE7B1E81C
            1371212249170DA3984491731102ACF56F2CF16058B1CD1E8B37BE6D5C1F546B
            8D5F6A9B1FFF001F47FBBFE6BFBDFDC7D51F7AA3B95D7E51AA92CA9D44D9EBEA
            A366A438F704103AF32ECC927F1105CBA70B887FF51638FC395CD927F163C77E
            6763CEB3B89C5A626DAC30F76F8F816E315657D3B880AABCB2CD7914CDB79031
            554E84552ABA66059A07CBBC40CDDB67EFECACD6D22B7B298DBA092CE0B891FD
            19019D9E6473B2C0B00BA0ABA1A3EBB9BFAA35C6AFB54D8FFE028FF77FCD7F7B
            FDBF1FA9F546B8D5F6A9B1FF00C051FEEFF9AFEF7FB7E3F5532632B6FD3F7C41
            FF003B82F57FE9DC3FAB5FFB4F77E7DF719FD313927D9D87F56D8FBBFD47B855
            FA6A0EA47C6535A59C42FA997D488CD384589AD0D226B478A6C654FE148F38B4
            315A4835620AF8087729B37A8A026F2EEBCDDAA6B2E9DBBA6749C244508622A8
            AC429C825F09C8621CA0202530770314C5101010F50808087A8731299B09E39B
            A70F74169678ED63B874EB55EBF70E17507C4A2AB2D548951554E6F84EA1CC27
            30FC26111CDABF837F8A39FE76D9FC4E7E2C7B9C6C36D756F716765059752CEE
            F1CB14D0DBAA42DDD559196356FA60C5BE4EAD8F0D395E473E3256B905B726D1
            61962921812025656646474882A103A54A90A081B0C48D6BD95E6A7D6324E567
            AFF5F52DEBB707151774EAAF08BAEB283EE9D559562651438FC26398447E11CF
            1BDA6B537C9AD0FB7C1FF44603BFE51F47FAF392C4007D438EC1DC07E2F73F2E
            6CC1C2E2092CD8BC796624B1F89DB9249D1EE4C7B3E437ED3EAF3AB34D9DA124
            9B6B7249D92618C9249077F4BED02B8D3DA67537C9AD13E69407EAFCF2D8EA9D
            6514E917F1D40A6B17AD8E0A3776CEB108DDCA0A07B874574589154CE1F01886
            2887C79C81D83B88FC7EEFE4C00007A830B85C3AB065C5E3D4A905596CEDC152
            344104460823A46883BDD059DA0208B6B7047704431EC11AEE0F4FB857400028
            001400003DC000EC19D718CC900000000001A0076000F2007A80AF4D318C6734
            A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A631
            8C52BB4BFF0010B7F34A7E61B317776FB33B77E13CFF00E95779B445FF00885B
            F9A53F30D98BBBB7D99DBBF09E7FF4ABBCD2BF862FD43C27F8466BF031B54978
            CDF5360BFDADFF00E0DA57AC6318CD13AA129921F895EF99D1BF8C9AC7E904F2
            3C6487E257BE6746FE326B1FA413C94708FAF1E2DFC60C47E3D0565B03FAF788
            FBA565F8C47522FAA17BE99FFE02D47F36472BB72C4BAA17BE99FF00E02D47F3
            6472BB733FE2EFEC97CCFEEEDF7F7A6B21CCBEBA339F742E3F0CD318C6571519
            A66C0B8D3EF79D1DF8A5D77FD5187CC7EE6C0B8D3EF79D1DF8A5D77FD5187CDC
            AF81EFEBDF2FFB9B63F8C49575F833F5666FF835AFF7AF5CDD8C6337DAAFDA63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314AEDAC1DD15403DD14CFDBEFF847B7FB7318FB2239
            E44EC4BE45482076CFE32E76862F5BA8020745D349B7CDDC24601EC2064D44CC
            51F57C1F973677F18087ABFE3F1FAB2B73955C71E13D9ADBF455B8AE513AB6EB
            3A8A6E1DBB637686ABC95912404AD48F9C42CB26F9B3D3A7E4C1BAD28D62C8E1
            402148EDD2BE453F27AE7F08AF0E6F79E60B0D716193C5E3A6C25D5CBB0CB5CA
            D9DACD0DEA42ADABA60C892A3C11F4AB00AE19BE5750556AE3C47E353F20B0B2
            782EAD2D9EC259598DE4A2085D271186FD54860AEA635E90400413DF60039B3C
            65CCFD2B9D353ED9777FD25D23F66B1F4AE74D4FB65DDFF49748FD9ACD37FD22
            F907EE9782FF00C4F65F9FAC7CFF003D33FE00644FF95B8F7F5B41EEF77BFEF1
            F655336495E1D46BC95E50E906B1E81DCAE9DF625F9D32008895A450AB2920B8
            8000F623660CDCB850DEB002246111000EF9609F4AE74D4FB65DDFF49748FD9A
            C9D3C48D07C49A1AF256CD0D6088D856049008D7F6C35B632DD2F12D9DF753D1
            E29C60A2CA0C5E024632A09C6B278F1227935955904C842CCBC3FF0001B36FCB
            F033DC723E2525BD8E4AD2FE78F1F9A82FEEE48ACE78E768E1B7847533C8102E
            C90ABD5D449034735C7BC3EBEFA338F964CA619A3B6B986E644B5BE8EE666582
            4490AA45180496202EC9001277BEC2AA73AA5C73C67C9E074E103A6DE535E559
            D315443B9174507734C15314DEE789374D564CC4EFDCA004308014E511AE0CD6
            672934F71E368541A3BDFCE616023601639622E921606B537906E1F8A6559BB4
            9B74BA0D8C49014122A91AF4AEDA3A511455068672DDBAA95660F173A6A771ED
            C9777DBE0FE12E91FB321FF00FBD999F16FC0DCCDD73ACD65AD390F1782D7317
            4D908A1CAE621C75E4467D19124866036AB2F5847462193A490A76A3DBCBF81D
            ECF9EBEBD8725898A1BE94DCA25EDEA5ACEA64D17568DC770AE4F4B0276BA274
            762A99B19733F4AE74D4FB65DDFF0049748FD9AC7D2B9D353ED9777FD25D23F6
            6B2B4FD22F907EE9782FFC4F65F9FAC7CFF3C63FC00C89FF002B71EFEB683DDE
            EF7FDE3ECAA66CD88F1F635EC368BD3B112481DAC8466B1A2307CD95289546EE
            DA55A290708285100103A4B2674CE02002062887C195E1A2B8B1D3E0D7B8A714
            FD9517B5ACEC5C15FC4D667360D7660A772C4A2E4AE53AEC4B58952608D013F3
            95117684832279203AEDC4A5ED96CABAEDD93655C385D26AD5B2465555D65089
            A28A29104EA2AAA8A0948421085318E731808520098440004736AFE0E5E195EF
            074E419AC96630D7FF004463B7B58570F7C97D0431DBB3CB2BCF70A162576665
            0A80B74852588D8156CF86DC5EE302991BCB9BCB1B9F8D88A28C594EB711A2C4
            59D9A4994050C4B01D237A00927C857938C8E8EB973C6564E156ABEF3D622B22
            61229E46E306E530307BA5059BBD55138947EB4E0450DE130094DE1300943C7F
            A70F8C1F2E7ADBE7544FFEA73611B9971246646E4D8156525595B2B621958100
            820CFD8827441F5FDA35609CCE2012A7298F520E8A9BDB7041F5823D27623D95
            24FB87710F8BDDFCB81001F50E46CFA70F8C1F2E7ADBE7544FFEA73C969CB7E3
            34838499B7DE5AC4575CE09A455AE306D8863987B149E55C3E4520318DD8A428
            A802730814A02610012732E25232A2726C0B3310AAAB95B12CCC74005027D924
            9035AD935C8CCE218855CA63D9988000BCB72492740002424924E801522B19DA
            45649C249AE82A9AC8AA42A89AA91CAA26A10E50310E439044A6298A206298A2
            20251EE1DC04073BB924565750CA432B00CACA410C08D8208EC411DC11592041
            1B0760F7047911EDA6318CE694C6318A5318C6294C6318A5318C6294C6318A53
            18C6294C6318A5318C6294C6318A576D5112A4A983DD2A6710FBE05110FF0086
            6397775CE77606DCD8B6DB23E70FE525ADD3A7328E1532BE6CCDB482ED236390
            1376F0338B8F41B47B248A052A4D5B24400FADCD8CAFDFC8ADEBFF00E129DC3E
            3FAC3662EEEDF6676EFC279FFD2AEF34C7E1857571162B86DB4734A904F79959
            66895D95249208EC842EEA0E99A312CA137DD43B6B5BAA57C659645B4C244AEE
            B1C93DEBBA2B10ACD1A5B042C07625448FADF71B3AF335EB18C63343FD23FD9B
            FF0038FE5F70F9AA82EA6F69F9CD325A7072EB3D4AE506A85611EAED92B158DB
            D4E6DB26A9936F270D3FDD9AED1EA402245D241C19AC8A0450A209BE64D57209
            5448862C4BC90FC4AF7CCE8DFC64D63F482792EE0377736DCDB8A4D04F34522F
            20C4F4BA3BAB006F61561D8ECA9525483D88EC411E799E3D2C91E7B0EE923AB0
            C9D9E995883A371186EFDFCC13DBC8ECFBEA5C7557BA4F4C6FF85A7397CE3E87
            6A94989751B160AFEF324A4EBB91712929E4400A1E76E5BA11AC4E7318DD908E
            4813F27E35BC75819625D50BDF4CFF00F016A3F9B2395DB99FF192EEEAE7C4CE
            62F35C4B2B2666E614EB918948A02238A31B2748888AAA00D2803B0EC4E439AC
            D2CBCA734D248EE56FA58C75313D2919E94503D41540000F5014C6319597A47F
            B37FE71FCBEE1F3545BA9BDA7E735E647C8BF897ECA562DE398E928D76DDFC7B
            F64B28D9E327AD1522ED5DB5708988AA0E1BAC99154564CC53A6A14A72980C00
            397B3CF4DB56F90E11E95924E45662EB6E975FAD713B4315109064FE8CF6CEFA
            347C9109E06AEA61BB15962220911441A99A1C866CE1648D435972FCE2F78A71
            17FD0B5A7F64EFF2FAF0AF257D6DC0BC5F482EEE224FF07EC1BA5246550D25E9
            824651B014B412C91B11DCAB11BF55589C46E6E22E3BCD024D228FA1D6DAD31E
            C5EE3D13687A8B46ECAC47A8FAAA9A318C650DE924FB37FE737E5F70F9AABBEA
            6F69F9CD318C604920EE1DC11E44330D7DFF0070F9A9D4C3C98FCE6B483D2BAE
            B3F6AE393F8A9C7EBBF428F7E99AC4019C282AA8D20C216B936DD80287EEA190
            68EE6DF24D087398AD9A790688F81BB74124ECBFB7C3F17FCF2A8FA46080686B
            F88FCAE4B7F5368D96B99FADDE0CDC4F75E1870E9AE2579A5387850C921EA765
            899A3452C7B9E944551B3BD01DFB76DBFE192C93716C2492BB3B9B1881662492
            1768A367BF650079EFB5318C659F528A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C52BB4BFF10B7F34A7E61B317776FB33
            B77E13CFFE95779B445FF885BF9A53F30D98BCBB8085D2DE0202021689F01010
            EC20212CEC040407D6021F086695FC317EA1E13FC2335F818EFF00BD525E337D
            4D82FF006B7FF83695EAF8C63344EA84A6487E257BE6746FE326B1FA413C8F19
            223892023C99D1BD8047F849AC8FA83BFA81FA6223F7803B88FC401DFEF4A384
            7D78F16FE30623F1E82B2D81FD7BC47DD2B2FC623A915D50BDF4CFFF00016A3F
            9B2395DB9627D50804394AF44404006895210EE1EE876922F70F8C3B808770FF
            0028043DD01CAECCCFF8BBFB25F33FBBB7BFDE9AC8732FAE8CE7DD0B8FC334C6
            3195C54669972FCE2F78A7117FD0B5A7F64EFF0029A32E639C4530705388DDC0
            43C2CF5A147B947D461D4F21D807E21F50FA847BFA87E21CBC3C31FAC5F17BF8
            BB8EFF0098A54FB8A7D6FF0034FB9B67F8DAD533E318CA3EA034C6318A56853A
            45FF00887BFF00E3725BFA9B46CB5CCAA4E919DFDA1AFE3D87B0EDD97001EDEA
            110A6D1447B0FB9EAEE1DC3D5DBB87C6196B79FAD7E08FEC59C37EE52FF7B2D6
            DEF07FAD4C1FF024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C
            6318A5318C6294C6318A5318C6294C6318A57430018A628FB860101FBC21D872
            92791FD2E6D96BD8D62BB69BB5D4D9C45B655F4F3FAD5C17978D3C34A4A383BB
            91245C845C4CE11EC7B87CB2EE5B3770D581E3D3541990EE53453506ED543780
            873FFD9218DFEA808FFCB32FFC9CE6BEF1D81B4EDC8D6B61DAE8D4A83B04AC2D
            62169D37235A0346C5BD598A32328F221662FE41F49F9B03E70478E56419A8B8
            B46844D24C04FAF3F088C9787D61C73191F3AC4DE659A7BD90E220C74BF17BC8
            E58D14DCCA2E4B2AC70F4346B22B0903BB47FA9315EA5AF3C44BBE396D8DB55E
            41673DEFA59DFE251DB37A29D5D147A57594B28540AC81D5BA831643D07A76BC
            8FF528B925FCA4D41F39AD5FB0D8FA945C92FE526A0F9CD6AFD86C859F4C3EFF
            00F973DC5EAF73F84DBAFABFDF78FA61F7FF00CB9EE2F57B9FC26DD7D5FEFBCD
            33FA39E05FEE33977F5E5BFF00D2FCF67DDAA5BE3FC03F68F33EAFF1F8FF007B
            FBDFB7F7FDB534FEA51724BF949A83E735ABF61B26270FFA704DE9DD8B19B536
            C59EBB332D58F385AB15DAA1A49DC6A526E9B2ACC25A525251844ACB1D9375D6
            F338F463412076A24F4EF47CD4A8AB4D1F4C3EFF00F973DC5EAF73F84DBAFABF
            DF79393827CC9DC4C375D435C5EEED3F7BA65F6442BE74ED724EA76521A59D22
            A8C44846CBC81DCCA010CFCA8B276C967676476AE945C112386E929938F0E33D
            E05AF33E3E22E25C86DAF1F256B1E3EE721918EF6D2DEFDE545B49A6823F424A
            ACE558312E11B4C63602B3BC6B21C0466B1E1311928676B9856DA5B9B959E18A
            E199442EF1A95240935DC8600FCA2A6AC3B9B9C163F259FC35EA99628CAD6C08
            58A0805D39D23C34158219376E1EB141D386293A7514F235CBE7EA26F508F7E2
            ED1742D5C220545B2C85707D4A2E497F293507CE6B57EC3648CEA55CB4D9F43B
            C4469BD67637F4C689D6D9D8AD13D06B99A4F3F732AEDEA4C621AC81132BA8A6
            8C9AB04DEACE235745D3E51F91BA8AA68355137553FF004C3EFF00F972DC3FD2
            65D7F5DE667C61CEF82839DE622C8717CE5FE5E19963CB5E62EFD2C6D67BC48E
            30FD3149E93AA4403D1CAEA9107915890E4FA43EDE6790E0DF47AF12EB137F73
            7B1BAA5E4F6B70B6F0C932850C42B16EA65D74BB0440CEAC7449EA3353EA5172
            4BF949A83E735ABF61B1F528B925FCA4D41F39AD5FB0D90B3E987DFF00F2E7B8
            BD5EE7F09B75F57FBEF1F4C3EFFF00973DC5EAF73F84DBAFABFDF79577D1CF02
            FF00719CBBFAF2DFFE97E7B3EED457E3FC03F68F33EAFF001F8FF7BFBDFB7F7F
            DB561BAF3A4B6D175668E1D9B79A3C65492748AB2A5A7BC9C999E7AD933F8D56
            6CCB295F8462C54745282059055677E682A0B8060E8520415B66E42F18EA3BDF
            4BA7A88EB8D65083089754B956C819E056A4E059AB1F18AF991DC23E7CCFD18E
            1DC5BA6AA394CEA3276B1915D176441CA59C5D79CC5E47EB9B2C75899EDABBD8
            9366E9155E415CACB316A82956853FEEEC1DB19B7AF4A891CA227445DB03347E
            DC4C0B35748AE44CE5D5450ED6D6F748A8DD18A476ECED95A83B234494301D44
            9B4DC6359241339BC24F11C893A294C6F017B98047C25F73368BC071E13729C2
            F2BC0F1DE3B7D646EE0861CF5BE5E7F8D4D7B653ACB1C3E86E636015226F49B1
            1AC2F1C8CB26D8F4B2DA7C00F11CAD8E5F1F8CC6DC402548D32315E4A6592682
            40EB1F4CA8DF2429EBFA511B0621813D8AE7F1D749BE4726E16234B46A674D80
            E604575276D6D95553EFF58651B852562A461F8485595294407B2860F58F8FF5
            27B92DFCA0D47F392D9FB0B9A37EE1DBBF7F57F70CEB9246F82EF858CC585AE5
            90124845C93E94120E87523368790D9DE8F7EFDEB247C2BE2658B7A1BB1B3BE9
            174DD2BDF7A1B5275EAEE49D6F66B38FF527B92DFCA0D47F392D9FB0B9E533E9
            33C8C55D229BDB4EA668D0C70070E519BB63B5524BFCA324D8D4B6C55CE01FE0
            A6770814C3EA15481EBCD177AFB8FABEF0FC78C27C177C2C575636B96902B062
            8F9293A580236AC5514E8EB44060744F7F2D17C2CE26A41305DB0041D35D368E
            B5D8E94763AEFEBEE75E75C03C6AD035FE376AD8AD7306F56975D272EE5A7E79
            C200D169D9E90F240F24059956709B244883768C593422CB0B762C9B11770E9C
            82EE97E7EC077F847BFDDF7302201EB1CBF3158BB1C2E3ACB138CB78ED71F8FB
            68AD6D2DE3D958A18542228662598E87CA662599B64B127753FB5B582CADA1B4
            B68C456F6F1A450C6BB2123450AABB2493D8772764F727BF72C631990AF45318
            C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C629
            5DA5FF00885BF9A53F30D98BBBB7D99DBBF09E7FF4ABBCDA22FF00C42DFCD29F
            986CC5DDDBECCEDDF84F3FFA55DE695FC317EA1E13FC2335F818DAA4BC66FA9B
            05FED6FF00F06D2BD6318C6689D5094C90FC4AF7CCE8DFC64D63F482791E3243
            F12BDF33A37F19358FD209E4A3847D78F16FE30623F1E82B2D81FD7BC47DD2B2
            FC623A917D50BDF4CFFF00016A3F9B2395DB9625D50BDF4CFF00F016A3F9B239
            5DB99FF177F64BE67F776FBFBD3590E65F5D19CFBA171F86698C632B8A8CD336
            05C69F7BCE8EFC52EBBFEA8C3E63F73605C69F7BCE8EFC52EBBFEA8C3E6E57C0
            F7F5EF97FDCDB1FC624ABAFC19FAB337FC1AD7FBD7AE6EC6319BED57ED318C62
            94C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6
            318A5318C6294C6318A57697FE216F87F7253F30DF1662EEEDF6676EFC279FFD
            2AEF368C72788872FBA27218A23EE7BA0201F7BDDCCB2726F887B9F58ED5B891
            8502D568A7CBCFCACCD62CD5882939F8E71112AF9676D5ABF5631BBC3464AB00
            5FCC1E33922B65965DB28E9915CB059BBA5750BE16B80CC6570BC56FB1B8FBAB
            EB7C75DE492F5AD6179DA0F8D4769E85DD2357658D8C0E3AC80AADD2A4866506
            9EF1771F7B7963899ED6DA6B88EDA7B959CC485CC7E9D6011B385EE1498D8756
            B40E86F64030B719C8DED3DB73E4B7637CC8B37EACC7B4F6DCF92DD8DF322CDF
            AB3344FE80673F69F27FD06E7FE9D507F43EFBFD0EEBFDC4BEEFDEFBC571CE48
            7E257BE6746FE326B1FA413CE3EF69EDB9F25BB1BE6459BF5664E7E0771336E4
            FEF1A6EC0B452AC74EA3D064D3B1BB94B3C4BE81565A41A22B1E1A3A119C924D
            5DC90A92028AEF1EB744F1CD1A35709B874578AB36AE663E1EF14E497DCD78C4
            76F85C9318F378C9E466B39D638A086F21925965768C2A471A02CCEC4003CFD4
            0E738DE27273E7714B1585CB745FDACAEC6191552349E367776202AA2AF72C48
            D0EFBAFC4EA85EFA67FF0080B51FCD91CAEDCBACEA69C5CD9D6AD830FB935F55
            E5EE710EEB4C6BB648CAEB0712F37112112F1F28CE44629A156907718FD8BF49
            0328C1A382C7AD1ABAAFCC924ED038D4CFB4F6DCF92DD8DF322CDFAB333FE33F
            14E456BE24729924C3645A1BCC9CF796B3C7693C90CF6F704491C914888CAE3A
            5C2BF493D0E191B4CA457BF9BE27251727CB33595C949EEE49E17585DE392394
            F5ABA32AE981D80DA274C0A9D106B8E719C8DED3DB73E4B7637CC8B37EACC7B4
            F6DCF92DD8DF322CDFAB32AFFA019CFDA7C97F42B8F77FABF78F9EA29F43EFBF
            D0EEBFDC4BEEFDEFBC571CE6C0B8D221F4BCE8E0F84752EBBEDF92A30F997BD7
            DC5CDF9B26CB1D5A80D5B746AA3F749A0E25E76B931055F8940C3E259ECB4CC9
            B26EC9AA0DD105171481551EBAF2628306AEDD9D26EA6B075ED4D0A15129D486
            AB99CB7A855E02B4838397C075D1838A691892C6209D4F0195235038945453C2
            26EC27376EE3B97F049E3D9AC7DE72AC9DFE36F2CECA7B5B2B5827BA82481679
            D669649122F48ABE90C6BD25CAEFA0B286D123776783F8FBDB6933175716D341
            04B15BC5149346F1AC8EAEECE10B81D5D235D44761B02BDC718C66EF55E34C63
            18A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5
            318C6294C6318A5318C6294CCA1F46CEACFCC8E6ADABA95456F8B2D22659F192
            84E2C1AA0B054083AE9E3E49292DA0D4AA4BA8C0803349F91AAC380A2EFEB045
            258DDBBAE7CD5E6605BD8DD7D9E75ADFC543CFD35BD33A9C6D914E8A9EBDA900
            83A008D820F9576C6AAC9212012047A24796DC6F40FB476D1AE52E8DDEC8D793
            3BDF99145D11CED97A0BAD67BE05E6BAD657681A044D150ADEEA2AD18EAB1172
            3251A056D291F6CF3E42A0AB23914731F62B2D35E1D5671CE1EA8B5A7ED3EA51
            CA3AA7B217D1FD3A61E729E97192F5474676C102B52A1D7B4AF207D17B2EFA63
            B6B71CBE946C98D8AB112BF924C7C20D9359A87EE4B9F32A5C35E02CBF31FA1D
            F25F6C6AE60F15E41F0CF97F69DCF405618164E7E6A8AB694D3C7DAF54895DA7
            67BE93089AD43DE6053660A48B89DA231878C211C4E2871923D3FF0098EF39DD
            D7A7A61720EC6E88E7664871F9DD1B7189132A42A6CFD6DA0F9154B9D9939122
            15BA63748F8887BFA6D9A8790608DAD28D2F84CCCE52F42C7180A0C69DD9083D
            0BB209D104EBD5AF2F6577BC517539545D2A9461D2074B7C9208F5F71B1BF68F
            3DD5B1F283AB9752FE56F51EDC1D39BA4C54F5354DFF001FD7BBC5DF366ECB67
            54919C9392D6B2D1753D893407BAAD235384ABD7EF128DEA71112C2AD67B4CC3
            A124D393B560E1CC643CE6D3EF7D90DB2E18F2F58EDE87D0327CCA829ED3AD38
            85250886AA4216DF12BDC6215DCD2D6C72D2C2C28658E6F4955F35AD329BAED3
            E71B4BB29558C9CA91EC00211AFA93FB1E8D8DB339276DE7CF4DAE474971BF93
            F62997976B1549D4E586A1073D7A7C89CB64B1D2F66D38EA586912B7139575AC
            301310F3F5CB14D4B49ACF256BB14F1CB4CF61F63D9D587951CC4BB721786DCD
            26B1F62DDBC6B891944367C6C6444649CC3180B686BDB7D5EFC9D6409527F648
            2B0AB1A688B1D79BB44AC4C549555FA4EDD47FA5E4FED5111FBA8566D852A142
            EBD5AD0D823FEE6BAC84E806358FE485EB0574FB057677EB04F63EAF303CEAA5
            F6F7557F6467A3F973AC3837B217D0115C8CDC214B1A2545B5374F4BC4C986C0
            999380AC79CDAE3A59CD6E33CF64E19FA2B7A42450F33224559D79249521CD62
            FC8BE6BF5BBE0CF4C9DEDC85E6123A669BC848ADFBA6AA9A85D57EBDABADD5F5
            75D59D0926D702C9C5D464A5628CFCD2A8362345A45449DA29F88CDCA64C4C23
            14BAA4FF00EF4AF4E5FE6F891FDAD6C6CB52F6545FF54BDBFF001E5A57F4D496
            7C989089091D453B0EAD376FE51BDD727A4B423D1C7F2BA3ABE48D9DB2FDED76
            D7AF677E75C3725C87EBDBC94E24F0277FF04227495A55DB3C7A35B7903276C8
            ED430089F65B9B54A37603051374998A519471ABEDDB8A88C524AB22AC022A1C
            1531CB9547C29EAA5EC8BFA83CE6D8AEF1714E3F5D2574A0D74BB09098A569DA
            612286D2EEC6C617CD57B4CAC5A32BE72E6A736453D1A771E6E0D8875FC05728
            0A9AA7E883FF0054D704BF11509FA4E5B338DEC41FBFB71F535EC1DFF74D0FEA
            F73FF9AB7EE71E863062D28F95DCF65F5007B6C7BFD7BAF9529D329F4511E820
            8DA027BB81A3ED1AFB5F31A96DC98EA93D43B8E5D4FBA55708ED535AEA19B6FF
            00D49C1E5795D5F468F559976B6DADA7B36C340DE68D62D0C0EE108C8D51E413
            8690A304E168D65E4BCEE2D651254873D9375F0E706FDE9FDC1661BE78DF315E
            83D86E378EBEA2A8F6CD5A8FB5C70D7AC50B747D248045C980B6072A38846064
            DD07EE88948A10BF5AA9B2873ADEB96D43F6479D2A7615A574E269A2DF866BB8
            B03C30368B648C272F364A536ABB7AB8A6DD24A19B3E6323267153B3460ED05D
            4EDE3001B0DF65B164868AE9914B817B20DD198B4F2A75A37858E32C995E3E08
            9A46D19493708B71382CA3562D924C1DB84C8649BACF18A4A988776801FB0008
            B28501403DBA7B6BB0F203FB7CFEDD3A1435B80A34C14B76EC4F50077EAF2F31
            F7BCEBC6BFEFFEBF9BDB8E9C16DF5C0E8BD2765AE6D8E1CEB5D8FBDA56DACF50
            C29D4DD3613CBCA4F1A1222E73716ED9439EBEA40AA8358B4148D4963AC9A6A0
            AC0B10B539C18EAA5EC8DFA8E21B39C713DC681BC25A815A7A17B34D53F4F524
            D18A5EC96752B40D82DB2F126922BC2D3E745618F05C1A79B240E452172DFCA6
            B7BA5A4149D6FA5A70662261B2ACE451E1CE9474BB45D33A2E1B04A6B2859441
            1708AA52A88B84D0789157454294E92A074CE5031443332DEC32BD70DD44C3E0
            F49F153FF2BC8AFCB9CE9B718EB70587CAF95BD10A0F6FE5FB75F40AF44A7A23
            3D047492BE7B751ED3EDEDFDBED983D417AD97303536D8E3FF004D5E1AEAAA96
            D6EA3971A0EAD67BE271FB4633B56D7DB6ED7458AB24ED3AA104C25E36AEF25E
            3DB2AF2E563B4CF4BA9AF6935255B2AE9B4A94259C56E2F6DBEA89D793A495BB
            535DFA96EBDD39C80E38ECE9F240C9CDEBC8BA84548C3489D3F4ABFAAC35BE80
            C2AF19077F8F83692123051B72ACCC405B19474BA31932E4F1B27310BC19C3A7
            F1DA87D966723E33782E48BB15F2FF00C8761ABDED8845A00486C8A9A36FD62D
            D8B87606210F37AB5C1ABD5DF0AC88491A518C5B013AEFDB32716FFECABAED40
            AF74AE97AA5A5DC705BF606EFD4F1BAC63975133492D3D0126F2CB60938F6C05
            3AFE6F1F4B8DB0327EFC0126CDBD32D19ACE0ABC9B36EEB8DB1577EA20A9200E
            DAEDAF31F9F7F9AB9D2868D3D1A90EA09623B9EAEE4A9DF60BEAF75681F4D6DB
            A2EFCD4DADB76EB1982CFEBDDAF49ADDFE9B2C04F22A3CAFDA629ACBC699DB63
            18CA319045BBA2B7928E5C41CC73F49CB17442386EA90BC9594FBD02AAF6FA87
            482E1044DDD074DE69CEBAB45959A4F133A4B0D4AEBB4AF972A0AA521C007CDD
            C5127AB8E199FB785568AA0A904487288DC1677A9D807DA01F9C57998698AFB0
            91BFB4754C6319CD714C6318A5318C6294C6318A5318C6294C6318A5318C6294
            C6318A5318C6294C6318A53282FA6F743B4FA7C4F735A6C393C3B6C3985535EA
            E2D4DA60285ED79E59EDE9E79F796F6D7B97D167846EA29F9B0A35AF17A37C7E
            701E79E06B7E7DBD603DFDCEFF0097BE7CB4BA6B700F869CF2E4BF3420B985CA
            13718E235CDA5C4B51E4C2FF00AAE85F45B2560BFDD59CCB0173B4593D6B25E8
            B6B1AC5CF918804DC37F3CF1BB1326AA201D6E4064F93B3F2BA4EF5AF2DFCFED
            F56ABB6304ABFCA2AA3A49D2F56FE576EDE7D8F7FEDADDDF47DE95C9F4A2D1DB
            3F4B8EF30DFA4D93B516D966B09F5917581624AB542B3543410C37D1FEC40922
            F6AF79F0C88C9B20303DF35161D90F385A0E71C7D8E36B7E2CF53987EA03A9B9
            12785D7B5AD85B2AF558E31069A48ACEBACF64D12E1525EA317B452DA442A305
            5C7D7377215F036B93ACDE118475717F2EB1149E52157373843C63E087B1D2E7
            4EB4E276FC77C8CD6B76DE7A6B643FBE38B7EBEBAA2D6D6EF757192A1275E673
            5AD593280F20C23E9D12F1466B1559241D48AE670A820A364D3A83E9FF00D2CB
            A34F21B887A7F717293A9F4271FF007C5CDB5C95BF6A177BDF8E34F714F5A176
            25BAB75F494AE5EA29CDAA37D33538782B114B2CB18CE492E578D3C2C1CB5297
            E4EB683A07C91B1F2B406B5E475F2BD5E7E6457600C43B894E99BD1922324B76
            07B81F4BE7AF6FCF5A0CE45FB1F8E56DF3903BD772E92EB05BFF004052F907B3
            6E9B26EDAF21A1EFB19190A7BB4D3D96770CDCD44DF54081B2444624F53868B6
            D290114A122DA3545E3C78A81D53D90F499E911A03A5B51AEE1AF2EB35B9F6BE
            D8711A6D91BAACACE3631CCB31823393C656AAD031AF2551ABD65ABD7AF651DB
            25A727E5E5665D19CCBCE3D6EC211944E61BD93B6B1ADD5A7FA41680AE5A65A7
            75BC1E9C79ABA1EC09C8315DDCF55E15F697A6C4598CBB26DE837526FA0D249F
            A4F5BB033032CE0CA376DE6A704879D39EDEC78C9D39F8F5B039ABD35F96DCA0
            A3EC4E3D57D6D9B6FAFDB2EF068C8CFD22A80591B53EAF5B3595575A291EF2B9
            0C83BB1B985B0C558E26C31F1F211473321708914E3B066223D95D127ABB8D80
            7B0F5EBF2EBB6EB920B2206974243A51D0347A4A8009041D0F3EFF00F7ABBAE5
            2F4652F257AA4F1CFA958F23CD4B1D005D4850D301A842C416CF6ADB6D8ED203
            ED89ED9D06305E9D1B0798FD834CFA33CD3CE7FF0068797F3746547550E9FC5E
            A63C4C97E2E1B6DFB4A84ADE69574FA390A206C6143E83DEB879E8DFA1A1B951
            015F48F9C027E79E9F4FCD3C1E306AE7C5E12E5EB94BD422E7D477D8C4EC9DB3
            B54192BB9B5B6FED55A476C4BC7326F16C6D966AA5F75CD8A2EE6DE29A88368F
            5EC94EB8569D4E20CD16917F4549D8461D846C50338E6904F839D29BA2CEF7E2
            8E98DB7C91EA9507A37785DABB2123B0B543ADF7C6BAAAF4B966F649B8C6B1CA
            57AE712BD9E305C44318E920465D63B8383D05D33037551007529240404300C4
            96D6FF0090EF47DC0D7C846003331531B845013AB5AD107B01DB5AF307D9DEB7
            BFC28E36A1C2CE2468CE3239BE257E4347D0D9D2CF7E5E0494B4AC4566EDDB9F
            4A295E3CFD90909E505DF93F341B0C9813C1E2F3B309FC25AE3E8F9D1B5AF4B1
            B5F25AECCF92C97205BF247E80D54DBA1A993D6C854CB4895BFC909927E96D1D
            884B1964C6F028788A842832F45F94FDF62F7C9B4CF37B25BD51575B97DD2738
            ECEEC334B6B55F5551F53BB974A45936915AAC7D9F5DA3AD6023A3355A190993
            C0899D1244D1AAB149C082A2D0ED4BE40633F3E78E14DE8ADCE3E191FA5072AF
            6AEC4D9DB1A75435C346ABB1AB5799C4E5195B29D0D53A9DA996BB85ADC5CED4
            F74FA766EBE853ED75C78FC1CD6E4DF3478E88F1892245803AE81FA99007CAEE
            37A1D86BBF97AF7FDB458CB2FD390650588E9EC7A483DCEFB773BF203CBD55B1
            1EAC1D21746755AD735084BE59A6B55ED8D5EE259C6AFDC55989653AF60DB4F8
            3209EAE59AB6F1DC5A76CA9C9AB1D1EFFD1849B82938E956083C899B628B9996
            92D51D41F63016EBF6C9D7363EA05D48778732759EA655246A3A9E61A5D1A207
            856EAB5582B85B5DEB6D6C67552AACA047B1693D054E868E7CF63912B663648B
            5916AF109EDEC91B93E3C6DE955BA2323647CC2E1C8C92AFF1CAB204544AB2AC
            AF42F2536210C9104AA9DAB9D575ABBC52AA8095149D4A312AC26058882D9B1E
            89F0579E963D62B4DF1BB693D76C6BDCDEE216AA7A72CA13CCD06B6CDA5AAAB5
            B96BCD566E00405246AFB66B578D2718B9056F2EBC83950FD8CE943A1CBF475E
            8AEF7AD9D9006FCB63C8F979FB86EB98C4822255FA40EAE95D0D9D74ECA9F31E
            CF9FDBBAFA0F210D1B1F068D76219B3878965129C2C5C7C7B545AB08B8E6CD0A
            C593362C5B82283766C9B11241B3440A92292299114C08429402963A33746B27
            48B67C88685E469B903EDFAE75538150DA883557D0A7B5925B113F00143676C7
            F4EFA6FE8F84DE2F143FA37D13DBC2FF00CFBBB3A31F6647F643D34FF9DE55FF
            00E7B8C99B8BCFB0417235DD3C8FFF002037F93D75D44148D747E4C9BD8D7D89
            07CFED907D55487D547A1A71F7A99D86AFB7D2BDD9B8E5C9CA532611709BBE89
            0ECE702622E25E95F4236BCD50F275B756079585C573D567A1EDB56B0C40B806
            EBCA4946328D8E655E9AEFD8C2C9EC0DB34DD8FD46BA86EF5E72D7B5E9D142B5
            AEEC45B946A2EE29A2ED954E0A5EED76DA9B2AC51F55932B36A49CAF5390ACBE
            74448011B424AF65C358F80101F5860A293B23B9D6FB9D1D6B5B1E47CBD62825
            9140018F6F2EC090091BD123B79796FCBD5DEBF361E1E26BB1115010318C2160
            A0E398C3C2C345346F1F17131318D92651D191AC1A2693564C18334116ACDA36
            49341B374934514C8990A50FD2C633EEBAE98C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5299F36CE885D32B8B5D
            4AB953CFBADF27A26E92B19AAA6D9CE544B4DB8BCA8AA8BFB3EC6BFB09533E55
            A37702F923B78966082670202272A862888A83DBE92791378EFC16E24F132CF7
            FB9F1CB45D37535A36979B0EC19AAC84B03BB48B39090956C325E91937C90F91
            919590764F374D0FDD5DABDC44BE1297E193A9949D6977B07BEF7AF5797ABF3F
            5F6248515C0D8660BA23D441D9FBDB1BAA1EEAF7C22D13D3F7D8FBF2D74071D9
            859A375D96FBA66EA0DAD763736896F4E59392DA3529353D28E91455F3631231
            A7916FE4FC28881C4047C63DA917A6DEABF635562E14E9299E795C6062F962F5
            ADE476D47BCD8BCA18374DDCA1B36E8DAA00AC5EBE7C953DA0A9AFD1AA2A5086
            214AAA6A1577BDE4557823BF1DEBA1B507267575934AEF8A1C2ECCD596F3C2A9
            65A5587CF06225CF5D9E8CB3C219D798BA64E8463A7E1A2E510F26E53FDF2C92
            F1F8D3F110D5EFF50B3A487DA2FA6FFD5B5FED2FF7EFF7B3E4A1EA047490001A
            6074347FF28F57979F7FBFBAFB594042AC5C12FD44A91DFB0001DFDAF2F7D65F
            3D9365EF5458763F47CD8FABEC4C65349C96B794B5D0AD291E44B1CF35A9ECDA
            6646BD36552612465819A95B2B579E524D14DF8A5F5EEC80E3C61966FD677AF1
            F047E91EDF1C7FE356EAAF721B7572275CD8F4D45C56B7465E5EB757ACEC48E5
            EAF72B3596DA2C1080485AD5A4661AC341C6BF919D909E751645631BC3F9FC9B
            4BB3DCFD2D7801C85A5E9ED79B8F8C946BB537405352D7DA6E11DBEB64625AFE
            968348A6295720DDC158A2E402348D21225104DDBB747F0B140DE3F1818C6F0B
            44F4A0E9C1C68B3475D74BF0E748D4EE70CE1279076F7B57FA32B5403E40C432
            0FEBF62BCB9B2CC40C824621448FA1DEB2765113F65BB1CFE2147DB68A80C003
            E7B1A1AEDECF5EBEDD72248FA630C1C98CB1001001D9046FD7EAEFAAC815DF86
            3B2386DEC5776934DBF5F7F51D8DBFB927ABB7F49D4269A1D8D8AA55EB0DCB56
            D3E95093ED1511599493CAD52595B978B744424618F6B3C44B35672CC5F3443D
            57A7E6A7F63253DC39D132FCD7BA4046F291F566495DC2C5DEC8E5443386F602
            DA279360456328AF92A9B430D7490E704E1532B6314C5514FDF475C47795BF78
            F1A57949AD2574EF2075E416D2D6538FA224A5A9D6307A314F9F40C8212B0EE5
            6060ED939F28C245B20ED0F038297CAA45F194C5EE51803F50AFA487DA31A73F
            D5B5FED2E71E8C8604749D285D3027CB5DC7BFB76F9A8260558317059FAF6846
            8F651A3BF576FECF55660FD92921AD3911CD3E928D6BB2CA5834EEF3D5F43420
            E7619574C959BD6BB376C57138D96895E45A95EB4524EAF368BC62ABE6657481
            9644EE9A82A43A41C4DCB9E2C50FD8ED7565E0F6F6D24E65ED1C6AD9C52AD349
            6E06153BA4FD6E39959E36A3BCE22BD6456ACCBD1921074CB4D62D753B4C5B78
            DB4C63C95730AF649E4228F9396D70EF8E3B74E49ADC9C4ED55B0F8DB5ED9DB3
            F524354697A0A322184ACA3AD1F45A5AAC9D555E3814EC51E58AAC57D48364E5
            059D9256401B46A8F0CD976A82CA0CB6E4EF0AB8ADCCF88A9C2728748D337346
            51A424A56A0DEDADDF1CD5F7D32D9B34965A39C46BE8F7491645BB2669BC4456
            3375C59B451448CA3644C4F15ADF58DFCF7D0DA5D4571363EE45BDD8898B7C5E
            E3D1A4A609081D22408EA5D41250901802355D105FDBCCD2450C825F8AB35BDC
            AA90DD1232AC8118F9070ACA48DED7637DFB56407D92FDA2FF00CD6EA27C10E9
            99A29E423EB53668C6C4B9269CAC5A835D89BCA71B4743B9BB0B48E9C70585A3
            EBEA5276F9370DA1259542B1709351B474A2AB0B2357FF00589D13D60F88FB43
            881CF5E79EE6D05B9AE9AEF60566A1A76EFA42219409AA32FAD2796DC152AC5A
            DBC2E8FD2ECCEC9F48A36492AF08273AE4A4676240C2C101488E77AB0BD3DF86
            55EE4243F2C2338FF4C4F9195F8F8F8B86DB8E959D93B6473189D7C96AA8D451
            732732F1B08B2D7A825576EB1DA9D74E3C806053CEBBB81E50E46F1778FDCB9D
            7E86ACE49EABAC6DFD7CD2C51D6D6B57B5A2ED560DACB10D6458C74D363B176C
            9D20F9AB29793689AA9382776CFDD20703A6B1CA3ED3116EA24E989523448035
            AD6FDA411EFF00577EF5DCB304E80176141076013B6F3D79E8797AFCBCEB147E
            CB0B6B54F75EBEE90DBB69AE81C52B6B6BEDF7B3AB4EC4E554C6AEDD2278A967
            8B3AA64BB94562309144AB94A1DC8A95427840C5F0869EF5A75C2E959B876251
            353EB7E5F542D3B0F655B6BB43A356DAD276D347360B6DB255A41D7A19BBB93A
            0318E6CB49CABE6ACD25DFBC68CD23AC0A397282253A81CCBB23A5DF00F706BB
            D35A9B67718B5FDD75DF1EA1EC15FD2D559A52C6BC7EBC84B4AF0EE27A2E04E4
            9D4DD959C8295F840322EDCBA2B74A31A20D3CDD04813CF43D7BD1AFA616A8BE
            D3367EBBE1B6A8AA5FB5E5A606EB49B3C616CA1215DB55624DACCC04DB1F38B0
            AE879E45CA326AF5B8AC8AA979644BE512397B947EBA5C316057E56B60EFD400
            EDAFE5FBDDAB82E8C8AA4382A1B446B4492BADEFDC3D556698C633B2BA698C63
            14A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6
            318C5298C6314A08F60111F803BFFDD9547B37939C8FD9DC96B571DF8BEA5260
            4B408C70F2C56AB620778574EA3423939711505AC991A3369252CCA01068DA11
            EBF5A45372ED5768B130834B5A53FC03F6F77C06FF0080E52F70A0C0AF3DB974
            A381F12E594D8C9A626FF0BCDC9B4514FB077F5F84134DB87ABD5DBC3F076CA9
            3C4FBDC91BDE11C7AC7297B878791F226B5C85E63A5F8BDE7C52D6CAE2E8C10D
            C005A112C889D6E9A72A3A410A5B714E4D35C99F058FB7BA9EC932593315CCD6
            CE229CC315BCB37A34974593AD914315D3748D6F5D8FBDEA7E746D39BD25C937
            978ADC037DBFC7C643E50C46AE91819574E1DCAC4264938D49F9964DDC3CB43B
            B2C9A4CDFB341FA2AB6067E68605CC4F4DD63BE7A966DEA7426C2A1D0754CC54
            E7CEFF00D1920BF9847797F45CABC877A0A337B7B6AF912A4FE3DD223E345331
            C8982A97721C871917C989ED2129C7FE5AB0D5EBD18F718C8B512DA69D599C5B
            5981B079E28926A5A5662DD170FE40AE10926E2E9E28E5423A4241B1952B845D
            264859C51ACF5037FA3A84EF48EC1D7307AB9556C3F43B1761691AA3F6BE4EDF
            3A9CD03F3A9499678622D36493704F04838501AAA915114840A82552E4EF7925
            9F29E3DC62E794734E49690718BEBB96EF833D99BDB8B987903DA433644CCCD1
            491DADAF4DA5DC9B321B845247533EE21773E4A1CB637172E5B39938A3C4CF3B
            CDC7CC1E9E5953266047BAF4859196187504EFBEB32AA92365C9B1FE4DEF5BA6
            83E31B8D86FDB4021B50F1D56874D8A7E70F6BA8DCE6CEC909A062555549D3C8
            F8B204CC847957500EE5160895C8895454338C380FCA4BF6FD8AD935BDAC947A
            37CD712F1E9B8519478441DCC64B16410222F23C155132C84649C348A0ED56C5
            411F22B3148EDC8B1545978E9D50AE489DA71CB545CE659B34256C24B5EC4916
            0DDF19A47378B4D857D5946CC9B91DC928C8493B6772D5B249BA7A29B104D349
            771E028FA471936D6BE53A88EC1575A4E965F5F6E580924221C963E521D15679
            B40C3DB5F9D56132C235F22AB79186B3B440CA362A6B11E01D23A82A97BE472F
            E20E42C7C61C5E3D73EF1616C67C2F17BBC1CD73109AF6FB358DBDBA39196DC1
            05E4B4B83616F34C8BD092388F6BD5A3E9BCE43710733B5B65C894B0B77B0C4C
            D8F7913AEE2E3216B7130B9788302C6194DB46F200551D82920369B92DBF29F9
            99B53756F4D79A4E275428CB52D92CB1A8B0B0B4954241F4641D8A46BED0537C
            7994D9B8927E78E32EA82DE8D66919602828990A1927F837CAD9EE4D536E07B9
            C1C5C1DDA832CD98CD160C8ED1887CC655174B45BC41A483B7CF18392A8C2459
            3D68ABD764F28C88ED25C8578666CEB175727C9053937CC82F1B97A92161FA33
            D883366B3010CE8CC7DB02C42C8B5DF384958DF4A8BAF18106580B1E0224F383
            017DCE5BE05EC3A7EB9E27F25AED14DE4DA5FEA6DA4662CEFA55E24E1AC9BD18
            292FA06422CA46EDCCCD13BF2BA68AB679E7AECD28BBA7477EA3574D59308F70
            DE779F8F97D94B92CCE7CD84CDCFE7CA2658A1C2DE5B612495ECA2C0928585C5
            92206BB1D48AB1A686C1D363F0B9EBF19A81AE6F7226DA46E4925DADE749B196
            1C7BB1B75C71E927D25B81BB8EEA154003B120FE654B9AD603F355694353A888
            D0AF1B216D384B635ACA08D9A46222E4DB41C33C56E00AF9E2E741C3F8197916
            8E456609C6B945B11BA7E6CC9D36BDA28F88A5307B825010EDEE7AC3BFAB326C
            EACFACD8F16693130B6B1F6ED8ADD92B7B7B101153C471190AF21890E9AE8CDA
            D1458359505EB95B922B74255550BE70A09C9E709AE927A91D65706BB075E51E
            F2CC001ADB2A95FB0A040111F244998A6B21E487BFD70192071E4CC537D714C4
            1037D700E4BFC01E597D98B8E518EC965A0C9CF72D65CA2D7D14D1486DA3CD2C
            AD7762FE889F46D67711A2BC4C03A197E528EA3596F0FF002D3DEBE56DEEAF23
            BB92436F9588A48927A15C80733DB90A494304C80346C0105F6546C6FDEB18C6
            6CB55974C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C
            6294C6318A5318C6294C6318A5318C6294C6318A5741EC601F884043FE5951DB
            0F8D7C9CD3FC9BB96FFE3144542E2C763347E8CCD76CB208B2347389A3C73D9B
            2BB49DCA57D374D559B8D426A39E474C11EA475178E74C8504CCB3FB72C644F9
            670FC772F82C23BDB8BFB1B8C5DF4791C7643193ADB5EDA5D468F1F54523C532
            1578E47492392374753DD7601189CB61EDB2F1DBACF25CC125A5C2DD5ADCDA4A
            229E0995597A9199245219599595919483DC76AA8FD53C1FDB511A439329DE25
            EBCAEE2E42B3153CCD172A291312E50792D33E091936ED3C00EE665E61D79F83
            06CED8B149BB133770E8456293D3F566A1EA61A769107AEA8D21ABE3EAB5F348
            0C6B578E2224164FD2B2CFA69E8AAEDC451DC2C0A3E917270011EE44CC54C9EA
            297B5D0674F500FDD37FB7B64397C1AE3B6ED8A971995E4B87B9C563E7C6A5E6
            332CF6D75796F737AD91B8F8F4DE899A669AF1DA77D742F5150142A205C3AF0D
            C6C66D1AD6EF2B65259DB4968B35A5EB4334F14B39BA945C3FA32642F3B191B5
            D2A4E86805502AFE678B1B7B6872CB516D6DCB1947B051EA5AB6263ED8836508
            F215FDC9B43CE04946B1AFCA22772B479ADB3AA4CB170EDB99B9A1D9B641CAA4
            7C991B67F7BBB873673F2678FF00B7B4556EA75CAF55A521DBDF5A459232B28B
            28B8BB01DFBC914E39A20DC924E6560E525625416C9A8F0C641922B015B76590
            B3EC7AFB8FABEF0FC799193C28E2D35ADF433ADECD7390CEDB7219B2734D1C99
            34BFB57B568961BB30964800B54431E8FC97934416047A9B8B62DE2B84713492
            DC6422C9BDD3C8AD722E61689A3E898A12231E8557A347E4B368824115D9C61E
            346C8D55C88E4DEC7B5A5149D67645825242A0B337E474EE45B4E59E5EC82772
            D8A429D81A3D17C831729BAF0195780A19A82AD4A55D48835AE0FF0025EB3A3B
            935AD9AC5573CFB62DBB5EAD5B221626650B040D5EC3332728B26E14F269C591
            72290AAB76F26666E17453916CBA297EE25717A38CF25D783DC5AEED2C2D1A6C
            AC71E38F26303C7751ABB2F2C4963C9A48C606EA5092910680E8017A8C9F281E
            99787E2A5860859AE956DCE58A1595031FA32AEB78AC7D19D8E97222035D3A1D
            45FBEEBC2DBC23AD3FE240EA787A75189B65A6BEAF324AD88C345B57EF6EB069
            C6C93C5BE88BCC425116F352EC576AB39596EE2C5F1C8E005115083CF3C41A05
            FB5771E75E50B65A4D50B6D71A4B3376D9A3D4641268C549F94730CCCCF1B899
            BACAB4875D8B6505B9D440A64BC09AAA8144E692D8C9262B81F1FC266AD7398B
            B76B3BBB5C0271D58A131C76D2D8C73C73C6F3C491A992E51E3D098B82559810
            7B6B236B82C7595F457F6B19866871CB8B0A855627B65912543222A8EA955934
            AE48EC5BB1EDA6318C99D66698C6314A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C
            6314A6318C5298C6314A6318C5298C6314AFFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Width = 498.520007000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desenvolvido por: Elvis Sousa Brand'#227'o')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 642.142147000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Top = 102.047310000000000000
          Width = 596.787787000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO SCOUT PARTIDA(S)')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 151.181200000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 336.378170000000000000
        Top = 249.448980000000000000
        Width = 740.409927000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DA PARTIDA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Local da Partida:')
          ParentFont = False
        end
        object PartidaLocal_Partida: TfrxMemoView
          Align = baWidth
          Left = 105.826840000000000000
          Top = 22.677180000000000000
          Width = 634.583087000000000000
          Height = 18.897650000000000000
          DataField = 'Local_Partida'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."Local_Partida"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Partida:')
          ParentFont = False
        end
        object PartidaData_Partida: TfrxMemoView
          Left = 105.826840000000000000
          Top = 45.354360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'Data_Partida'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."Data_Partida"]')
          ParentFont = False
        end
        object PartidaNome_Time: TfrxMemoView
          Left = 11.338590000000000000
          Top = 71.811070000000000000
          Width = 302.362400000000000000
          Height = 37.795300000000000000
          DataField = 'Nome_Time'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[RelPartida."Nome_Time"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaGolsPro_Partida: TfrxMemoView
          Left = 313.700990000000000000
          Top = 71.811070000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          DataField = 'GolsPro_Partida'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelPartida."GolsPro_Partida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 389.291590000000000000
          Top = 71.811070000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'X')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaGolsContra_Partida: TfrxMemoView
          Left = 427.086890000000000000
          Top = 71.811070000000000000
          Width = 75.590600000000000000
          Height = 37.795300000000000000
          DataField = 'GolsContra_Partida'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelPartida."GolsContra_Partida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaAdversario_Partida: TfrxMemoView
          Left = 502.677490000000000000
          Top = 71.811070000000000000
          Width = 226.771800000000000000
          Height = 37.795300000000000000
          DataField = 'Adversario_Partida'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelPartida."Adversario_Partida"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Top = 124.724490000000000000
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTAT'#205'STICAS DA PARTIDA')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 151.181200000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Chutes:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 173.858380000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Certos:')
        end
        object Memo10: TfrxMemoView
          Top = 196.535560000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Errados:')
        end
        object PartidaTotalChutes_Scout: TfrxMemoView
          Left = 113.385900000000000000
          Top = 151.181200000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutes_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Memo.UTF8W = (
            '[RelPartida."TotalChutes_Scout"]')
        end
        object PartidaTotalChutesCertos_Scout: TfrxMemoView
          Left = 158.740260000000000000
          Top = 173.858380000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesCertos_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Memo.UTF8W = (
            '[RelPartida."TotalChutesCertos_Scout"]')
        end
        object PartidaTotalChutesErrados_Scout: TfrxMemoView
          Left = 170.078850000000000000
          Top = 196.535560000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesErrados_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Memo.UTF8W = (
            '[RelPartida."TotalChutesErrados_Scout"]')
        end
        object Memo11: TfrxMemoView
          Top = 219.212740000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Assist'#234'ncias:')
          ParentFont = False
        end
        object PartidaTotalAssistencias_Scout: TfrxMemoView
          Left = 147.401670000000000000
          Top = 219.212740000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DataField = 'TotalAssistencias_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."TotalAssistencias_Scout"]')
          ParentFont = False
        end
        object Partidap100ChutesCertos_Scout: TfrxMemoView
          Left = 264.567100000000000000
          Top = 173.858380000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesCertos_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[RelPartida."p100ChutesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 340.157700000000000000
          Top = 173.858380000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '% dos chutes foram certos.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Partidap100ChutesErrados_Scout: TfrxMemoView
          Left = 264.567100000000000000
          Top = 196.535560000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesErrados_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[RelPartida."p100ChutesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 343.937230000000000000
          Top = 196.535560000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '% dos chutes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaTotalPasses_Scout: TfrxMemoView
          Left = 113.385900000000000000
          Top = 241.889920000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          DataField = 'TotalPasses_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."TotalPasses_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Top = 241.889920000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Top = 264.567100000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Certos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaTotalPassesCertos_Scout: TfrxMemoView
          Left = 162.519790000000000000
          Top = 264.567100000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          DataField = 'TotalPassesCertos_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."TotalPassesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Top = 287.244280000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Errados:')
          ParentFont = False
          VAlign = vaCenter
        end
        object PartidaTotalPassesErrados_Scout: TfrxMemoView
          Left = 170.078850000000000000
          Top = 287.244280000000000000
          Width = 75.590551181102400000
          Height = 18.897650000000000000
          DataField = 'TotalPassesErrados_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[RelPartida."TotalPassesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Partidap100PassesCertos_Scout: TfrxMemoView
          Left = 264.567100000000000000
          Top = 264.567100000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesCertos_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[RelPartida."p100PassesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 343.937230000000000000
          Top = 264.567100000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '% dos passes foram certos.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Partidap100PassesErrados_Scout: TfrxMemoView
          Left = 264.567100000000000000
          Top = 287.244280000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesErrados_Scout'
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[RelPartida."p100PassesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 343.937230000000000000
          Top = 287.244280000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '% dos passes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Top = 309.921460000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 185.196970000000000000
        Top = 650.079160000000000000
        Width = 740.409927000000000000
        DataSet = frxDBMedia
        DataSetName = 'Media'
        RowCount = 0
        object Memo20: TfrxMemoView
          Align = baWidth
          Width = 740.409927000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTAT'#205'STICA TOTAL DE TODAS AS PARTIDAS')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Chutes:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 52.913420000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Certos:')
        end
        object Memo23: TfrxMemoView
          Top = 75.590600000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Errados:')
        end
        object Memo24: TfrxMemoView
          Top = 98.267780000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Assist'#234'ncias:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Top = 120.944960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 143.622140000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Certos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 166.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Errados:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutes: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutes'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutes"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutesCertos: TfrxMemoView
          Left = 158.740260000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutesErrados: TfrxMemoView
          Left = 170.078850000000000000
          Top = 75.590600000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalAssistencias: TfrxMemoView
          Left = 147.401670000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'TotalAssistencias'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalAssistencias"]')
        end
        object MediaTotalPasses: TfrxMemoView
          Left = 113.385900000000000000
          Top = 120.944960000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPasses'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPasses"]')
        end
        object MediaTotalPassesCertos: TfrxMemoView
          Left = 162.519790000000000000
          Top = 143.622140000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPassesCertos"]')
        end
        object MediaTotalPassesErrados: TfrxMemoView
          Left = 170.078850000000000000
          Top = 166.299320000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPassesErrados"]')
        end
        object Mediap100ChutesCertos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100ChutesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100ChutesErrados: TfrxMemoView
          Left = 415.748300000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100ChutesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100PassesCertos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 143.622140000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100PassesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100PassesErrados: TfrxMemoView
          Left = 415.748300000000000000
          Top = 166.299320000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100PassesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 491.338900000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos chutes foram certos.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 491.338900000000000000
          Top = 75.590600000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos chutes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 491.338900000000000000
          Top = 143.622140000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos passes foram certos.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 491.338900000000000000
          Top = 166.299320000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos passes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 608.504330000000000000
        Width = 740.409927000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 895.748610000000000000
        Width = 740.409927000000000000
        object Page: TfrxMemoView
          Left = 661.417750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object SQLQMedia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      
        'round((sum(TotalChutesCertos_Scout)/sum(TotalChutes_Scout))*100)' +
        ' AS p100ChutesCertos,'
      'sum(TotalChutesCertos_Scout) AS TotalChutesCertos,'
      
        'round((sum(TotalChutesErrados_Scout)/sum(TotalChutes_Scout))*100' +
        ') AS p100ChutesErrados, '
      'sum(TotalChutesErrados_Scout) AS TotalChutesErrados,'
      'sum(TotalChutes_Scout) AS TotalChutes,'
      
        'round((sum(TotalPassesCertos_Scout)/sum(TotalPasses_Scout))*100)' +
        ' AS p100PassesCertos,'
      'sum(TotalPassesCertos_Scout) AS TotalPassesCertos,'
      
        'round((sum(TotalPassesErrados_Scout)/sum(TotalPasses_Scout))*100' +
        ') AS p100PassesErrados,'
      'sum(TotalPassesErrados_Scout) AS TotalPassesErrados,'
      'sum(TotalPasses_Scout) AS TotalPasses,'
      'sum(TotalAssistencias_Scout) as TotalAssistencias'
      'FROM scoult.tbscoutpartida;')
    SQLConnection = Conexao
    Left = 880
    Top = 56
    object SQLQMediap100ChutesCertos: TFMTBCDField
      FieldName = 'p100ChutesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalChutesCertos: TFMTBCDField
      FieldName = 'TotalChutesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQMediap100ChutesErrados: TFMTBCDField
      FieldName = 'p100ChutesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalChutesErrados: TFMTBCDField
      FieldName = 'TotalChutesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalChutes: TFMTBCDField
      FieldName = 'TotalChutes'
      Precision = 32
      Size = 0
    end
    object SQLQMediap100PassesCertos: TFMTBCDField
      FieldName = 'p100PassesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalPassesCertos: TFMTBCDField
      FieldName = 'TotalPassesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQMediap100PassesErrados: TFMTBCDField
      FieldName = 'p100PassesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalPassesErrados: TFMTBCDField
      FieldName = 'TotalPassesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalPasses: TFMTBCDField
      FieldName = 'TotalPasses'
      Precision = 32
      Size = 0
    end
    object SQLQMediaTotalAssistencias: TFMTBCDField
      FieldName = 'TotalAssistencias'
      Precision = 32
      Size = 0
    end
  end
  object dspMedia: TDataSetProvider
    DataSet = SQLQMedia
    Left = 880
    Top = 104
  end
  object cdsMedia: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMedia'
    Left = 880
    Top = 152
    object cdsMediap100ChutesCertos: TFMTBCDField
      FieldName = 'p100ChutesCertos'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalChutesCertos: TFMTBCDField
      FieldName = 'TotalChutesCertos'
      Precision = 32
      Size = 0
    end
    object cdsMediap100ChutesErrados: TFMTBCDField
      FieldName = 'p100ChutesErrados'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalChutesErrados: TFMTBCDField
      FieldName = 'TotalChutesErrados'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalChutes: TFMTBCDField
      FieldName = 'TotalChutes'
      Precision = 32
      Size = 0
    end
    object cdsMediap100PassesCertos: TFMTBCDField
      FieldName = 'p100PassesCertos'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalPassesCertos: TFMTBCDField
      FieldName = 'TotalPassesCertos'
      Precision = 32
      Size = 0
    end
    object cdsMediap100PassesErrados: TFMTBCDField
      FieldName = 'p100PassesErrados'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalPassesErrados: TFMTBCDField
      FieldName = 'TotalPassesErrados'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalPasses: TFMTBCDField
      FieldName = 'TotalPasses'
      Precision = 32
      Size = 0
    end
    object cdsMediaTotalAssistencias: TFMTBCDField
      FieldName = 'TotalAssistencias'
      Precision = 32
      Size = 0
    end
  end
  object dsMedia: TDataSource
    DataSet = cdsMedia
    Left = 880
    Top = 200
  end
  object frxDBMedia: TfrxDBDataset
    UserName = 'Media'
    CloseDataSource = False
    DataSet = cdsMedia
    BCDToCurrency = False
    Left = 880
    Top = 248
  end
  object frxRepRelConsolidadoP: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42492.608146817100000000
    ReportOptions.LastChange = 42492.608146817100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 344
    Datasets = <
      item
        DataSet = frxDBMedia
        DataSetName = 'Media'
      end
      item
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 185.196970000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        DataSet = frxDBMedia
        DataSetName = 'Media'
        RowCount = 0
        object Memo20: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTAT'#205'STICA TOTAL DE TODAS AS PARTIDAS')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Top = 30.236240000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Chutes:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Top = 52.913420000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Certos:')
        end
        object Memo23: TfrxMemoView
          Top = 75.590600000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total de Chutes Errados:')
        end
        object Memo24: TfrxMemoView
          Top = 98.267780000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Assist'#234'ncias:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Top = 120.944960000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes: ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Top = 143.622140000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Certos:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Top = 166.299320000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total de Passes Errados:')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutes: TfrxMemoView
          Left = 113.385900000000000000
          Top = 30.236240000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutes'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutes"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutesCertos: TfrxMemoView
          Left = 158.740260000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalChutesErrados: TfrxMemoView
          Left = 170.078850000000000000
          Top = 75.590600000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Media."TotalChutesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MediaTotalAssistencias: TfrxMemoView
          Left = 147.401670000000000000
          Top = 98.267780000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'TotalAssistencias'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalAssistencias"]')
        end
        object MediaTotalPasses: TfrxMemoView
          Left = 113.385900000000000000
          Top = 120.944960000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPasses'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPasses"]')
        end
        object MediaTotalPassesCertos: TfrxMemoView
          Left = 162.519790000000000000
          Top = 143.622140000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPassesCertos"]')
        end
        object MediaTotalPassesErrados: TfrxMemoView
          Left = 170.078850000000000000
          Top = 166.299320000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Memo.UTF8W = (
            '[Media."TotalPassesErrados"]')
        end
        object Mediap100ChutesCertos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 52.913420000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100ChutesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100ChutesErrados: TfrxMemoView
          Left = 415.748300000000000000
          Top = 75.590600000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100ChutesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100PassesCertos: TfrxMemoView
          Left = 415.748300000000000000
          Top = 143.622140000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesCertos'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100PassesCertos"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mediap100PassesErrados: TfrxMemoView
          Left = 415.748300000000000000
          Top = 166.299320000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesErrados'
          DataSet = frxDBMedia
          DataSetName = 'Media'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[Media."p100PassesErrados"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 491.338900000000000000
          Top = 52.913420000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos chutes foram certos.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 491.338900000000000000
          Top = 75.590600000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos chutes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 491.338900000000000000
          Top = 143.622140000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos passes foram certos.')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 491.338900000000000000
          Top = 166.299320000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '% dos passes foram errados.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Width = 143.622140000000000000
          Height = 132.283550000000000000
          Picture.Data = {
            0A544A504547496D616765054D0000FFD8FFE000104A46494600010101004800
            480000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080101012303012200021101031101
            FFC4001F00010003000105010100000000000000000008090A07010304060B05
            02FFC4005E100000060201020104080F0A0A0709000001020304050600070809
            1112131415210A173138415157961618192236586171767781B2B5D5D6232427
            33567397B6B7F0323742657492A1A5B1C12639529194B4D4253A4346537295D1
            F1FFC4001E010100020203010101000000000000000000060705080103040209
            0AFFC40056110002010401020204040C100C0700000001020300040511061221
            0731134151610814229115323436527175A1B2B4D1F009172335375556627476
            81929495B1B3164445535463739396B5D3E11842466472D4D5FFDA000C030100
            02110311003F00DFC6318C5298C6314A6318C5298C6314A6318C5299D3B00F7F
            57BBDBBFE4F733AE440E65735B4DF09B5929B0369C92ABC8C89D6634CA34399B
            AD6ABA4C244218ECA21A2CB229A4D19115497979878A231D14DD44FCB2AA3C74
            C193CF35E5E5AE3EDA6BCBD9E3B6B5B74324D3CAC1238D079924FAC9D0006CB3
            10AA0920565F0380CCF28CC63F8FF1EC6DDE5F3595B98ED31F8EB289A6B9BAB8
            90E951117C82805E4918AC7146AD248E91A33097A63149DC4E72943E0F108140
            3F288867641D36F705CA023FCEA61FECF1660EB93BD63F99BC8694916D5FBDBD
            D17405567058CA86AB7EE61E5936463981BFA6AFC9F90B5C9481501049CAD1AE
            ABF10E4DE2513826C3D80B5DEAEE9DC6BC884C2FB6765AD2C513092515BDDA54
            9128987C46107C79533901318004C20A87710EE3DC43296C8F8E783B6B868B1F
            8BBCC8428C54DC34B1DA23807E9E24649A4656EE47A458D8FAC0DF6FD10E23FA
            1A7E24E5F1515F72AE67C7B8A5F4F0A4AB8982CEE73D716E5C6FD0DECF1DCE3E
            DA2993B0716D2DE47D5D416560A0BFD36CAA10FF00E01C87FF00ED301BFE0239
            FD67CFD78EBD5779B3C74948E346EDD9CD93526AB945ED1B6D3C79778A7ED3B8
            78DB359A92726B6418109E2169E869E66D515BC0670C9DA043B5535F3C04EA37
            A7F9DB4F70AD74A34DDAB5B62DDC5EB564ABC23A928922A7237F4C4148022D53
            B255D77660451956ED9B3968AAADDB4C46C5B872CD37330E27E2571FE5928B4B
            7696C723D24AD95E742B4DA00B7C5A452526E91B3D3B49080CDE8FA54B0A07C7
            2F820F8ABE06D9B6772B059F23E242458E4E478033CB158B4AFD108CB5A4D1A5
            CE3C4ADA55987A7B30EF1C46E84B2246D62381100F58E558F3E39CB6BE3FCFC2
            EB1D5ECA2FE8BE4A152B1CDD8A61B8C8B5858C76F1E328E651D1E55934D79674
            AC7BB70E557E53B666C41A79368F1590F2B1F595F5497979F28D1DF32A9FFA97
            FBFE40C8472FF844F00E1B9DBCE3F7C32F7B7F60C23BB38EB486582198AAB342
            D24F756FD5220203F42B2A9DA96EA056B46331E23F1DC25FCD8EB93793DC40C1
            6636B0472468E403E8CB49345B75047574860347641040D41E332F9F5497979F
            28D1DF32E9FF0077FCCBF77FBF60C7D525E5E7CA3477CCBA7FDDFF0032FDDFEF
            D8322FFF008B3F0DFF00D0393FF41B1FFF004BF3D1F76F17FA6E717FF3196FE8
            D6FF00FDBF7FF6FB0D6A0F199B6D79D5139195FB247BCBDBC82BED63CE912CC4
            42B01190920661E3ECE0D13230C8C791BBF29044E819FB77ED0E72F93511029F
            CA92E1B935CAD89D21A0A336ED798A5627B74083654166E8544583B7D638A5E6
            D93D95144E57048E670ED1DC82E8B7311676AA484711C341760F50B078B78E1C
            17966173D9CB3B9BCB3B6E3900BACA4390B758AE61B7656F472C6914B324AB23
            23468B1C8CE64D02AA597722C4F38C065EC6FEFE09A6861C62096ED2E62092C7
            130255D551E40E1882802B16EB1D240DAEE61E3330AF7A9672E1D3A59746F50B
            1E928713119B3A6D68CD9B80FB89A267F1EF5E1881EBEC2BBA594F8CE39E37D5
            25E5E7CA3477CCAA7FEA5CAFCFC2CBC360CCA2C793305240616167D2C010363A
            B221B47CC6C6C8F56FB08E9F1738BEC8F43953A3E62DA0D1F2EE37760EBED807
            5E607715A83C770EE01F1FB9F9332F9F5497979F28D1DF32A9FF00A97EEFF7EC
            19E531EA5DCB768E9172BDE2124D248E063B17D4CAD91AB9287BA9AC68F62C1E
            1483F08B776829F11C3395F858F86CCCAA6CB92A06600B3585910A090093D391
            27437B3A0C740E813AAE478B7C5C900C395009036D6D0686C8EE75764E86F674
            09EC740915A79C6462E25721D0E4BEA18FBE9A352859D6724F2B96B8A6EA9D76
            6D2C11A8B470B9982AAF758CC5F31908F916C9AE265DA91E799AAB39336174BC
            9DCD8CC3662C33F8AB0CCE3261716192B68AEED6600AF5C52A875DAB00CAC01D
            32B00CAC0820106AC7B3BBB7BFB5B7BDB590496F750A4D0B8D8EA49143025480
            410080411B07608A6318CC9D7AA98C6314A6318C5298C6314A6318C5298C6314
            A6318C5298C6314A6318C5298C6314AFCE9794630915233124E91651F16C5D3F
            7AF1C1CA9A0D9AB341470E1C2CA1840A9A48A499D450E6100290A6111000EF9F
            3B5E7A72DACFCCBE46DD36A4A3D79F420D9F3BAEEAD81580E9235ED7D1AF1C04
            2905A1BF899499298F3D3EA185458F2D20BB705018B462837DCBF5057EF62F84
            3CAC7D1CE5566F51D09B53C83A6E7326BA263D2A69313A4A9440E9A80539BC2A
            104A7208F888629800C1F39BCD78F1DB2F751C788C344EC96D7026BDB8507426
            68D963855B476550FA46E93B52594E8B28AFD5EFD0CCE0785BDBAE7DE215EDBC
            57398C53E3F8F621E455636115DC725EE42788329E99AE425A4225521D238A54
            042CCE0B18C66B757EBD5339AF8EDBEAFBC66DC748DD1AE24566361A6CBB678A
            B42B851BB2B0C29D42126EAD30040382F0F3F1C2B47BC20A673A1E548F9A0A4F
            DA35708F0A633D369753D8DD5BDE5AC8F0DC5B4A93C32212AE8F1B0656523D60
            8FB558ACEE171BC8F0F93C1662CE0BFC5E5EC6E31F7F67711AC90DC5ADD42F0C
            D13A30D1564761ED1BF3DF7AD42F38F66D73746D2A56DBA8AAAAB5BD8FA4F585
            CA185C0148E92656089712246AF53218E545F333383B37C801CC283B41644C3E
            220E432CE31D1D607D3BA4354A0F965DC1ABD5F9EAFB655C18E730316FB06E92
            0D114CE7EE2641AA5240D1028089114902B72784889485E4ECA03C42BF7CAF32
            CFE4A550B2DF5FC975228F2579C2C8E07B831EDAF56BD95FC5C7C2178947C13C
            6EF14387C2ED2DBF1EE699DC5DACAE76F25ADADFCD1DBBBF73A66842161BEC76
            3D54C63190DAA6E9972FCE2F78A7117FD0B5AFF64EFF0029A32E5F9C5EF14E22
            FF00A16B4FEC9DFE5E1E18FD62F8BDFC5DC77FCC92A7DC53EB7F9A7DCDB3FC6D
            6A9A318C651F501A6318C52B42BD233FC42DFBF1BB2FFD4DA2E5ADE552748BFF
            0010B7EFC6ECBFF5368B96B79FAD7E08FEC59C37EE52FF007B2D6DEF07FAD3C1
            FF00024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C6318A5318
            C6294C6318A5318C6294C6318A547FE55EB391DCDC6DDE7AAA1D60425B606AAB
            E54E2973000912939CAC4A47479D4037A8C883D7087962F7288A5E300390440C
            5F9B03D64F235E3B8E906AE18BF60E5764F993B4546CED9BC6AA99072D5D3754
            A455070DD64CE8AC8AA42A89284310E5298A201F51E30018A2510EE0601010F8
            C043B087FDD98FCEB4DD34EC7AEAF769E5CE97AEB995D617378B4EEDC828940C
            E1CD0ADAF5631E52E00D1120AA6A9D99C1FD2330E8855420EC0BBF74ECE8C549
            352B0A3FC68E2F7795C7D9E6EC6379E4C48992EA18D4B39B4959584CAA364881
            D4FA40013D0E5CE9236D7E917E87778D181E11CB3907875C96EE0C6DAF397B1B
            9C1642EA4586DD73D64B24031D34AE422BE5209635B4672AA6E2D96DD7AA5B98
            96B3B78C63355FCBCEBF6D410C03290411B04104107C8823B107DA298C65C774
            9FE9AF6AE5AECD81DABB1A01F45F1C28B30DE5645F48B214DB6D29A877C9A88D
            2E141D1008FE045E3732772946E459B24CD1735F6EB252CF85CC5E630582C872
            1C9DAE331D0B4B34F22876504A4316C75CD330042471A9EA763DC68803640A80
            789DE24F18F0A3876639972BC84365618CB5964862678C5CE42F0A37C571F630
            B329B8BBBA97A638A35EDB62CE5635665F7561A96574C6AED0B539E4956D3B29
            A6ABD7E946CE1033670CD4D913B67BCB18F72D9500550771B113B1D1CF115801
            64DCB558A7290C1E0278996ADD55755DA2136F406CC4A25DAB48B053E1EBE498
            41013B08D9E82712291E21DA891448C4CE235660EA37CE852090ED209B3057D1
            CE412AA9CA1BC53C05DE0B9EF22C63DADC2476F78C2D99E27066B6645304CA74
            4324B190FD4A4EC923ED7F1A5E35E7F27CBFC56E79CB32903C57BC9B936573B3
            22AB145394BB92F02C474498944CAA9DB617434354C63195EFA09FFCCCBFEEDF
            F2555DE8DFEC1FF9A7F27BC7CF4CB97E717BC5388BFE85AD7FB277FF00FEB2A1
            6B359B05CA7A2EAF55887F3D609B769B18B898D41474F1E3958DF5A44D3200F8
            484280A8B2AA09516E89145D751345339CB7D7CE7D0D755F863AAEBB011EE2C1
            29A592A429626B18928EDC2D0F094C7B56959166D5148CE1C9593B74D5F2FE4D
            20F211647AF5429536C712DFFE13E132D79C0BC5D92DB1F752A3E02CA242B0C8
            4492C375F199638BE4FEA8E90C6D232AEC81AD8DB0DD8DC3ECAEE6E3BCCCC56F
            3386C7DB22908DA668E6333AA76F94CB1A962A3BEB5D8922B3EF8C6328036F38
            241865047620C6FB07D87E4D575E8E4FB07FE6B7E4F78F9E98C6302DE7274219
            493D8011BEC9F67D2D3D1BFD83FF0034FBBDDEF1F38AD0AF48CFF10D7EFC6F4B
            FE4FFA1946FF00F9F972D6F2BA7A64EB0B5EB7E3C385EDD16EE19E5E6E72D718
            F8C904146AFD08671130308C1576D1729166E77DE835A41B915294C762E9A2DD
            8015000B161001F50E7EB7F839677361E19F0FB6BC864B7B84C442CF0CAA5244
            1296953A958065251D4E88046F4456DFF0D865B7E2F848A6468E45B188B23021
            97AF6CBB520104AB03A206BD74C631966549A98C6314A6318C5298C6314A6318
            C5298C6314A6318C5298C6314A6318C5298C6314AE9DFD5DC7D5DBD63F0F6CAE
            2E41F51BD2DA8EDB33AD895E9BD91351265236CC48808C460235E18A64DE42B8
            919171FBF641B14DE4E41BB462E5A3658CA3172F137EDDDB46F632B8F645610F
            74125043FD41CC616C072BBDBE5D9E3A54EBB9776EB23972BA83DD45975E65EA
            AB2A71F84EA28731CC3F08888E6B9FC223C4FCFF0087388C1A71DF8BC57B9ABA
            BA47BBB9852E043059240CCB1C320319695AE14167560AA8405DB750AE7C44E5
            792E2F698F6C5324575773CBAB865EB6856DC44DFA9A9F921D9A45D31DE829D0
            D9D8F27931AA3813BCE59FDAF5DEA7DA1C7AB6492AE5CBD2D1A5EB12D4378F9C
            980E2E96A14991B231BE0376F0B3AA4D5663840CA18ECCEB1C550AFD3F0CE241
            D8112DA722761DC7C4E4FAF1B26EC03BFA841916FEAA22221DC440640BD843B7
            71EE22132F19A1F90F13F9364EE5EEAE8E3C4D212CE6DF1F6F688CC744931DB2
            471F513B24F4ECECF7F3353BE1FF00A223F0B1E15898B098AF12E7B9C7DBC622
            B68F338BC56667B7455E98D22BBC8DA5C5D7446A02C71B4CD1228D2A6BB57F1C
            78E3EF087574AC658F71D476EF202623542AE5837F235AA2EBB70E13382A828F
            AB318E26A7648A81C8503347D715625E904E94845B841414434DDC47E69E85DB
            8BC66A2A35557D53270D0E56F55A42F1F111F04E21E25B0F78EAA9E0CE11E42C
            4304415F4499A46AA9B14D55D8B670D59BC51B6653247F109CB869C9DD1CB365
            8E8AA3B0E05B8A898F84C283C5C59BA4847FEC2ED57590503FCA4D4317E1CB23
            C2FF001BF9762392E0B16B1E2E5C66472965637B02E3EDE19E58AEA78E02E6F2
            245B96922EB2F1FA4959037D32904835F726F85278D3E2DF26C5DCF891CC2F39
            4A35E450476976B1416368B7322472B5858DAA41676523020B35BC09D7D2A24E
            B000AD15F29795BA7F8E9111EC36134736998B324B9A369314C98C8BE7B1E81C
            1371212249170DA3984491731102ACF56F2CF16058B1CD1E8B37BE6D5C1F546B
            8D5F6A9B1FFF001F47FBBFE6BFBDFDC7D51F7AA3B95D7E51AA92CA9D44D9EBEA
            A366A438F704103AF32ECC927F1105CBA70B887FF51638FC395CD927F163C77E
            6763CEB3B89C5A626DAC30F76F8F816E315657D3B880AABCB2CD7914CDB79031
            554E84552ABA66059A07CBBC40CDDB67EFECACD6D22B7B298DBA092CE0B891FD
            19019D9E6473B2C0B00BA0ABA1A3EBB9BFAA35C6AFB54D8FFE028FF77FCD7F7B
            FDBF1FA9F546B8D5F6A9B1FF00C051FEEFF9AFEF7FB7E3F5532632B6FD3F7C41
            FF003B82F57FE9DC3FAB5FFB4F77E7DF719FD313927D9D87F56D8FBBFD47B855
            FA6A0EA47C6535A59C42FA997D488CD384589AD0D226B478A6C654FE148F38B4
            315A4835620AF8087729B37A8A026F2EEBCDDAA6B2E9DBBA6749C244508622A8
            AC429C825F09C8621CA0202530770314C5101010F50808087A8731299B09E39B
            A70F74169678ED63B874EB55EBF70E17507C4A2AB2D548951554E6F84EA1CC27
            30FC26111CDABF837F8A39FE76D9FC4E7E2C7B9C6C36D756F716765059752CEE
            F1CB14D0DBAA42DDD559196356FA60C5BE4EAD8F0D395E473E3256B905B726D1
            61962921812025656646474882A103A54A90A081B0C48D6BD95E6A7D6324E567
            AFF5F52DEBB707151774EAAF08BAEB283EE9D559562651438FC26398447E11CF
            1BDA6B537C9AD0FB7C1FF44603BFE51F47FAF392C4007D438EC1DC07E2F73F2E
            6CC1C2E2092CD8BC796624B1F89DB9249D1EE4C7B3E437ED3EAF3AB34D9DA124
            9B6B7249D92618C9249077F4BED02B8D3DA67537C9AD13E69407EAFCF2D8EA9D
            6514E917F1D40A6B17AD8E0A3776CEB108DDCA0A07B874574589154CE1F01886
            2887C79C81D83B88FC7EEFE4C00007A830B85C3AB065C5E3D4A905596CEDC152
            344104460823A46883BDD059DA0208B6B7047704431EC11AEE0F4FB857400028
            001400003DC000EC19D718CC900000000001A0076000F2007A80AF4D318C6734
            A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A631
            8C52BB4BFF0010B7F34A7E61B317776FB33B77E13CFF00E95779B445FF00885B
            F9A53F30D98BBBB7D99DBBF09E7FF4ABBCD2BF862FD43C27F8466BF031B54978
            CDF5360BFDADFF00E0DA57AC6318CD13AA129921F895EF99D1BF8C9AC7E904F2
            3C6487E257BE6746FE326B1FA413C94708FAF1E2DFC60C47E3D0565B03FAF788
            FBA565F8C47522FAA17BE99FFE02D47F36472BB72C4BAA17BE99FF00E02D47F3
            6472BB733FE2EFEC97CCFEEEDF7F7A6B21CCBEBA339F742E3F0CD318C6571519
            A66C0B8D3EF79D1DF8A5D77FD5187CC7EE6C0B8D3EF79D1DF8A5D77FD5187CDC
            AF81EFEBDF2FFB9B63F8C49575F833F5666FF835AFF7AF5CDD8C6337DAAFDA63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314AEDAC1DD15403DD14CFDBEFF847B7FB7318FB2239
            E44EC4BE45482076CFE32E76862F5BA8020745D349B7CDDC24601EC2064D44CC
            51F57C1F973677F18087ABFE3F1FAB2B73955C71E13D9ADBF455B8AE513AB6EB
            3A8A6E1DBB637686ABC95912404AD48F9C42CB26F9B3D3A7E4C1BAD28D62C8E1
            402148EDD2BE453F27AE7F08AF0E6F79E60B0D716193C5E3A6C25D5CBB0CB5CA
            D9DACD0DEA42ADABA60C892A3C11F4AB00AE19BE5750556AE3C47E353F20B0B2
            782EAD2D9EC259598DE4A2085D271186FD54860AEA635E90400413DF60039B3C
            65CCFD2B9D353ED9777FD25D23F66B1F4AE74D4FB65DDFF49748FD9ACD37FD22
            F907EE9782FF00C4F65F9FAC7CFF003D33FE00644FF95B8F7F5B41EEF77BFEF1
            F655336495E1D46BC95E50E906B1E81DCAE9DF625F9D32008895A450AB2920B8
            8000F623660CDCB850DEB002246111000EF9609F4AE74D4FB65DDFF49748FD9A
            C9D3C48D07C49A1AF256CD0D6088D856049008D7F6C35B632DD2F12D9DF753D1
            E29C60A2CA0C5E024632A09C6B278F1227935955904C842CCBC3FF0001B36FCB
            F033DC723E2525BD8E4AD2FE78F1F9A82FEEE48ACE78E768E1B7847533C8102E
            C90ABD5D449034735C7BC3EBEFA338F964CA619A3B6B986E644B5BE8EE666582
            4490AA45180496202EC9001277BEC2AA73AA5C73C67C9E074E103A6DE535E559
            D315443B9174507734C15314DEE789374D564CC4EFDCA004308014E511AE0CD6
            672934F71E368541A3BDFCE616023601639622E921606B537906E1F8A6559BB4
            9B74BA0D8C49014122A91AF4AEDA3A511455068672DDBAA95660F173A6A771ED
            C9777DBE0FE12E91FB321FF00FBD999F16FC0DCCDD73ACD65AD390F1782D7317
            4D908A1CAE621C75E4467D19124866036AB2F5847462193A490A76A3DBCBF81D
            ECF9EBEBD8725898A1BE94DCA25EDEA5ACEA64D17568DC770AE4F4B0276BA274
            762A99B19733F4AE74D4FB65DDFF0049748FD9AC7D2B9D353ED9777FD25D23F6
            6B2B4FD22F907EE9782FFC4F65F9FAC7CFF3C63FC00C89FF002B71EFEB683DDE
            EF7FDE3ECAA66CD88F1F635EC368BD3B112481DAC8466B1A2307CD95289546EE
            DA55A290708285100103A4B2674CE02002062887C195E1A2B8B1D3E0D7B8A714
            FD9517B5ACEC5C15FC4D667360D7660A772C4A2E4AE53AEC4B58952608D013F3
            95117684832279203AEDC4A5ED96CABAEDD93655C385D26AD5B2465555D65089
            A28A29104EA2AAA8A0948421085318E731808520098440004736AFE0E5E195EF
            074E419AC96630D7FF004463B7B58570F7C97D0431DBB3CB2BCF70A162576665
            0A80B74852588D8156CF86DC5EE302991BCB9BCB1B9F8D88A28C594EB711A2C4
            59D9A4994050C4B01D237A00927C857938C8E8EB973C6564E156ABEF3D622B22
            61229E46E306E530307BA5059BBD55138947EB4E0450DE130094DE1300943C7F
            A70F8C1F2E7ADBE7544FFEA73611B9971246646E4D8156525595B2B621958100
            820CFD8827441F5FDA35609CCE2012A7298F520E8A9BDB7041F5823D27623D95
            24FB87710F8BDDFCB81001F50E46CFA70F8C1F2E7ADBE7544FFEA73C969CB7E3
            34838499B7DE5AC4575CE09A455AE306D8863987B149E55C3E4520318DD8A428
            A802730814A02610012732E25232A2726C0B3310AAAB95B12CCC74005027D924
            9035AD935C8CCE218855CA63D9988000BCB72492740002424924E801522B19DA
            45649C249AE82A9AC8AA42A89AA91CAA26A10E50310E439044A6298A206298A2
            20251EE1DC04073BB924565750CA432B00CACA410C08D8208EC411DC11592041
            1B0760F7047911EDA6318CE694C6318A5318C6294C6318A5318C6294C6318A53
            18C6294C6318A5318C6294C6318A576D5112A4A983DD2A6710FBE05110FF0086
            6397775CE77606DCD8B6DB23E70FE525ADD3A7328E1532BE6CCDB482ED236390
            1376F0338B8F41B47B248A052A4D5B24400FADCD8CAFDFC8ADEBFF00E129DC3E
            3FAC3662EEEDF6676EFC279FFD2AEF34C7E1857571162B86DB4734A904F79959
            66895D95249208EC842EEA0E99A312CA137DD43B6B5BAA57C659645B4C244AEE
            B1C93DEBBA2B10ACD1A5B042C07625448FADF71B3AF335EB18C63343FD23FD9B
            FF0038FE5F70F9AA82EA6F69F9CD325A7072EB3D4AE506A85611EAED92B158DB
            D4E6DB26A9936F270D3FDD9AED1EA402245D241C19AC8A0450A209BE64D57209
            5448862C4BC90FC4AF7CCE8DFC64D63F482792EE0377736DCDB8A4D04F34522F
            20C4F4BA3BAB006F61561D8ECA9525483D88EC411E799E3D2C91E7B0EE923AB0
            C9D9E995883A371186EFDFCC13DBC8ECFBEA5C7557BA4F4C6FF85A7397CE3E87
            6A94989751B160AFEF324A4EBB91712929E4400A1E76E5BA11AC4E7318DD908E
            4813F27E35BC75819625D50BDF4CFF00F016A3F9B2395DB99FF192EEEAE7C4CE
            62F35C4B2B2666E614EB918948A02238A31B2748888AAA00D2803B0EC4E439AC
            D2CBCA734D248EE56FA58C75313D2919E94503D41540000F5014C6319597A47F
            B37FE71FCBEE1F3545BA9BDA7E735E647C8BF897ECA562DE398E928D76DDFC7B
            F64B28D9E327AD1522ED5DB5708988AA0E1BAC99154564CC53A6A14A72980C00
            397B3CF4DB56F90E11E95924E45662EB6E975FAD713B4315109064FE8CF6CEFA
            347C9109E06AEA61BB15962220911441A99A1C866CE1648D435972FCE2F78A71
            17FD0B5A7F64EFF2FAF0AF257D6DC0BC5F482EEE224FF07EC1BA5246550D25E9
            824651B014B412C91B11DCAB11BF55589C46E6E22E3BCD024D228FA1D6DAD31E
            C5EE3D13687A8B46ECAC47A8FAAA9A318C650DE924FB37FE737E5F70F9AABBEA
            6F69F9CD318C604920EE1DC11E44330D7DFF0070F9A9D4C3C98FCE6B483D2BAE
            B3F6AE393F8A9C7EBBF428F7E99AC4019C282AA8D20C216B936DD80287EEA190
            68EE6DF24D087398AD9A790688F81BB74124ECBFB7C3F17FCF2A8FA46080686B
            F88FCAE4B7F5368D96B99FADDE0CDC4F75E1870E9AE2579A5387850C921EA765
            899A3452C7B9E944551B3BD01DFB76DBFE192C93716C2492BB3B9B1881662492
            1768A367BF650079EFB5318C659F528A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C52BB4BFF10B7F34A7E61B317776FB33
            B77E13CFFE95779B445FF885BF9A53F30D98BCBB8085D2DE0202021689F01010
            EC20212CEC040407D6021F086695FC317EA1E13FC2335F818EFF00BD525E337D
            4D82FF006B7FF83695EAF8C63344EA84A6487E257BE6746FE326B1FA413C8F19
            223892023C99D1BD8047F849AC8FA83BFA81FA6223F7803B88FC401DFEF4A384
            7D78F16FE30623F1E82B2D81FD7BC47DD2B2FC623A915D50BDF4CFFF00016A3F
            9B2395DB9627D50804394AF44404006895210EE1EE876922F70F8C3B808770FF
            0028043DD01CAECCCFF8BBFB25F33FBBB7BFDE9AC8732FAE8CE7DD0B8FC334C6
            3195C54669972FCE2F78A7117FD0B5A7F64EFF0029A32E639C4530705388DDC0
            43C2CF5A147B947D461D4F21D807E21F50FA847BFA87E21CBC3C31FAC5F17BF8
            BB8EFF0098A54FB8A7D6FF0034FB9B67F8DAD533E318CA3EA034C6318A56853A
            45FF00887BFF00E3725BFA9B46CB5CCAA4E919DFDA1AFE3D87B0EDD97001EDEA
            110A6D1447B0FB9EAEE1DC3D5DBB87C6196B79FAD7E08FEC59C37EE52FF7B2D6
            DEF07FAD4C1FF024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C
            6318A5318C6294C6318A5318C6294C6318A57430018A628FB860101FBC21D872
            92791FD2E6D96BD8D62BB69BB5D4D9C45B655F4F3FAD5C17978D3C34A4A383BB
            91245C845C4CE11EC7B87CB2EE5B3770D581E3D3541990EE53453506ED543780
            873FFD9218DFEA808FFCB32FFC9CE6BEF1D81B4EDC8D6B61DAE8D4A83B04AC2D
            62169D37235A0346C5BD598A32328F221662FE41F49F9B03E70478E56419A8B8
            B46844D24C04FAF3F088C9787D61C73191F3AC4DE659A7BD90E220C74BF17BC8
            E58D14DCCA2E4B2AC70F4346B22B0903BB47FA9315EA5AF3C44BBE396D8DB55E
            41673DEFA59DFE251DB37A29D5D147A57594B28540AC81D5BA831643D07A76BC
            8FF528B925FCA4D41F39AD5FB0D8FA945C92FE526A0F9CD6AFD86C859F4C3EFF
            00F973DC5EAF73F84DBAFABFDF78FA61F7FF00CB9EE2F57B9FC26DD7D5FEFBCD
            33FA39E05FEE33977F5E5BFF00D2FCF67DDAA5BE3FC03F68F33EAFF1F8FF007B
            FBDFB7F7FDB534FEA51724BF949A83E735ABF61B26270FFA704DE9DD8B19B536
            C59EBB332D58F385AB15DAA1A49DC6A526E9B2ACC25A525251844ACB1D9375D6
            F338F463412076A24F4EF47CD4A8AB4D1F4C3EFF00F973DC5EAF73F84DBAFABF
            DF79393827CC9DC4C375D435C5EEED3F7BA65F6442BE74ED724EA76521A59D22
            A8C44846CBC81DCCA010CFCA8B276C967676476AE945C112386E929938F0E33D
            E05AF33E3E22E25C86DAF1F256B1E3EE721918EF6D2DEFDE545B49A6823F424A
            ACE558312E11B4C63602B3BC6B21C0466B1E1311928676B9856DA5B9B959E18A
            E199442EF1A95240935DC8600FCA2A6AC3B9B9C163F259FC35EA99628CAD6C08
            58A0805D39D23C34158219376E1EB141D386293A7514F235CBE7EA26F508F7E2
            ED1742D5C220545B2C85707D4A2E497F293507CE6B57EC3648CEA55CB4D9F43B
            C4469BD67637F4C689D6D9D8AD13D06B99A4F3F732AEDEA4C621AC81132BA8A6
            8C9AB04DEACE235745D3E51F91BA8AA68355137553FF004C3EFF00F972DC3FD2
            65D7F5DE667C61CEF82839DE622C8717CE5FE5E19963CB5E62EFD2C6D67BC48E
            30FD3149E93AA4403D1CAEA9107915890E4FA43EDE6790E0DF47AF12EB137F73
            7B1BAA5E4F6B70B6F0C932850C42B16EA65D74BB0440CEAC7449EA3353EA5172
            4BF949A83E735ABF61B1F528B925FCA4D41F39AD5FB0D90B3E987DFF00F2E7B8
            BD5EE7F09B75F57FBEF1F4C3EFFF00973DC5EAF73F84DBAFABFDF79577D1CF02
            FF00719CBBFAF2DFFE97E7B3EED457E3FC03F68F33EAFF001F8FF7BFBDFB7F7F
            DB561BAF3A4B6D175668E1D9B79A3C65492748AB2A5A7BC9C999E7AD933F8D56
            6CCB295F8462C54745282059055677E682A0B8060E8520415B66E42F18EA3BDF
            4BA7A88EB8D65083089754B956C819E056A4E059AB1F18AF991DC23E7CCFD18E
            1DC5BA6AA394CEA3276B1915D176441CA59C5D79CC5E47EB9B2C75899EDABBD8
            9366E9155E415CACB316A82956853FEEEC1DB19B7AF4A891CA227445DB03347E
            DC4C0B35748AE44CE5D5450ED6D6F748A8DD18A476ECED95A83B234494301D44
            9B4DC6359241339BC24F11C893A294C6F017B98047C25F73368BC071E13729C2
            F2BC0F1DE3B7D646EE0861CF5BE5E7F8D4D7B653ACB1C3E86E636015226F49B1
            1AC2F1C8CB26D8F4B2DA7C00F11CAD8E5F1F8CC6DC402548D32315E4A6592682
            40EB1F4CA8DF2429EBFA511B0621813D8AE7F1D749BE4726E16234B46A674D80
            E604575276D6D95553EFF58651B852562A461F8485595294407B2860F58F8FF5
            27B92DFCA0D47F392D9FB0B9A37EE1DBBF7F57F70CEB9246F82EF858CC585AE5
            90124845C93E94120E87523368790D9DE8F7EFDEB247C2BE2658B7A1BB1B3BE9
            174DD2BDF7A1B5275EAEE49D6F66B38FF527B92DFCA0D47F392D9FB0B9E533E9
            33C8C55D229BDB4EA668D0C70070E519BB63B5524BFCA324D8D4B6C55CE01FE0
            A6770814C3EA15481EBCD177AFB8FABEF0FC78C27C177C2C575636B96902B062
            8F9293A580236AC5514E8EB44060744F7F2D17C2CE26A41305DB0041D35D368E
            B5D8E94763AEFEBEE75E75C03C6AD035FE376AD8AD7306F56975D272EE5A7E79
            C200D169D9E90F240F24059956709B244883768C593422CB0B762C9B11770E9C
            82EE97E7EC077F847BFDDF7302201EB1CBF3158BB1C2E3ACB138CB78ED71F8FB
            68AD6D2DE3D958A18542228662598E87CA662599B64B127753FB5B582CADA1B4
            B68C456F6F1A450C6BB2123450AABB2493D8772764F727BF72C631990AF45318
            C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C629
            5DA5FF00885BF9A53F30D98BBBB7D99DBBF09E7FF4ABBCDA22FF00C42DFCD29F
            986CC5DDDBECCEDDF84F3FFA55DE695FC317EA1E13FC2335F818DAA4BC66FA9B
            05FED6FF00F06D2BD6318C6689D5094C90FC4AF7CCE8DFC64D63F482791E3243
            F12BDF33A37F19358FD209E4A3847D78F16FE30623F1E82B2D81FD7BC47DD2B2
            FC623A917D50BDF4CFFF00016A3F9B2395DB9625D50BDF4CFF00F016A3F9B239
            5DB99FF177F64BE67F776FBFBD3590E65F5D19CFBA171F86698C632B8A8CD336
            05C69F7BCE8EFC52EBBFEA8C3E63F73605C69F7BCE8EFC52EBBFEA8C3E6E57C0
            F7F5EF97FDCDB1FC624ABAFC19FAB337FC1AD7FBD7AE6EC6319BED57ED318C62
            94C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6
            318A5318C6294C6318A57697FE216F87F7253F30DF1662EEEDF6676EFC279FFD
            2AEF368C72788872FBA27218A23EE7BA0201F7BDDCCB2726F887B9F58ED5B891
            8502D568A7CBCFCACCD62CD5882939F8E71112AF9676D5ABF5631BBC3464AB00
            5FCC1E33922B65965DB28E9915CB059BBA5750BE16B80CC6570BC56FB1B8FBAB
            EB7C75DE492F5AD6179DA0F8D4769E85DD2357658D8C0E3AC80AADD2A4866506
            9EF1771F7B7963899ED6DA6B88EDA7B959CC485CC7E9D6011B385EE1498D8756
            B40E86F64030B719C8DED3DB73E4B7637CC8B37EACC7B4F6DCF92DD8DF322CDF
            AB3344FE80673F69F27FD06E7FE9D507F43EFBFD0EEBFDC4BEEFDEFBC571CE48
            7E257BE6746FE326B1FA413CE3EF69EDB9F25BB1BE6459BF5664E7E0771336E4
            FEF1A6EC0B452AC74EA3D064D3B1BB94B3C4BE81565A41A22B1E1A3A119C924D
            5DC90A92028AEF1EB744F1CD1A35709B874578AB36AE663E1EF14E497DCD78C4
            76F85C9318F378C9E466B39D638A086F21925965768C2A471A02CCEC4003CFD4
            0E738DE27273E7714B1585CB745FDACAEC6191552349E367776202AA2AF72C48
            D0EFBAFC4EA85EFA67FF0080B51FCD91CAEDCBACEA69C5CD9D6AD830FB935F55
            E5EE710EEB4C6BB648CAEB0712F37112112F1F28CE44629A156907718FD8BF49
            0328C1A382C7AD1ABAAFCC924ED038D4CFB4F6DCF92DD8DF322CDFAB333FE33F
            14E456BE24729924C3645A1BCC9CF796B3C7693C90CF6F704491C914888CAE3A
            5C2BF493D0E191B4CA457BF9BE27251727CB33595C949EEE49E17585DE392394
            F5ABA32AE981D80DA274C0A9D106B8E719C8DED3DB73E4B7637CC8B37EACC7B4
            F6DCF92DD8DF322CDFAB32AFFA019CFDA7C97F42B8F77FABF78F9EA29F43EFBF
            D0EEBFDC4BEEFDEFBC571CE6C0B8D221F4BCE8E0F84752EBBEDF92A30F997BD7
            DC5CDF9B26CB1D5A80D5B746AA3F749A0E25E76B931055F8940C3E259ECB4CC9
            B26EC9AA0DD105171481551EBAF2628306AEDD9D26EA6B075ED4D0A15129D486
            AB99CB7A855E02B4838397C075D1838A691892C6209D4F0195235038945453C2
            26EC27376EE3B97F049E3D9AC7DE72AC9DFE36F2CECA7B5B2B5827BA82481679
            D669649122F48ABE90C6BD25CAEFA0B286D123776783F8FBDB6933175716D341
            04B15BC5149346F1AC8EAEECE10B81D5D235D44761B02BDC718C66EF55E34C63
            18A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5
            318C6294C6318A5318C6294CCA1F46CEACFCC8E6ADABA95456F8B2D22659F192
            84E2C1AA0B054083AE9E3E49292DA0D4AA4BA8C0803349F91AAC380A2EFEB045
            258DDBBAE7CD5E6605BD8DD7D9E75ADFC543CFD35BD33A9C6D914E8A9EBDA900
            83A008D820F9576C6AAC9212012047A24796DC6F40FB476D1AE52E8DDEC8D793
            3BDF99145D11CED97A0BAD67BE05E6BAD657681A044D150ADEEA2AD18EAB1172
            3251A056D291F6CF3E42A0AB23914731F62B2D35E1D5671CE1EA8B5A7ED3EA51
            CA3AA7B217D1FD3A61E729E97192F5474676C102B52A1D7B4AF207D17B2EFA63
            B6B71CBE946C98D8AB112BF924C7C20D9359A87EE4B9F32A5C35E02CBF31FA1D
            F25F6C6AE60F15E41F0CF97F69DCF405618164E7E6A8AB694D3C7DAF54895DA7
            67BE93089AD43DE6053660A48B89DA231878C211C4E2871923D3FF0098EF39DD
            D7A7A61720EC6E88E7664871F9DD1B7189132A42A6CFD6DA0F9154B9D9939122
            15BA63748F8887BFA6D9A8790608DAD28D2F84CCCE52F42C7180A0C69DD9083D
            0BB209D104EBD5AF2F6577BC517539545D2A9461D2074B7C9208F5F71B1BF68F
            3DD5B1F283AB9752FE56F51EDC1D39BA4C54F5354DFF001FD7BBC5DF366ECB67
            54919C9392D6B2D1753D893407BAAD235384ABD7EF128DEA71112C2AD67B4CC3
            A124D393B560E1CC643CE6D3EF7D90DB2E18F2F58EDE87D0327CCA829ED3AD38
            85250886AA4216DF12BDC6215DCD2D6C72D2C2C28658E6F4955F35AD329BAED3
            E71B4BB29558C9CA91EC00211AFA93FB1E8D8DB339276DE7CF4DAE474971BF93
            F62997976B1549D4E586A1073D7A7C89CB64B1D2F66D38EA586912B7139575AC
            301310F3F5CB14D4B49ACF256BB14F1CB4CF61F63D9D587951CC4BB721786DCD
            26B1F62DDBC6B891944367C6C6444649CC3180B686BDB7D5EFC9D6409527F648
            2B0AB1A688B1D79BB44AC4C549555FA4EDD47FA5E4FED5111FBA8566D852A142
            EBD5AD0D823FEE6BAC84E806358FE485EB0574FB057677EB04F63EAF303CEAA5
            F6F7557F6467A3F973AC3837B217D0115C8CDC214B1A2545B5374F4BC4C986C0
            999380AC79CDAE3A59CD6E33CF64E19FA2B7A42450F33224559D79249521CD62
            FC8BE6BF5BBE0CF4C9DEDC85E6123A669BC848ADFBA6AA9A85D57EBDABADD5F5
            75D59D0926D702C9C5D464A5628CFCD2A8362345A45449DA29F88CDCA64C4C23
            14BAA4FF00EF4AF4E5FE6F891FDAD6C6CB52F6545FF54BDBFF001E5A57F4D496
            7C989089091D453B0EAD376FE51BDD727A4B423D1C7F2BA3ABE48D9DB2FDED76
            D7AF677E75C3725C87EBDBC94E24F0277FF04227495A55DB3C7A35B7903276C8
            ED430089F65B9B54A37603051374998A519471ABEDDB8A88C524AB22AC022A1C
            1531CB9547C29EAA5EC8BFA83CE6D8AEF1714E3F5D2574A0D74BB09098A569DA
            612286D2EEC6C617CD57B4CAC5A32BE72E6A736453D1A771E6E0D8875FC05728
            0A9AA7E883FF0054D704BF11509FA4E5B338DEC41FBFB71F535EC1DFF74D0FEA
            F73FF9AB7EE71E863062D28F95DCF65F5007B6C7BFD7BAF9529D329F4511E820
            8DA027BB81A3ED1AFB5F31A96DC98EA93D43B8E5D4FBA55708ED535AEA19B6FF
            00D49C1E5795D5F468F559976B6DADA7B36C340DE68D62D0C0EE108C8D51E413
            8690A304E168D65E4BCEE2D651254873D9375F0E706FDE9FDC1661BE78DF315E
            83D86E378EBEA2A8F6CD5A8FB5C70D7AC50B747D248045C980B6072A38846064
            DD07EE88948A10BF5AA9B2873ADEB96D43F6479D2A7615A574E269A2DF866BB8
            B03C30368B648C272F364A536ABB7AB8A6DD24A19B3E6323267153B3460ED05D
            4EDE3001B0DF65B164868AE9914B817B20DD198B4F2A75A37858E32C995E3E08
            9A46D19493708B71382CA3562D924C1DB84C8649BACF18A4A988776801FB0008
            B28501403DBA7B6BB0F203FB7CFEDD3A1435B80A34C14B76EC4F50077EAF2F31
            F7BCEBC6BFEFFEBF9BDB8E9C16DF5C0E8BD2765AE6D8E1CEB5D8FBDA56DACF50
            C29D4DD3613CBCA4F1A1222E73716ED9439EBEA40AA8358B4148D4963AC9A6A0
            AC0B10B539C18EAA5EC8DFA8E21B39C713DC681BC25A815A7A17B34D53F4F524
            D18A5EC96752B40D82DB2F126922BC2D3E745618F05C1A79B240E452172DFCA6
            B7BA5A4149D6FA5A70662261B2ACE451E1CE9474BB45D33A2E1B04A6B2859441
            1708AA52A88B84D0789157454294E92A074CE5031443332DEC32BD70DD44C3E0
            F49F153FF2BC8AFCB9CE9B718EB70587CAF95BD10A0F6FE5FB75F40AF44A7A23
            3D047492BE7B751ED3EDEDFDBED983D417AD97303536D8E3FF004D5E1AEAAA96
            D6EA3971A0EAD67BE271FB4633B56D7DB6ED7458AB24ED3AA104C25E36AEF25E
            3DB2AF2E563B4CF4BA9AF6935255B2AE9B4A94259C56E2F6DBEA89D793A495BB
            535DFA96EBDD39C80E38ECE9F240C9CDEBC8BA84548C3489D3F4ABFAAC35BE80
            C2AF19077F8F83692123051B72ACCC405B19474BA31932E4F1B27310BC19C3A7
            F1DA87D966723E33782E48BB15F2FF00C8761ABDED8845A00486C8A9A36FD62D
            D8B87606210F37AB5C1ABD5DF0AC88491A518C5B013AEFDB32716FFECABAED40
            AF74AE97AA5A5DC705BF606EFD4F1BAC63975133492D3D0126F2CB60938F6C05
            3AFE6F1F4B8DB0327EFC0126CDBD32D19ACE0ABC9B36EEB8DB1577EA20A9200E
            DAEDAF31F9F7F9AB9D2868D3D1A90EA09623B9EAEE4A9DF60BEAF75681F4D6DB
            A2EFCD4DADB76EB1982CFEBDDAF49ADDFE9B2C04F22A3CAFDA629ACBC699DB63
            18CA319045BBA2B7928E5C41CC73F49CB17442386EA90BC9594FBD02AAF6FA87
            482E1044DDD074DE69CEBAB45959A4F133A4B0D4AEBB4AF972A0AA521C007CDD
            C5127AB8E199FB785568AA0A904487288DC1677A9D807DA01F9C57998698AFB0
            91BFB4754C6319CD714C6318A5318C6294C6318A5318C6294C6318A5318C6294
            C6318A5318C6294C6318A53282FA6F743B4FA7C4F735A6C393C3B6C3985535EA
            E2D4DA60285ED79E59EDE9E79F796F6D7B97D167846EA29F9B0A35AF17A37C7E
            701E79E06B7E7DBD603DFDCEFF0097BE7CB4BA6B700F869CF2E4BF3420B985CA
            13718E235CDA5C4B51E4C2FF00AAE85F45B2560BFDD59CCB0173B4593D6B25E8
            B6B1AC5CF918804DC37F3CF1BB1326AA201D6E4064F93B3F2BA4EF5AF2DFCFED
            F56ABB6304ABFCA2AA3A49D2F56FE576EDE7D8F7FEDADDDF47DE95C9F4A2D1DB
            3F4B8EF30DFA4D93B516D966B09F5917581624AB542B3543410C37D1FEC40922
            F6AF79F0C88C9B20303DF35161D90F385A0E71C7D8E36B7E2CF53987EA03A9B9
            12785D7B5AD85B2AF558E31069A48ACEBACF64D12E1525EA317B452DA442A305
            5C7D7377215F036B93ACDE118475717F2EB1149E52157373843C63E087B1D2E7
            4EB4E276FC77C8CD6B76DE7A6B643FBE38B7EBEBAA2D6D6EF757192A1275E673
            5AD593280F20C23E9D12F1466B1559241D48AE670A820A364D3A83E9FF00D2CB
            A34F21B887A7F717293A9F4271FF007C5CDB5C95BF6A177BDF8E34F714F5A176
            25BAB75F494AE5EA29CDAA37D33538782B114B2CB18CE492E578D3C2C1CB5297
            E4EB683A07C91B1F2B406B5E475F2BD5E7E6457600C43B894E99BD1922324B76
            07B81F4BE7AF6FCF5A0CE45FB1F8E56DF3903BD772E92EB05BFF004052F907B3
            6E9B26EDAF21A1EFB19190A7BB4D3D96770CDCD44DF54081B2444624F53868B6
            D290114A122DA3545E3C78A81D53D90F499E911A03A5B51AEE1AF2EB35B9F6BE
            D8711A6D91BAACACE3631CCB31823393C656AAD031AF2551ABD65ABD7AF651DB
            25A727E5E5665D19CCBCE3D6EC211944E61BD93B6B1ADD5A7FA41680AE5A65A7
            75BC1E9C79ABA1EC09C8315DDCF55E15F697A6C4598CBB26DE837526FA0D249F
            A4F5BB033032CE0CA376DE6A704879D39EDEC78C9D39F8F5B039ABD35F96DCA0
            A3EC4E3D57D6D9B6FAFDB2EF068C8CFD22A80591B53EAF5B3595575A291EF2B9
            0C83BB1B985B0C558E26C31F1F211473321708914E3B066223D95D127ABB8D80
            7B0F5EBF2EBB6EB920B2206974243A51D0347A4A8009041D0F3EFF00F7ABBAE5
            2F4652F257AA4F1CFA958F23CD4B1D005D4850D301A842C416CF6ADB6D8ED203
            ED89ED9D06305E9D1B0798FD834CFA33CD3CE7FF0068797F3746547550E9FC5E
            A63C4C97E2E1B6DFB4A84ADE69574FA390A206C6143E83DEB879E8DFA1A1B951
            015F48F9C027E79E9F4FCD3C1E306AE7C5E12E5EB94BD422E7D477D8C4EC9DB3
            B54192BB9B5B6FED55A476C4BC7326F16C6D966AA5F75CD8A2EE6DE29A88368F
            5EC94EB8569D4E20CD16917F4549D8461D846C50338E6904F839D29BA2CEF7E2
            8E98DB7C91EA9507A37785DABB2123B0B543ADF7C6BAAAF4B966F649B8C6B1CA
            57AE712BD9E305C44318E920465D63B8383D05D33037551007529240404300C4
            96D6FF0090EF47DC0D7C846003331531B845013AB5AD107B01DB5AF307D9DEB7
            BFC28E36A1C2CE2468CE3239BE257E4347D0D9D2CF7E5E0494B4AC4566EDDB9F
            4A295E3CFD90909E505DF93F341B0C9813C1E2F3B309FC25AE3E8F9D1B5AF4B1
            B5F25AECCF92C97205BF247E80D54DBA1A993D6C854CB4895BFC909927E96D1D
            884B1964C6F028788A842832F45F94FDF62F7C9B4CF37B25BD51575B97DD2738
            ECEEC334B6B55F5551F53BB974A45936915AAC7D9F5DA3AD6023A3355A190993
            C0899D1244D1AAB149C082A2D0ED4BE40633F3E78E14DE8ADCE3E191FA5072AF
            6AEC4D9DB1A75435C346ABB1AB5799C4E5195B29D0D53A9DA996BB85ADC5CED4
            F74FA766EBE853ED75C78FC1CD6E4DF3478E88F1892245803AE81FA99007CAEE
            37A1D86BBF97AF7FDB458CB2FD390650588E9EC7A483DCEFB773BF203CBD55B1
            1EAC1D21746755AD735084BE59A6B55ED8D5EE259C6AFDC55989653AF60DB4F8
            3209EAE59AB6F1DC5A76CA9C9AB1D1EFFD1849B82938E956083C899B628B9996
            92D51D41F63016EBF6C9D7363EA05D48778732759EA655246A3A9E61A5D1A207
            856EAB5582B85B5DEB6D6C67552AACA047B1693D054E868E7CF63912B663648B
            5916AF109EDEC91B93E3C6DE955BA2323647CC2E1C8C92AFF1CAB204544AB2AC
            AF42F2536210C9104AA9DAB9D575ABBC52AA8095149D4A312AC26058882D9B1E
            89F0579E963D62B4DF1BB693D76C6BDCDEE216AA7A72CA13CCD06B6CDA5AAAB5
            B96BCD566E00405246AFB66B578D2718B9056F2EBC83950FD8CE943A1CBF475E
            8AEF7AD9D9006FCB63C8F979FB86EB98C4822255FA40EAE95D0D9D74ECA9F31E
            CF9FDBBAFA0F210D1B1F068D76219B3878965129C2C5C7C7B545AB08B8E6CD0A
            C593362C5B82283766C9B11241B3440A92292299114C08429402963A33746B27
            48B67C88685E469B903EDFAE75538150DA883557D0A7B5925B113F00143676C7
            F4EFA6FE8F84DE2F143FA37D13DBC2FF00CFBBB3A31F6647F643D34FF9DE55FF
            00E7B8C99B8BCFB0417235DD3C8FFF002037F93D75D44148D747E4C9BD8D7D89
            07CFED907D55487D547A1A71F7A99D86AFB7D2BDD9B8E5C9CA532611709BBE89
            0ECE702622E25E95F4236BCD50F275B756079585C573D567A1EDB56B0C40B806
            EBCA4946328D8E655E9AEFD8C2C9EC0DB34DD8FD46BA86EF5E72D7B5E9D142B5
            AEEC45B946A2EE29A2ED954E0A5EED76DA9B2AC51F55932B36A49CAF5390ACBE
            74448011B424AF65C358F80101F5860A293B23B9D6FB9D1D6B5B1E47CBD62825
            9140018F6F2EC090091BD123B79796FCBD5DEBF361E1E26BB1115010318C2160
            A0E398C3C2C345346F1F17131318D92651D191AC1A2693564C18334116ACDA36
            49341B374934514C8990A50FD2C633EEBAE98C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5299F36CE885D32B8B5D
            4AB953CFBADF27A26E92B19AAA6D9CE544B4DB8BCA8AA8BFB3EC6BFB09533E55
            A37702F923B78966082670202272A862888A83DBE92791378EFC16E24F132CF7
            FB9F1CB45D37535A36979B0EC19AAC84B03BB48B39090956C325E91937C90F91
            919590764F374D0FDD5DABDC44BE1297E193A9949D6977B07BEF7AF5797ABF3F
            5F6248515C0D8660BA23D441D9FBDB1BAA1EEAF7C22D13D3F7D8FBF2D74071D9
            859A375D96FBA66EA0DAD763736896F4E59392DA3529353D28E91455F3631231
            A7916FE4FC28881C4047C63DA917A6DEABF635562E14E9299E795C6062F962F5
            ADE476D47BCD8BCA18374DDCA1B36E8DAA00AC5EBE7C953DA0A9AFD1AA2A5086
            214AAA6A1577BDE4557823BF1DEBA1B507267575934AEF8A1C2ECCD596F3C2A9
            65A5587CF06225CF5D9E8CB3C219D798BA64E8463A7E1A2E510F26E53FDF2C92
            F1F8D3F110D5EFF50B3A487DA2FA6FFD5B5FED2FF7EFF7B3E4A1EA047490001A
            6074347FF28F57979F7FBFBAFB594042AC5C12FD44A91DFB0001DFDAF2F7D65F
            3D9365EF5458763F47CD8FABEC4C65349C96B794B5D0AD291E44B1CF35A9ECDA
            6646BD36552612465819A95B2B579E524D14DF8A5F5EEC80E3C61966FD677AF1
            F047E91EDF1C7FE356EAAF721B7572275CD8F4D45C56B7465E5EB757ACEC48E5
            EAF72B3596DA2C1080485AD5A4661AC341C6BF919D909E751645631BC3F9FC9B
            4BB3DCFD2D7801C85A5E9ED79B8F8C946BB537405352D7DA6E11DBEB64625AFE
            968348A6295720DDC158A2E402348D21225104DDBB747F0B140DE3F1818C6F0B
            44F4A0E9C1C68B3475D74BF0E748D4EE70CE1279076F7B57FA32B5403E40C432
            0FEBF62BCB9B2CC40C824621448FA1DEB2765113F65BB1CFE2147DB68A80C003
            E7B1A1AEDECF5EBEDD72248FA630C1C98CB1001001D9046FD7EAEFAAC815DF86
            3B2386DEC5776934DBF5F7F51D8DBFB927ABB7F49D4269A1D8D8AA55EB0DCB56
            D3E95093ED1511599493CAD52595B978B744424618F6B3C44B35672CC5F3443D
            57A7E6A7F63253DC39D132FCD7BA4046F291F566495DC2C5DEC8E5443386F602
            DA279360456328AF92A9B430D7490E704E1532B6314C5514FDF475C47795BF78
            F1A57949AD2574EF2075E416D2D6538FA224A5A9D6307A314F9F40C8212B0EE5
            6060ED939F28C245B20ED0F038297CAA45F194C5EE51803F50AFA487DA31A73F
            D5B5FED2E71E8C8604749D285D3027CB5DC7BFB76F9A8260558317059FAF6846
            8F651A3BF576FECF55660FD92921AD3911CD3E928D6BB2CA5834EEF3D5F43420
            E7619574C959BD6BB376C57138D96895E45A95EB4524EAF368BC62ABE6657481
            9644EE9A82A43A41C4DCB9E2C50FD8ED7565E0F6F6D24E65ED1C6AD9C52AD349
            6E06153BA4FD6E39959E36A3BCE22BD6456ACCBD1921074CB4D62D753B4C5B78
            DB4C63C95730AF649E4228F9396D70EF8E3B74E49ADC9C4ED55B0F8DB5ED9DB3
            F524354697A0A322184ACA3AD1F45A5AAC9D555E3814EC51E58AAC57D48364E5
            059D9256401B46A8F0CD976A82CA0CB6E4EF0AB8ADCCF88A9C2728748D337346
            51A424A56A0DEDADDF1CD5F7D32D9B34965A39C46BE8F7491645BB2669BC4456
            3375C59B451448CA3644C4F15ADF58DFCF7D0DA5D4571363EE45BDD8898B7C5E
            E3D1A4A609081D22408EA5D41250901802355D105FDBCCD2450C825F8AB35BDC
            AA90DD1232AC8118F9070ACA48DED7637DFB56407D92FDA2FF00CD6EA27C10E9
            99A29E423EB53668C6C4B9269CAC5A835D89BCA71B4743B9BB0B48E9C70585A3
            EBEA5276F9370DA1259542B1709351B474A2AB0B2357FF00589D13D60F88FB43
            881CF5E79EE6D05B9AE9AEF60566A1A76EFA42219409AA32FAD2796DC152AC5A
            DBC2E8FD2ECCEC9F48A36492AF08273AE4A4676240C2C101488E77AB0BD3DF86
            55EE4243F2C2338FF4C4F9195F8F8F8B86DB8E959D93B6473189D7C96AA8D451
            732732F1B08B2D7A825576EB1DA9D74E3C806053CEBBB81E50E46F1778FDCB9D
            7E86ACE49EABAC6DFD7CD2C51D6D6B57B5A2ED560DACB10D6458C74D363B176C
            9D20F9AB29793689AA9382776CFDD20703A6B1CA3ED3116EA24E989523448035
            AD6FDA411EFF00577EF5DCB304E80176141076013B6F3D79E8797AFCBCEB147E
            CB0B6B54F75EBEE90DBB69AE81C52B6B6BEDF7B3AB4EC4E554C6AEDD2278A967
            8B3AA64BB94562309144AB94A1DC8A95427840C5F0869EF5A75C2E959B876251
            353EB7E5F542D3B0F655B6BB43A356DAD276D347360B6DB255A41D7A19BBB93A
            0318E6CB49CABE6ACD25DFBC68CD23AC0A397282253A81CCBB23A5DF00F706BB
            D35A9B67718B5FDD75DF1EA1EC15FD2D559A52C6BC7EBC84B4AF0EE27A2E04E4
            9D4DD959C8295F840322EDCBA2B74A31A20D3CDD04813CF43D7BD1AFA616A8BE
            D3367EBBE1B6A8AA5FB5E5A606EB49B3C616CA1215DB55624DACCC04DB1F38B0
            AE879E45CA326AF5B8AC8AA979644BE512397B947EBA5C316057E56B60EFD400
            EDAFE5FBDDAB82E8C8AA4382A1B446B4492BADEFDC3D556698C633B2BA698C63
            14A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6
            318C5298C6314A08F60111F803BFFDD9547B37939C8FD9DC96B571DF8BEA5260
            4B408C70F2C56AB620778574EA3423939711505AC991A3369252CCA01068DA11
            EBF5A45372ED5768B130834B5A53FC03F6F77C06FF0080E52F70A0C0AF3DB974
            A381F12E594D8C9A626FF0BCDC9B4514FB077F5F84134DB87ABD5DBC3F076CA9
            3C4FBDC91BDE11C7AC7297B878791F226B5C85E63A5F8BDE7C52D6CAE2E8C10D
            C005A112C889D6E9A72A3A410A5B714E4D35C99F058FB7BA9EC932593315CCD6
            CE229CC315BCB37A34974593AD914315D3748D6F5D8FBDEA7E746D39BD25C937
            978ADC037DBFC7C643E50C46AE91819574E1DCAC4264938D49F9964DDC3CB43B
            B2C9A4CDFB341FA2AB6067E68605CC4F4DD63BE7A966DEA7426C2A1D0754CC54
            E7CEFF00D1920BF9847797F45CABC877A0A337B7B6AF912A4FE3DD223E345331
            C8982A97721C871917C989ED2129C7FE5AB0D5EBD18F718C8B512DA69D599C5B
            5981B079E28926A5A5662DD170FE40AE10926E2E9E28E5423A4241B1952B845D
            264859C51ACF5037FA3A84EF48EC1D7307AB9556C3F43B1761691AA3F6BE4EDF
            3A9CD03F3A9499678622D36493704F04838501AAA915114840A82552E4EF7925
            9F29E3DC62E794734E49690718BEBB96EF833D99BDB8B987903DA433644CCCD1
            491DADAF4DA5DC9B321B845247533EE21773E4A1CB637172E5B39938A3C4CF3B
            CDC7CC1E9E5953266047BAF4859196187504EFBEB32AA92365C9B1FE4DEF5BA6
            83E31B8D86FDB4021B50F1D56874D8A7E70F6BA8DCE6CEC909A062555549D3C8
            F8B204CC847957500EE5160895C8895454338C380FCA4BF6FD8AD935BDAC947A
            37CD712F1E9B8519478441DCC64B16410222F23C155132C84649C348A0ED56C5
            411F22B3148EDC8B1545978E9D50AE489DA71CB545CE659B34256C24B5EC4916
            0DDF19A47378B4D857D5946CC9B91DC928C8493B6772D5B249BA7A29B104D349
            771E028FA471936D6BE53A88EC1575A4E965F5F6E580924221C963E521D15679
            B40C3DB5F9D56132C235F22AB79186B3B440CA362A6B11E01D23A82A97BE472F
            E20E42C7C61C5E3D73EF1616C67C2F17BBC1CD73109AF6FB358DBDBA39196DC1
            05E4B4B83616F34C8BD092388F6BD5A3E9BCE43710733B5B65C894B0B77B0C4C
            D8F7913AEE2E3216B7130B9788302C6194DB46F200551D82920369B92DBF29F9
            99B53756F4D79A4E275428CB52D92CB1A8B0B0B4954241F4641D8A46BED0537C
            7994D9B8927E78E32EA82DE8D66919602828990A1927F837CAD9EE4D536E07B9
            C1C5C1DDA832CD98CD160C8ED1887CC655174B45BC41A483B7CF18392A8C2459
            3D68ABD764F28C88ED25C8578666CEB175727C9053937CC82F1B97A92161FA33
            D883366B3010CE8CC7DB02C42C8B5DF384958DF4A8BAF18106580B1E0224F383
            017DCE5BE05EC3A7EB9E27F25AED14DE4DA5FEA6DA4662CEFA55E24E1AC9BD18
            292FA06422CA46EDCCCD13BF2BA68AB679E7AECD28BBA7477EA3574D59308F70
            DE779F8F97D94B92CCE7CD84CDCFE7CA2658A1C2DE5B612495ECA2C0928585C5
            92206BB1D48AB1A686C1D363F0B9EBF19A81AE6F7226DA46E4925DADE749B196
            1C7BB1B75C71E927D25B81BB8EEA154003B120FE654B9AD603F355694353A888
            D0AF1B216D384B635ACA08D9A46222E4DB41C33C56E00AF9E2E741C3F8197916
            8E456609C6B945B11BA7E6CC9D36BDA28F88A5307B825010EDEE7AC3BFAB326C
            EACFACD8F16693130B6B1F6ED8ADD92B7B7B101153C471190AF21890E9AE8CDA
            D1458359505EB95B922B74255550BE70A09C9E709AE927A91D65706BB075E51E
            F2CC001ADB2A95FB0A040111F244998A6B21E487BFD70192071E4CC537D714C4
            1037D700E4BFC01E597D98B8E518EC965A0C9CF72D65CA2D7D14D1486DA3CD2C
            AD7762FE889F46D67711A2BC4C03A197E528EA3596F0FF002D3DEBE56DEEAF23
            BB92436F9588A48927A15C80733DB90A494304C80346C0105F6546C6FDEB18C6
            6CB55974C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C
            6294C6318A5318C6294C6318A5318C6294C6318A5741EC601F884043FE5951DB
            0F8D7C9CD3FC9BB96FFE3144542E2C763347E8CCD76CB208B2347389A3C73D9B
            2BB49DCA57D374D559B8D426A39E474C11EA475178E74C8504CCB3FB72C644F9
            670FC772F82C23BDB8BFB1B8C5DF4791C7643193ADB5EDA5D468F1F54523C532
            1578E47492392374753DD7601189CB61EDB2F1DBACF25CC125A5C2DD5ADCDA4A
            229E0995597A9199245219599595919483DC76AA8FD53C1FDB511A439329DE25
            EBCAEE2E42B3153CCD172A291312E50792D33E091936ED3C00EE665E61D79F83
            06CED8B149BB133770E8456293D3F566A1EA61A769107AEA8D21ABE3EAB5F348
            0C6B578E2224164FD2B2CFA69E8AAEDC451DC2C0A3E917270011EE44CC54C9EA
            297B5D0674F500FDD37FB7B64397C1AE3B6ED8A971995E4B87B9C563E7C6A5E6
            332CF6D75796F737AD91B8F8F4DE899A669AF1DA77D742F5150142A205C3AF0D
            C6C66D1AD6EF2B65259DB4968B35A5EB4334F14B39BA945C3FA32642F3B191B5
            D2A4E86805502AFE678B1B7B6872CB516D6DCB1947B051EA5AB6263ED8836508
            F215FDC9B43CE04946B1AFCA22772B479ADB3AA4CB170EDB99B9A1D9B641CAA4
            7C991B67F7BBB873673F2678FF00B7B4556EA75CAF55A521DBDF5A459232B28B
            28B8BB01DFBC914E39A20DC924E6560E525625416C9A8F0C641922B015B76590
            B3EC7AFB8FABEF0FC799193C28E2D35ADF433ADECD7390CEDB7219B2734D1C99
            34BFB57B568961BB30964800B54431E8FC97934416047A9B8B62DE2B84713492
            DC6422C9BDD3C8AD722E61689A3E898A12231E8557A347E4B368824115D9C61E
            346C8D55C88E4DEC7B5A5149D67645825242A0B337E474EE45B4E59E5EC82772
            D8A429D81A3D17C831729BAF0195780A19A82AD4A55D48835AE0FF0025EB3A3B
            935AD9AC5573CFB62DBB5EAD5B221626650B040D5EC3332728B26E14F269C591
            72290AAB76F26666E17453916CBA297EE25717A38CF25D783DC5AEED2C2D1A6C
            AC71E38F26303C7751ABB2F2C4963C9A48C606EA5092910680E8017A8C9F281E
            99787E2A5860859AE956DCE58A1595031FA32AEB78AC7D19D8E97222035D3A1D
            45FBEEBC2DBC23AD3FE240EA787A75189B65A6BEAF324AD88C345B57EF6EB069
            C6C93C5BE88BCC425116F352EC576AB39596EE2C5F1C8E005115083CF3C41A05
            FB5771E75E50B65A4D50B6D71A4B3376D9A3D4641268C549F94730CCCCF1B899
            BACAB4875D8B6505B9D440A64BC09AAA8144E692D8C9262B81F1FC266AD7398B
            B76B3BBB5C0271D58A131C76D2D8C73C73C6F3C491A992E51E3D098B82559810
            7B6B236B82C7595F457F6B19866871CB8B0A855627B65912543222A8EA955934
            AE48EC5BB1EDA6318C99D66698C6314A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C
            6314A6318C5298C6314A6318C5298C6314AFFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desenvolvido por: Elvis Sousa Brand'#227'o')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Top = 102.047310000000000000
          Width = 574.488560000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO SCOUT CONSOLIDADO')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 151.181200000000000000
          Width = 740.787880000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Page: TfrxMemoView
        Left = 638.740570000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxRepRelItemSelecionadoP: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42492.678394560200000000
    ReportOptions.LastChange = 42492.678394560200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 952
    Top = 296
    Datasets = <
      item
        DataSet = frxDBSelecao
        DataSetName = 'Individual'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Width = 143.622140000000000000
        Height = 132.283550000000000000
        Picture.Data = {
          0A544A504547496D616765054D0000FFD8FFE000104A46494600010101004800
          480000FFDB004300010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101FFDB00430101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          01010101010101010101010101FFC00011080101012303012200021101031101
          FFC4001F00010003000105010100000000000000000008090A07010304060B05
          02FFC4005E100000060201020104080F0A0A0709000001020304050600070809
          1112131415210A173138415157961618192236586171767781B2B5D5D6232427
          33567397B6B7F0323742657492A1A5B1C12639529194B4D4253A4346537295D1
          F1FFC4001E010100020203010101000000000000000000060705080103040209
          0AFFC40056110002010401020204040C100C0700000001020300040511061221
          0731134151610814229115323436527175A1B2B4D1F009172335375556627476
          81929495B1B3164445535463739396B5D3E11842466472D4D5FFDA000C030100
          02110311003F00DFC6318C5298C6314A6318C5298C6314A6318C5299D3B00F7F
          57BBDBBFE4F733AE440E65735B4DF09B5929B0369C92ABC8C89D6634CA34399B
          AD6ABA4C244218ECA21A2CB229A4D19115497979878A231D14DD44FCB2AA3C74
          C193CF35E5E5AE3EDA6BCBD9E3B6B5B74324D3CAC1238D079924FAC9D0006CB3
          10AA0920565F0380CCF28CC63F8FF1EC6DDE5F3595B98ED31F8EB289A6B9BAB8
          90E951117C82805E4918AC7146AD248E91A33097A63149DC4E72943E0F108140
          3F288867641D36F705CA023FCEA61FECF1660EB93BD63F99BC8694916D5FBDBD
          D17405567058CA86AB7EE61E5936463981BFA6AFC9F90B5C9481501049CAD1AE
          ABF10E4DE2513826C3D80B5DEAEE9DC6BC884C2FB6765AD2C513092515BDDA54
          9128987C46107C79533901318004C20A87710EE3DC43296C8F8E783B6B868B1F
          8BBCC8428C54DC34B1DA23807E9E24649A4656EE47A458D8FAC0DF6FD10E23FA
          1A7E24E5F1515F72AE67C7B8A5F4F0A4AB8982CEE73D716E5C6FD0DECF1DCE3E
          DA2993B0716D2DE47D5D416560A0BFD36CAA10FF00E01C87FF00ED301BFE0239
          FD67CFD78EBD5779B3C74948E346EDD9CD93526AB945ED1B6D3C79778A7ED3B8
          78DB359A92726B6418109E2169E869E66D515BC0670C9DA043B5535F3C04EA37
          A7F9DB4F70AD74A34DDAB5B62DDC5EB564ABC23A928922A7237F4C4148022D53
          B255D77660451956ED9B3968AAADDB4C46C5B872CD37330E27E2571FE5928B4B
          7696C723D24AD95E742B4DA00B7C5A452526E91B3D3B49080CDE8FA54B0A07C7
          2F820F8ABE06D9B6772B059F23E242458E4E478033CB158B4AFD108CB5A4D1A5
          CE3C4ADA55987A7B30EF1C46E84B2246D62381100F58E558F3E39CB6BE3FCFC2
          EB1D5ECA2FE8BE4A152B1CDD8A61B8C8B5858C76F1E328E651D1E55934D79674
          AC7BB70E557E53B666C41A79368F1590F2B1F595F5497979F28D1DF32A9FFA97
          FBFE40C8472FF844F00E1B9DBCE3F7C32F7B7F60C23BB38EB486582198AAB342
          D24F756FD5220203F42B2A9DA96EA056B46331E23F1DC25FCD8EB93793DC40C1
          6636B0472468E403E8CB49345B75047574860347641040D41E332F9F5497979F
          28D1DF32E9FF0077FCCBF77FBF60C7D525E5E7CA3477CCBA7FDDFF0032FDDFEF
          D8322FFF008B3F0DFF00D0393FF41B1FFF004BF3D1F76F17FA6E717FF3196FE8
          D6FF00FDBF7FF6FB0D6A0F199B6D79D5139195FB247BCBDBC82BED63CE912CC4
          42B01190920661E3ECE0D13230C8C791BBF29044E819FB77ED0E72F93511029F
          CA92E1B935CAD89D21A0A336ED798A5627B74083654166E8544583B7D638A5E6
          D93D95144E57048E670ED1DC82E8B7311676AA484711C341760F50B078B78E1C
          17966173D9CB3B9BCB3B6E3900BACA4390B758AE61B7656F472C6914B324AB23
          23468B1C8CE64D02AA597722C4F38C065EC6FEFE09A6861C62096ED2E62092C7
          130255D551E40E1882802B16EB1D240DAEE61E3330AF7A9672E1D3A59746F50B
          1E928713119B3A6D68CD9B80FB89A267F1EF5E1881EBEC2BBA594F8CE39E37D5
          25E5E7CA3477CCAA7FEA5CAFCFC2CBC360CCA2C793305240616167D2C010363A
          B221B47CC6C6C8F56FB08E9F1738BEC8F43953A3E62DA0D1F2EE37760EBED807
          5E607715A83C770EE01F1FB9F9332F9F5497979F28D1DF32A9FF00A97EEFF7EC
          19E531EA5DCB768E9172BDE2124D248E063B17D4CAD91AB9287BA9AC68F62C1E
          1483F08B776829F11C3395F858F86CCCAA6CB92A06600B3585910A090093D391
          27437B3A0C740E813AAE478B7C5C900C395009036D6D0686C8EE75764E86F674
          09EC740915A79C6462E25721D0E4BEA18FBE9A352859D6724F2B96B8A6EA9D76
          6D2C11A8B470B9982AAF758CC5F31908F916C9AE265DA91E799AAB39336174BC
          9DCD8CC3662C33F8AB0CCE3261716192B68AEED6600AF5C52A875DAB00CAC01D
          32B00CAC0820106AC7B3BBB7BFB5B7BDB590496F750A4D0B8D8EA49143025480
          410080411B07608A6318CC9D7AA98C6314A6318C5298C6314A6318C5298C6314
          A6318C5298C6314A6318C5298C6314AFCE9794630915233124E91651F16C5D3F
          7AF1C1CA9A0D9AB341470E1C2CA1840A9A48A499D450E6100290A6111000EF9F
          3B5E7A72DACFCCBE46DD36A4A3D79F420D9F3BAEEAD81580E9235ED7D1AF1C04
          2905A1BF899499298F3D3EA185458F2D20BB705018B462837DCBF5057EF62F84
          3CAC7D1CE5566F51D09B53C83A6E7326BA263D2A69313A4A9440E9A80539BC2A
          104A7208F888629800C1F39BCD78F1DB2F751C788C344EC96D7026BDB8507426
          68D963855B476550FA46E93B52594E8B28AFD5EFD0CCE0785BDBAE7DE215EDBC
          57398C53E3F8F621E455636115DC725EE42788329E99AE425A4225521D238A54
          042CCE0B18C66B757EBD5339AF8EDBEAFBC66DC748DD1AE24566361A6CBB678A
          B42B851BB2B0C29D42126EAD30040382F0F3F1C2B47BC20A673A1E548F9A0A4F
          DA35708F0A633D369753D8DD5BDE5AC8F0DC5B4A93C32212AE8F1B0656523D60
          8FB558ACEE171BC8F0F93C1662CE0BFC5E5EC6E31F7F67711AC90DC5ADD42F0C
          D13A30D1564761ED1BF3DF7AD42F38F66D73746D2A56DBA8AAAAB5BD8FA4F585
          CA185C0148E92656089712246AF53218E545F333383B37C801CC283B41644C3E
          220E432CE31D1D607D3BA4354A0F965DC1ABD5F9EAFB655C18E730316FB06E92
          0D114CE7EE2641AA5240D1028089114902B72784889485E4ECA03C42BF7CAF32
          CFE4A550B2DF5FC975228F2579C2C8E07B831EDAF56BD95FC5C7C2178947C13C
          6EF14387C2ED2DBF1EE699DC5DACAE76F25ADADFCD1DBBBF73A66842161BEC76
          3D54C63190DAA6E9972FCE2F78A7117FD0B5AFF64EFF0029A32E5F9C5EF14E22
          FF00A16B4FEC9DFE5E1E18FD62F8BDFC5DC77FCC92A7DC53EB7F9A7DCDB3FC6D
          6A9A318C651F501A6318C52B42BD233FC42DFBF1BB2FFD4DA2E5ADE552748BFF
          0010B7EFC6ECBFF5368B96B79FAD7E08FEC59C37EE52FF007B2D6DEF07FAD3C1
          FF00024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C6318A5318
          C6294C6318A5318C6294C6318A547FE55EB391DCDC6DDE7AAA1D60425B606AAB
          E54E2973000912939CAC4A47479D4037A8C883D7087962F7288A5E300390440C
          5F9B03D64F235E3B8E906AE18BF60E5764F993B4546CED9BC6AA99072D5D3754
          A455070DD64CE8AC8AA42A89284310E5298A201F51E30018A2510EE0601010F8
          C043B087FDD98FCEB4DD34EC7AEAF769E5CE97AEB995D617378B4EEDC828940C
          E1CD0ADAF5631E52E00D1120AA6A9D99C1FD2330E8855420EC0BBF74ECE8C549
          352B0A3FC68E2F7795C7D9E6EC6379E4C48992EA18D4B39B4959584CAA364881
          D4FA40013D0E5CE9236D7E917E87778D181E11CB3907875C96EE0C6DAF397B1B
          9C1642EA4586DD73D64B24031D34AE422BE5209635B4672AA6E2D96DD7AA5B98
          96B3B78C63355FCBCEBF6D410C03290411B04104107C8823B107DA298C65C774
          9FE9AF6AE5AECD81DABB1A01F45F1C28B30DE5645F48B214DB6D29A877C9A88D
          2E141D1008FE045E3732772946E459B24CD1735F6EB252CF85CC5E630582C872
          1C9DAE331D0B4B34F22876504A4316C75CD330042471A9EA763DC68803640A80
          789DE24F18F0A3876639972BC84365618CB5964862678C5CE42F0A37C571F630
          B329B8BBBA97A638A35EDB62CE5635665F7561A96574C6AED0B539E4956D3B29
          A6ABD7E946CE1033670CD4D913B67BCB18F72D9500550771B113B1D1CF115801
          64DCB558A7290C1E0278996ADD55755DA2136F406CC4A25DAB48B053E1EBE498
          41013B08D9E82712291E21DA891448C4CE235660EA37CE852090ED209B3057D1
          CE412AA9CA1BC53C05DE0B9EF22C63DADC2476F78C2D99E27066B6645304CA74
          4324B190FD4A4EC923ED7F1A5E35E7F27CBFC56E79CB32903C57BC9B936573B3
          22AB145394BB92F02C474498944CAA9DB617434354C63195EFA09FFCCCBFEEDF
          F2555DE8DFEC1FF9A7F27BC7CF4CB97E717BC5388BFE85AD7FB277FF00FEB2A1
          6B359B05CA7A2EAF55887F3D609B769B18B898D41474F1E3958DF5A44D3200F8
          484280A8B2AA09516E89145D751345339CB7D7CE7D0D755F863AAEBB011EE2C1
          29A592A429626B18928EDC2D0F094C7B56959166D5148CE1C9593B74D5F2FE4D
          20F211647AF5429536C712DFFE13E132D79C0BC5D92DB1F752A3E02CA242B0C8
          4492C375F199638BE4FEA8E90C6D232AEC81AD8DB0DD8DC3ECAEE6E3BCCCC56F
          3386C7DB22908DA668E6333AA76F94CB1A962A3BEB5D8922B3EF8C6328036F38
          241865047620C6FB07D87E4D575E8E4FB07FE6B7E4F78F9E98C6302DE7274219
          493D8011BEC9F67D2D3D1BFD83FF0034FBBDDEF1F38AD0AF48CFF10D7EFC6F4B
          FE4FFA1946FF00F9F972D6F2BA7A64EB0B5EB7E3C385EDD16EE19E5E6E72D718
          F8C904146AFD08671130308C1576D1729166E77DE835A41B915294C762E9A2DD
          8015000B161001F50E7EB7F839677361E19F0FB6BC864B7B84C442CF0CAA5244
          1296953A958065251D4E88046F4456DFF0D865B7E2F848A6468E45B188B23021
          97AF6CBB520104AB03A206BD74C631966549A98C6314A6318C5298C6314A6318
          C5298C6314A6318C5298C6314A6318C5298C6314AE9DFD5DC7D5DBD63F0F6CAE
          2E41F51BD2DA8EDB33AD895E9BD91351265236CC48808C460235E18A64DE42B8
          919171FBF641B14DE4E41BB462E5A3658CA3172F137EDDDB46F632B8F645610F
          74125043FD41CC616C072BBDBE5D9E3A54EBB9776EB23972BA83DD45975E65EA
          AB2A71F84EA28731CC3F08888E6B9FC223C4FCFF0087388C1A71DF8BC57B9ABA
          BA47BBB9852E043059240CCB1C320319695AE14167560AA8405DB750AE7C44E5
          792E2F698F6C5324575773CBAB865EB6856DC44DFA9A9F921D9A45D31DE829D0
          D9D8F27931AA3813BCE59FDAF5DEA7DA1C7AB6492AE5CBD2D1A5EB12D4378F9C
          980E2E96A14991B231BE0376F0B3AA4D5663840CA18ECCEB1C550AFD3F0CE241
          D8112DA722761DC7C4E4FAF1B26EC03BFA841916FEAA22221DC440640BD843B7
          71EE22132F19A1F90F13F9364EE5EEAE8E3C4D212CE6DF1F6F688CC744931DB2
          471F513B24F4ECECF7F3353BE1FF00A223F0B1E15898B098AF12E7B9C7DBC622
          B68F338BC56667B7455E98D22BBC8DA5C5D7446A02C71B4CD1228D2A6BB57F1C
          78E3EF087574AC658F71D476EF202623542AE5837F235AA2EBB70E13382A828F
          AB318E26A7648A81C8503347D715625E904E94845B841414434DDC47E69E85DB
          8BC66A2A35557D53270D0E56F55A42F1F111F04E21E25B0F78EAA9E0CE11E42C
          4304415F4499A46AA9B14D55D8B670D59BC51B6653247F109CB869C9DD1CB365
          8E8AA3B0E05B8A898F84C283C5C59BA4847FEC2ED57590503FCA4D4317E1CB23
          C2FF001BF9762392E0B16B1E2E5C66472965637B02E3EDE19E58AEA78E02E6F2
          245B96922EB2F1FA4959037D32904835F726F85278D3E2DF26C5DCF891CC2F39
          4A35E450476976B1416368B7322472B5858DAA41676523020B35BC09D7D2A24E
          B000AD15F29795BA7F8E9111EC36134736998B324B9A369314C98C8BE7B1E81C
          1371212249170DA3984491731102ACF56F2CF16058B1CD1E8B37BE6D5C1F546B
          8D5F6A9B1FFF001F47FBBFE6BFBDFDC7D51F7AA3B95D7E51AA92CA9D44D9EBEA
          A366A438F704103AF32ECC927F1105CBA70B887FF51638FC395CD927F163C77E
          6763CEB3B89C5A626DAC30F76F8F816E315657D3B880AABCB2CD7914CDB79031
          554E84552ABA66059A07CBBC40CDDB67EFECACD6D22B7B298DBA092CE0B891FD
          19019D9E6473B2C0B00BA0ABA1A3EBB9BFAA35C6AFB54D8FFE028FF77FCD7F7B
          FDBF1FA9F546B8D5F6A9B1FF00C051FEEFF9AFEF7FB7E3F5532632B6FD3F7C41
          FF003B82F57FE9DC3FAB5FFB4F77E7DF719FD313927D9D87F56D8FBBFD47B855
          FA6A0EA47C6535A59C42FA997D488CD384589AD0D226B478A6C654FE148F38B4
          315A4835620AF8087729B37A8A026F2EEBCDDAA6B2E9DBBA6749C244508622A8
          AC429C825F09C8621CA0202530770314C5101010F50808087A8731299B09E39B
          A70F74169678ED63B874EB55EBF70E17507C4A2AB2D548951554E6F84EA1CC27
          30FC26111CDABF837F8A39FE76D9FC4E7E2C7B9C6C36D756F716765059752CEE
          F1CB14D0DBAA42DDD559196356FA60C5BE4EAD8F0D395E473E3256B905B726D1
          61962921812025656646474882A103A54A90A081B0C48D6BD95E6A7D6324E567
          AFF5F52DEBB707151774EAAF08BAEB283EE9D559562651438FC26398447E11CF
          1BDA6B537C9AD0FB7C1FF44603BFE51F47FAF392C4007D438EC1DC07E2F73F2E
          6CC1C2E2092CD8BC796624B1F89DB9249D1EE4C7B3E437ED3EAF3AB34D9DA124
          9B6B7249D92618C9249077F4BED02B8D3DA67537C9AD13E69407EAFCF2D8EA9D
          6514E917F1D40A6B17AD8E0A3776CEB108DDCA0A07B874574589154CE1F01886
          2887C79C81D83B88FC7EEFE4C00007A830B85C3AB065C5E3D4A905596CEDC152
          344104460823A46883BDD059DA0208B6B7047704431EC11AEE0F4FB857400028
          001400003DC000EC19D718CC900000000001A0076000F2007A80AF4D318C6734
          A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A631
          8C52BB4BFF0010B7F34A7E61B317776FB33B77E13CFF00E95779B445FF00885B
          F9A53F30D98BBBB7D99DBBF09E7FF4ABBCD2BF862FD43C27F8466BF031B54978
          CDF5360BFDADFF00E0DA57AC6318CD13AA129921F895EF99D1BF8C9AC7E904F2
          3C6487E257BE6746FE326B1FA413C94708FAF1E2DFC60C47E3D0565B03FAF788
          FBA565F8C47522FAA17BE99FFE02D47F36472BB72C4BAA17BE99FF00E02D47F3
          6472BB733FE2EFEC97CCFEEEDF7F7A6B21CCBEBA339F742E3F0CD318C6571519
          A66C0B8D3EF79D1DF8A5D77FD5187CC7EE6C0B8D3EF79D1DF8A5D77FD5187CDC
          AF81EFEBDF2FFB9B63F8C49575F833F5666FF835AFF7AF5CDD8C6337DAAFDA63
          18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314AEDAC1DD15403DD14CFDBEFF847B7FB7318FB2239
          E44EC4BE45482076CFE32E76862F5BA8020745D349B7CDDC24601EC2064D44CC
          51F57C1F973677F18087ABFE3F1FAB2B73955C71E13D9ADBF455B8AE513AB6EB
          3A8A6E1DBB637686ABC95912404AD48F9C42CB26F9B3D3A7E4C1BAD28D62C8E1
          402148EDD2BE453F27AE7F08AF0E6F79E60B0D716193C5E3A6C25D5CBB0CB5CA
          D9DACD0DEA42ADABA60C892A3C11F4AB00AE19BE5750556AE3C47E353F20B0B2
          782EAD2D9EC259598DE4A2085D271186FD54860AEA635E90400413DF60039B3C
          65CCFD2B9D353ED9777FD25D23F66B1F4AE74D4FB65DDFF49748FD9ACD37FD22
          F907EE9782FF00C4F65F9FAC7CFF003D33FE00644FF95B8F7F5B41EEF77BFEF1
          F655336495E1D46BC95E50E906B1E81DCAE9DF625F9D32008895A450AB2920B8
          8000F623660CDCB850DEB002246111000EF9609F4AE74D4FB65DDFF49748FD9A
          C9D3C48D07C49A1AF256CD0D6088D856049008D7F6C35B632DD2F12D9DF753D1
          E29C60A2CA0C5E024632A09C6B278F1227935955904C842CCBC3FF0001B36FCB
          F033DC723E2525BD8E4AD2FE78F1F9A82FEEE48ACE78E768E1B7847533C8102E
          C90ABD5D449034735C7BC3EBEFA338F964CA619A3B6B986E644B5BE8EE666582
          4490AA45180496202EC9001277BEC2AA73AA5C73C67C9E074E103A6DE535E559
          D315443B9174507734C15314DEE789374D564CC4EFDCA004308014E511AE0CD6
          672934F71E368541A3BDFCE616023601639622E921606B537906E1F8A6559BB4
          9B74BA0D8C49014122A91AF4AEDA3A511455068672DDBAA95660F173A6A771ED
          C9777DBE0FE12E91FB321FF00FBD999F16FC0DCCDD73ACD65AD390F1782D7317
          4D908A1CAE621C75E4467D19124866036AB2F5847462193A490A76A3DBCBF81D
          ECF9EBEBD8725898A1BE94DCA25EDEA5ACEA64D17568DC770AE4F4B0276BA274
          762A99B19733F4AE74D4FB65DDFF0049748FD9AC7D2B9D353ED9777FD25D23F6
          6B2B4FD22F907EE9782FFC4F65F9FAC7CFF3C63FC00C89FF002B71EFEB683DDE
          EF7FDE3ECAA66CD88F1F635EC368BD3B112481DAC8466B1A2307CD95289546EE
          DA55A290708285100103A4B2674CE02002062887C195E1A2B8B1D3E0D7B8A714
          FD9517B5ACEC5C15FC4D667360D7660A772C4A2E4AE53AEC4B58952608D013F3
          95117684832279203AEDC4A5ED96CABAEDD93655C385D26AD5B2465555D65089
          A28A29104EA2AAA8A0948421085318E731808520098440004736AFE0E5E195EF
          074E419AC96630D7FF004463B7B58570F7C97D0431DBB3CB2BCF70A162576665
          0A80B74852588D8156CF86DC5EE302991BCB9BCB1B9F8D88A28C594EB711A2C4
          59D9A4994050C4B01D237A00927C857938C8E8EB973C6564E156ABEF3D622B22
          61229E46E306E530307BA5059BBD55138947EB4E0450DE130094DE1300943C7F
          A70F8C1F2E7ADBE7544FFEA73611B9971246646E4D8156525595B2B621958100
          820CFD8827441F5FDA35609CCE2012A7298F520E8A9BDB7041F5823D27623D95
          24FB87710F8BDDFCB81001F50E46CFA70F8C1F2E7ADBE7544FFEA73C969CB7E3
          34838499B7DE5AC4575CE09A455AE306D8863987B149E55C3E4520318DD8A428
          A802730814A02610012732E25232A2726C0B3310AAAB95B12CCC74005027D924
          9035AD935C8CCE218855CA63D9988000BCB72492740002424924E801522B19DA
          45649C249AE82A9AC8AA42A89AA91CAA26A10E50310E439044A6298A206298A2
          20251EE1DC04073BB924565750CA432B00CACA410C08D8208EC411DC11592041
          1B0760F7047911EDA6318CE694C6318A5318C6294C6318A5318C6294C6318A53
          18C6294C6318A5318C6294C6318A576D5112A4A983DD2A6710FBE05110FF0086
          6397775CE77606DCD8B6DB23E70FE525ADD3A7328E1532BE6CCDB482ED236390
          1376F0338B8F41B47B248A052A4D5B24400FADCD8CAFDFC8ADEBFF00E129DC3E
          3FAC3662EEEDF6676EFC279FFD2AEF34C7E1857571162B86DB4734A904F79959
          66895D95249208EC842EEA0E99A312CA137DD43B6B5BAA57C659645B4C244AEE
          B1C93DEBBA2B10ACD1A5B042C07625448FADF71B3AF335EB18C63343FD23FD9B
          FF0038FE5F70F9AA82EA6F69F9CD325A7072EB3D4AE506A85611EAED92B158DB
          D4E6DB26A9936F270D3FDD9AED1EA402245D241C19AC8A0450A209BE64D57209
          5448862C4BC90FC4AF7CCE8DFC64D63F482792EE0377736DCDB8A4D04F34522F
          20C4F4BA3BAB006F61561D8ECA9525483D88EC411E799E3D2C91E7B0EE923AB0
          C9D9E995883A371186EFDFCC13DBC8ECFBEA5C7557BA4F4C6FF85A7397CE3E87
          6A94989751B160AFEF324A4EBB91712929E4400A1E76E5BA11AC4E7318DD908E
          4813F27E35BC75819625D50BDF4CFF00F016A3F9B2395DB99FF192EEEAE7C4CE
          62F35C4B2B2666E614EB918948A02238A31B2748888AAA00D2803B0EC4E439AC
          D2CBCA734D248EE56FA58C75313D2919E94503D41540000F5014C6319597A47F
          B37FE71FCBEE1F3545BA9BDA7E735E647C8BF897ECA562DE398E928D76DDFC7B
          F64B28D9E327AD1522ED5DB5708988AA0E1BAC99154564CC53A6A14A72980C00
          397B3CF4DB56F90E11E95924E45662EB6E975FAD713B4315109064FE8CF6CEFA
          347C9109E06AEA61BB15962220911441A99A1C866CE1648D435972FCE2F78A71
          17FD0B5A7F64EFF2FAF0AF257D6DC0BC5F482EEE224FF07EC1BA5246550D25E9
          824651B014B412C91B11DCAB11BF55589C46E6E22E3BCD024D228FA1D6DAD31E
          C5EE3D13687A8B46ECAC47A8FAAA9A318C650DE924FB37FE737E5F70F9AABBEA
          6F69F9CD318C604920EE1DC11E44330D7DFF0070F9A9D4C3C98FCE6B483D2BAE
          B3F6AE393F8A9C7EBBF428F7E99AC4019C282AA8D20C216B936DD80287EEA190
          68EE6DF24D087398AD9A790688F81BB74124ECBFB7C3F17FCF2A8FA46080686B
          F88FCAE4B7F5368D96B99FADDE0CDC4F75E1870E9AE2579A5387850C921EA765
          899A3452C7B9E944551B3BD01DFB76DBFE192C93716C2492BB3B9B1881662492
          1768A367BF650079EFB5318C659F528A6318C5298C6314A6318C5298C6314A63
          18C5298C6314A6318C5298C6314A6318C52BB4BFF10B7F34A7E61B317776FB33
          B77E13CFFE95779B445FF885BF9A53F30D98BCBB8085D2DE0202021689F01010
          EC20212CEC040407D6021F086695FC317EA1E13FC2335F818EFF00BD525E337D
          4D82FF006B7FF83695EAF8C63344EA84A6487E257BE6746FE326B1FA413C8F19
          223892023C99D1BD8047F849AC8FA83BFA81FA6223F7803B88FC401DFEF4A384
          7D78F16FE30623F1E82B2D81FD7BC47DD2B2FC623A915D50BDF4CFFF00016A3F
          9B2395DB9627D50804394AF44404006895210EE1EE876922F70F8C3B808770FF
          0028043DD01CAECCCFF8BBFB25F33FBBB7BFDE9AC8732FAE8CE7DD0B8FC334C6
          3195C54669972FCE2F78A7117FD0B5A7F64EFF0029A32E639C4530705388DDC0
          43C2CF5A147B947D461D4F21D807E21F50FA847BFA87E21CBC3C31FAC5F17BF8
          BB8EFF0098A54FB8A7D6FF0034FB9B67F8DAD533E318CA3EA034C6318A56853A
          45FF00887BFF00E3725BFA9B46CB5CCAA4E919DFDA1AFE3D87B0EDD97001EDEA
          110A6D1447B0FB9EAEE1DC3D5DBB87C6196B79FAD7E08FEC59C37EE52FF7B2D6
          DEF07FAD4C1FF024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C
          6318A5318C6294C6318A5318C6294C6318A57430018A628FB860101FBC21D872
          92791FD2E6D96BD8D62BB69BB5D4D9C45B655F4F3FAD5C17978D3C34A4A383BB
          91245C845C4CE11EC7B87CB2EE5B3770D581E3D3541990EE53453506ED543780
          873FFD9218DFEA808FFCB32FFC9CE6BEF1D81B4EDC8D6B61DAE8D4A83B04AC2D
          62169D37235A0346C5BD598A32328F221662FE41F49F9B03E70478E56419A8B8
          B46844D24C04FAF3F088C9787D61C73191F3AC4DE659A7BD90E220C74BF17BC8
          E58D14DCCA2E4B2AC70F4346B22B0903BB47FA9315EA5AF3C44BBE396D8DB55E
          41673DEFA59DFE251DB37A29D5D147A57594B28540AC81D5BA831643D07A76BC
          8FF528B925FCA4D41F39AD5FB0D8FA945C92FE526A0F9CD6AFD86C859F4C3EFF
          00F973DC5EAF73F84DBAFABFDF78FA61F7FF00CB9EE2F57B9FC26DD7D5FEFBCD
          33FA39E05FEE33977F5E5BFF00D2FCF67DDAA5BE3FC03F68F33EAFF1F8FF007B
          FBDFB7F7FDB534FEA51724BF949A83E735ABF61B26270FFA704DE9DD8B19B536
          C59EBB332D58F385AB15DAA1A49DC6A526E9B2ACC25A525251844ACB1D9375D6
          F338F463412076A24F4EF47CD4A8AB4D1F4C3EFF00F973DC5EAF73F84DBAFABF
          DF79393827CC9DC4C375D435C5EEED3F7BA65F6442BE74ED724EA76521A59D22
          A8C44846CBC81DCCA010CFCA8B276C967676476AE945C112386E929938F0E33D
          E05AF33E3E22E25C86DAF1F256B1E3EE721918EF6D2DEFDE545B49A6823F424A
          ACE558312E11B4C63602B3BC6B21C0466B1E1311928676B9856DA5B9B959E18A
          E199442EF1A95240935DC8600FCA2A6AC3B9B9C163F259FC35EA99628CAD6C08
          58A0805D39D23C34158219376E1EB141D386293A7514F235CBE7EA26F508F7E2
          ED1742D5C220545B2C85707D4A2E497F293507CE6B57EC3648CEA55CB4D9F43B
          C4469BD67637F4C689D6D9D8AD13D06B99A4F3F732AEDEA4C621AC81132BA8A6
          8C9AB04DEACE235745D3E51F91BA8AA68355137553FF004C3EFF00F972DC3FD2
          65D7F5DE667C61CEF82839DE622C8717CE5FE5E19963CB5E62EFD2C6D67BC48E
          30FD3149E93AA4403D1CAEA9107915890E4FA43EDE6790E0DF47AF12EB137F73
          7B1BAA5E4F6B70B6F0C932850C42B16EA65D74BB0440CEAC7449EA3353EA5172
          4BF949A83E735ABF61B1F528B925FCA4D41F39AD5FB0D90B3E987DFF00F2E7B8
          BD5EE7F09B75F57FBEF1F4C3EFFF00973DC5EAF73F84DBAFABFDF79577D1CF02
          FF00719CBBFAF2DFFE97E7B3EED457E3FC03F68F33EAFF001F8FF7BFBDFB7F7F
          DB561BAF3A4B6D175668E1D9B79A3C65492748AB2A5A7BC9C999E7AD933F8D56
          6CCB295F8462C54745282059055677E682A0B8060E8520415B66E42F18EA3BDF
          4BA7A88EB8D65083089754B956C819E056A4E059AB1F18AF991DC23E7CCFD18E
          1DC5BA6AA394CEA3276B1915D176441CA59C5D79CC5E47EB9B2C75899EDABBD8
          9366E9155E415CACB316A82956853FEEEC1DB19B7AF4A891CA227445DB03347E
          DC4C0B35748AE44CE5D5450ED6D6F748A8DD18A476ECED95A83B234494301D44
          9B4DC6359241339BC24F11C893A294C6F017B98047C25F73368BC071E13729C2
          F2BC0F1DE3B7D646EE0861CF5BE5E7F8D4D7B653ACB1C3E86E636015226F49B1
          1AC2F1C8CB26D8F4B2DA7C00F11CAD8E5F1F8CC6DC402548D32315E4A6592682
          40EB1F4CA8DF2429EBFA511B0621813D8AE7F1D749BE4726E16234B46A674D80
          E604575276D6D95553EFF58651B852562A461F8485595294407B2860F58F8FF5
          27B92DFCA0D47F392D9FB0B9A37EE1DBBF7F57F70CEB9246F82EF858CC585AE5
          90124845C93E94120E87523368790D9DE8F7EFDEB247C2BE2658B7A1BB1B3BE9
          174DD2BDF7A1B5275EAEE49D6F66B38FF527B92DFCA0D47F392D9FB0B9E533E9
          33C8C55D229BDB4EA668D0C70070E519BB63B5524BFCA324D8D4B6C55CE01FE0
          A6770814C3EA15481EBCD177AFB8FABEF0FC78C27C177C2C575636B96902B062
          8F9293A580236AC5514E8EB44060744F7F2D17C2CE26A41305DB0041D35D368E
          B5D8E94763AEFEBEE75E75C03C6AD035FE376AD8AD7306F56975D272EE5A7E79
          C200D169D9E90F240F24059956709B244883768C593422CB0B762C9B11770E9C
          82EE97E7EC077F847BFDDF7302201EB1CBF3158BB1C2E3ACB138CB78ED71F8FB
          68AD6D2DE3D958A18542228662598E87CA662599B64B127753FB5B582CADA1B4
          B68C456F6F1A450C6BB2123450AABB2493D8772764F727BF72C631990AF45318
          C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C629
          5DA5FF00885BF9A53F30D98BBBB7D99DBBF09E7FF4ABBCDA22FF00C42DFCD29F
          986CC5DDDBECCEDDF84F3FFA55DE695FC317EA1E13FC2335F818DAA4BC66FA9B
          05FED6FF00F06D2BD6318C6689D5094C90FC4AF7CCE8DFC64D63F482791E3243
          F12BDF33A37F19358FD209E4A3847D78F16FE30623F1E82B2D81FD7BC47DD2B2
          FC623A917D50BDF4CFFF00016A3F9B2395DB9625D50BDF4CFF00F016A3F9B239
          5DB99FF177F64BE67F776FBFBD3590E65F5D19CFBA171F86698C632B8A8CD336
          05C69F7BCE8EFC52EBBFEA8C3E63F73605C69F7BCE8EFC52EBBFEA8C3E6E57C0
          F7F5EF97FDCDB1FC624ABAFC19FAB337FC1AD7FBD7AE6EC6319BED57ED318C62
          94C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6
          318A5318C6294C6318A57697FE216F87F7253F30DF1662EEEDF6676EFC279FFD
          2AEF368C72788872FBA27218A23EE7BA0201F7BDDCCB2726F887B9F58ED5B891
          8502D568A7CBCFCACCD62CD5882939F8E71112AF9676D5ABF5631BBC3464AB00
          5FCC1E33922B65965DB28E9915CB059BBA5750BE16B80CC6570BC56FB1B8FBAB
          EB7C75DE492F5AD6179DA0F8D4769E85DD2357658D8C0E3AC80AADD2A4866506
          9EF1771F7B7963899ED6DA6B88EDA7B959CC485CC7E9D6011B385EE1498D8756
          B40E86F64030B719C8DED3DB73E4B7637CC8B37EACC7B4F6DCF92DD8DF322CDF
          AB3344FE80673F69F27FD06E7FE9D507F43EFBFD0EEBFDC4BEEFDEFBC571CE48
          7E257BE6746FE326B1FA413CE3EF69EDB9F25BB1BE6459BF5664E7E0771336E4
          FEF1A6EC0B452AC74EA3D064D3B1BB94B3C4BE81565A41A22B1E1A3A119C924D
          5DC90A92028AEF1EB744F1CD1A35709B874578AB36AE663E1EF14E497DCD78C4
          76F85C9318F378C9E466B39D638A086F21925965768C2A471A02CCEC4003CFD4
          0E738DE27273E7714B1585CB745FDACAEC6191552349E367776202AA2AF72C48
          D0EFBAFC4EA85EFA67FF0080B51FCD91CAEDCBACEA69C5CD9D6AD830FB935F55
          E5EE710EEB4C6BB648CAEB0712F37112112F1F28CE44629A156907718FD8BF49
          0328C1A382C7AD1ABAAFCC924ED038D4CFB4F6DCF92DD8DF322CDFAB333FE33F
          14E456BE24729924C3645A1BCC9CF796B3C7693C90CF6F704491C914888CAE3A
          5C2BF493D0E191B4CA457BF9BE27251727CB33595C949EEE49E17585DE392394
          F5ABA32AE981D80DA274C0A9D106B8E719C8DED3DB73E4B7637CC8B37EACC7B4
          F6DCF92DD8DF322CDFAB32AFFA019CFDA7C97F42B8F77FABF78F9EA29F43EFBF
          D0EEBFDC4BEEFDEFBC571CE6C0B8D221F4BCE8E0F84752EBBEDF92A30F997BD7
          DC5CDF9B26CB1D5A80D5B746AA3F749A0E25E76B931055F8940C3E259ECB4CC9
          B26EC9AA0DD105171481551EBAF2628306AEDD9D26EA6B075ED4D0A15129D486
          AB99CB7A855E02B4838397C075D1838A691892C6209D4F0195235038945453C2
          26EC27376EE3B97F049E3D9AC7DE72AC9DFE36F2CECA7B5B2B5827BA82481679
          D669649122F48ABE90C6BD25CAEFA0B286D123776783F8FBDB6933175716D341
          04B15BC5149346F1AC8EAEECE10B81D5D235D44761B02BDC718C66EF55E34C63
          18A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5
          318C6294C6318A5318C6294CCA1F46CEACFCC8E6ADABA95456F8B2D22659F192
          84E2C1AA0B054083AE9E3E49292DA0D4AA4BA8C0803349F91AAC380A2EFEB045
          258DDBBAE7CD5E6605BD8DD7D9E75ADFC543CFD35BD33A9C6D914E8A9EBDA900
          83A008D820F9576C6AAC9212012047A24796DC6F40FB476D1AE52E8DDEC8D793
          3BDF99145D11CED97A0BAD67BE05E6BAD657681A044D150ADEEA2AD18EAB1172
          3251A056D291F6CF3E42A0AB23914731F62B2D35E1D5671CE1EA8B5A7ED3EA51
          CA3AA7B217D1FD3A61E729E97192F5474676C102B52A1D7B4AF207D17B2EFA63
          B6B71CBE946C98D8AB112BF924C7C20D9359A87EE4B9F32A5C35E02CBF31FA1D
          F25F6C6AE60F15E41F0CF97F69DCF405618164E7E6A8AB694D3C7DAF54895DA7
          67BE93089AD43DE6053660A48B89DA231878C211C4E2871923D3FF0098EF39DD
          D7A7A61720EC6E88E7664871F9DD1B7189132A42A6CFD6DA0F9154B9D9939122
          15BA63748F8887BFA6D9A8790608DAD28D2F84CCCE52F42C7180A0C69DD9083D
          0BB209D104EBD5AF2F6577BC517539545D2A9461D2074B7C9208F5F71B1BF68F
          3DD5B1F283AB9752FE56F51EDC1D39BA4C54F5354DFF001FD7BBC5DF366ECB67
          54919C9392D6B2D1753D893407BAAD235384ABD7EF128DEA71112C2AD67B4CC3
          A124D393B560E1CC643CE6D3EF7D90DB2E18F2F58EDE87D0327CCA829ED3AD38
          85250886AA4216DF12BDC6215DCD2D6C72D2C2C28658E6F4955F35AD329BAED3
          E71B4BB29558C9CA91EC00211AFA93FB1E8D8DB339276DE7CF4DAE474971BF93
          F62997976B1549D4E586A1073D7A7C89CB64B1D2F66D38EA586912B7139575AC
          301310F3F5CB14D4B49ACF256BB14F1CB4CF61F63D9D587951CC4BB721786DCD
          26B1F62DDBC6B891944367C6C6444649CC3180B686BDB7D5EFC9D6409527F648
          2B0AB1A688B1D79BB44AC4C549555FA4EDD47FA5E4FED5111FBA8566D852A142
          EBD5AD0D823FEE6BAC84E806358FE485EB0574FB057677EB04F63EAF303CEAA5
          F6F7557F6467A3F973AC3837B217D0115C8CDC214B1A2545B5374F4BC4C986C0
          999380AC79CDAE3A59CD6E33CF64E19FA2B7A42450F33224559D79249521CD62
          FC8BE6BF5BBE0CF4C9DEDC85E6123A669BC848ADFBA6AA9A85D57EBDABADD5F5
          75D59D0926D702C9C5D464A5628CFCD2A8362345A45449DA29F88CDCA64C4C23
          14BAA4FF00EF4AF4E5FE6F891FDAD6C6CB52F6545FF54BDBFF001E5A57F4D496
          7C989089091D453B0EAD376FE51BDD727A4B423D1C7F2BA3ABE48D9DB2FDED76
          D7AF677E75C3725C87EBDBC94E24F0277FF04227495A55DB3C7A35B7903276C8
          ED430089F65B9B54A37603051374998A519471ABEDDB8A88C524AB22AC022A1C
          1531CB9547C29EAA5EC8BFA83CE6D8AEF1714E3F5D2574A0D74BB09098A569DA
          612286D2EEC6C617CD57B4CAC5A32BE72E6A736453D1A771E6E0D8875FC05728
          0A9AA7E883FF0054D704BF11509FA4E5B338DEC41FBFB71F535EC1DFF74D0FEA
          F73FF9AB7EE71E863062D28F95DCF65F5007B6C7BFD7BAF9529D329F4511E820
          8DA027BB81A3ED1AFB5F31A96DC98EA93D43B8E5D4FBA55708ED535AEA19B6FF
          00D49C1E5795D5F468F559976B6DADA7B36C340DE68D62D0C0EE108C8D51E413
          8690A304E168D65E4BCEE2D651254873D9375F0E706FDE9FDC1661BE78DF315E
          83D86E378EBEA2A8F6CD5A8FB5C70D7AC50B747D248045C980B6072A38846064
          DD07EE88948A10BF5AA9B2873ADEB96D43F6479D2A7615A574E269A2DF866BB8
          B03C30368B648C272F364A536ABB7AB8A6DD24A19B3E6323267153B3460ED05D
          4EDE3001B0DF65B164868AE9914B817B20DD198B4F2A75A37858E32C995E3E08
          9A46D19493708B71382CA3562D924C1DB84C8649BACF18A4A988776801FB0008
          B28501403DBA7B6BB0F203FB7CFEDD3A1435B80A34C14B76EC4F50077EAF2F31
          F7BCEBC6BFEFFEBF9BDB8E9C16DF5C0E8BD2765AE6D8E1CEB5D8FBDA56DACF50
          C29D4DD3613CBCA4F1A1222E73716ED9439EBEA40AA8358B4148D4963AC9A6A0
          AC0B10B539C18EAA5EC8DFA8E21B39C713DC681BC25A815A7A17B34D53F4F524
          D18A5EC96752B40D82DB2F126922BC2D3E745618F05C1A79B240E452172DFCA6
          B7BA5A4149D6FA5A70662261B2ACE451E1CE9474BB45D33A2E1B04A6B2859441
          1708AA52A88B84D0789157454294E92A074CE5031443332DEC32BD70DD44C3E0
          F49F153FF2BC8AFCB9CE9B718EB70587CAF95BD10A0F6FE5FB75F40AF44A7A23
          3D047492BE7B751ED3EDEDFDBED983D417AD97303536D8E3FF004D5E1AEAAA96
          D6EA3971A0EAD67BE271FB4633B56D7DB6ED7458AB24ED3AA104C25E36AEF25E
          3DB2AF2E563B4CF4BA9AF6935255B2AE9B4A94259C56E2F6DBEA89D793A495BB
          535DFA96EBDD39C80E38ECE9F240C9CDEBC8BA84548C3489D3F4ABFAAC35BE80
          C2AF19077F8F83692123051B72ACCC405B19474BA31932E4F1B27310BC19C3A7
          F1DA87D966723E33782E48BB15F2FF00C8761ABDED8845A00486C8A9A36FD62D
          D8B87606210F37AB5C1ABD5DF0AC88491A518C5B013AEFDB32716FFECABAED40
          AF74AE97AA5A5DC705BF606EFD4F1BAC63975133492D3D0126F2CB60938F6C05
          3AFE6F1F4B8DB0327EFC0126CDBD32D19ACE0ABC9B36EEB8DB1577EA20A9200E
          DAEDAF31F9F7F9AB9D2868D3D1A90EA09623B9EAEE4A9DF60BEAF75681F4D6DB
          A2EFCD4DADB76EB1982CFEBDDAF49ADDFE9B2C04F22A3CAFDA629ACBC699DB63
          18CA319045BBA2B7928E5C41CC73F49CB17442386EA90BC9594FBD02AAF6FA87
          482E1044DDD074DE69CEBAB45959A4F133A4B0D4AEBB4AF972A0AA521C007CDD
          C5127AB8E199FB785568AA0A904487288DC1677A9D807DA01F9C57998698AFB0
          91BFB4754C6319CD714C6318A5318C6294C6318A5318C6294C6318A5318C6294
          C6318A5318C6294C6318A53282FA6F743B4FA7C4F735A6C393C3B6C3985535EA
          E2D4DA60285ED79E59EDE9E79F796F6D7B97D167846EA29F9B0A35AF17A37C7E
          701E79E06B7E7DBD603DFDCEFF0097BE7CB4BA6B700F869CF2E4BF3420B985CA
          13718E235CDA5C4B51E4C2FF00AAE85F45B2560BFDD59CCB0173B4593D6B25E8
          B6B1AC5CF918804DC37F3CF1BB1326AA201D6E4064F93B3F2BA4EF5AF2DFCFED
          F56ABB6304ABFCA2AA3A49D2F56FE576EDE7D8F7FEDADDDF47DE95C9F4A2D1DB
          3F4B8EF30DFA4D93B516D966B09F5917581624AB542B3543410C37D1FEC40922
          F6AF79F0C88C9B20303DF35161D90F385A0E71C7D8E36B7E2CF53987EA03A9B9
          12785D7B5AD85B2AF558E31069A48ACEBACF64D12E1525EA317B452DA442A305
          5C7D7377215F036B93ACDE118475717F2EB1149E52157373843C63E087B1D2E7
          4EB4E276FC77C8CD6B76DE7A6B643FBE38B7EBEBAA2D6D6EF757192A1275E673
          5AD593280F20C23E9D12F1466B1559241D48AE670A820A364D3A83E9FF00D2CB
          A34F21B887A7F717293A9F4271FF007C5CDB5C95BF6A177BDF8E34F714F5A176
          25BAB75F494AE5EA29CDAA37D33538782B114B2CB18CE492E578D3C2C1CB5297
          E4EB683A07C91B1F2B406B5E475F2BD5E7E6457600C43B894E99BD1922324B76
          07B81F4BE7AF6FCF5A0CE45FB1F8E56DF3903BD772E92EB05BFF004052F907B3
          6E9B26EDAF21A1EFB19190A7BB4D3D96770CDCD44DF54081B2444624F53868B6
          D290114A122DA3545E3C78A81D53D90F499E911A03A5B51AEE1AF2EB35B9F6BE
          D8711A6D91BAACACE3631CCB31823393C656AAD031AF2551ABD65ABD7AF651DB
          25A727E5E5665D19CCBCE3D6EC211944E61BD93B6B1ADD5A7FA41680AE5A65A7
          75BC1E9C79ABA1EC09C8315DDCF55E15F697A6C4598CBB26DE837526FA0D249F
          A4F5BB033032CE0CA376DE6A704879D39EDEC78C9D39F8F5B039ABD35F96DCA0
          A3EC4E3D57D6D9B6FAFDB2EF068C8CFD22A80591B53EAF5B3595575A291EF2B9
          0C83BB1B985B0C558E26C31F1F211473321708914E3B066223D95D127ABB8D80
          7B0F5EBF2EBB6EB920B2206974243A51D0347A4A8009041D0F3EFF00F7ABBAE5
          2F4652F257AA4F1CFA958F23CD4B1D005D4850D301A842C416CF6ADB6D8ED203
          ED89ED9D06305E9D1B0798FD834CFA33CD3CE7FF0068797F3746547550E9FC5E
          A63C4C97E2E1B6DFB4A84ADE69574FA390A206C6143E83DEB879E8DFA1A1B951
          015F48F9C027E79E9F4FCD3C1E306AE7C5E12E5EB94BD422E7D477D8C4EC9DB3
          B54192BB9B5B6FED55A476C4BC7326F16C6D966AA5F75CD8A2EE6DE29A88368F
          5EC94EB8569D4E20CD16917F4549D8461D846C50338E6904F839D29BA2CEF7E2
          8E98DB7C91EA9507A37785DABB2123B0B543ADF7C6BAAAF4B966F649B8C6B1CA
          57AE712BD9E305C44318E920465D63B8383D05D33037551007529240404300C4
          96D6FF0090EF47DC0D7C846003331531B845013AB5AD107B01DB5AF307D9DEB7
          BFC28E36A1C2CE2468CE3239BE257E4347D0D9D2CF7E5E0494B4AC4566EDDB9F
          4A295E3CFD90909E505DF93F341B0C9813C1E2F3B309FC25AE3E8F9D1B5AF4B1
          B5F25AECCF92C97205BF247E80D54DBA1A993D6C854CB4895BFC909927E96D1D
          884B1964C6F028788A842832F45F94FDF62F7C9B4CF37B25BD51575B97DD2738
          ECEEC334B6B55F5551F53BB974A45936915AAC7D9F5DA3AD6023A3355A190993
          C0899D1244D1AAB149C082A2D0ED4BE40633F3E78E14DE8ADCE3E191FA5072AF
          6AEC4D9DB1A75435C346ABB1AB5799C4E5195B29D0D53A9DA996BB85ADC5CED4
          F74FA766EBE853ED75C78FC1CD6E4DF3478E88F1892245803AE81FA99007CAEE
          37A1D86BBF97AF7FDB458CB2FD390650588E9EC7A483DCEFB773BF203CBD55B1
          1EAC1D21746755AD735084BE59A6B55ED8D5EE259C6AFDC55989653AF60DB4F8
          3209EAE59AB6F1DC5A76CA9C9AB1D1EFFD1849B82938E956083C899B628B9996
          92D51D41F63016EBF6C9D7363EA05D48778732759EA655246A3A9E61A5D1A207
          856EAB5582B85B5DEB6D6C67552AACA047B1693D054E868E7CF63912B663648B
          5916AF109EDEC91B93E3C6DE955BA2323647CC2E1C8C92AFF1CAB204544AB2AC
          AF42F2536210C9104AA9DAB9D575ABBC52AA8095149D4A312AC26058882D9B1E
          89F0579E963D62B4DF1BB693D76C6BDCDEE216AA7A72CA13CCD06B6CDA5AAAB5
          B96BCD566E00405246AFB66B578D2718B9056F2EBC83950FD8CE943A1CBF475E
          8AEF7AD9D9006FCB63C8F979FB86EB98C4822255FA40EAE95D0D9D74ECA9F31E
          CF9FDBBAFA0F210D1B1F068D76219B3878965129C2C5C7C7B545AB08B8E6CD0A
          C593362C5B82283766C9B11241B3440A92292299114C08429402963A33746B27
          48B67C88685E469B903EDFAE75538150DA883557D0A7B5925B113F00143676C7
          F4EFA6FE8F84DE2F143FA37D13DBC2FF00CFBBB3A31F6647F643D34FF9DE55FF
          00E7B8C99B8BCFB0417235DD3C8FFF002037F93D75D44148D747E4C9BD8D7D89
          07CFED907D55487D547A1A71F7A99D86AFB7D2BDD9B8E5C9CA532611709BBE89
          0ECE702622E25E95F4236BCD50F275B756079585C573D567A1EDB56B0C40B806
          EBCA4946328D8E655E9AEFD8C2C9EC0DB34DD8FD46BA86EF5E72D7B5E9D142B5
          AEEC45B946A2EE29A2ED954E0A5EED76DA9B2AC51F55932B36A49CAF5390ACBE
          74448011B424AF65C358F80101F5860A293B23B9D6FB9D1D6B5B1E47CBD62825
          9140018F6F2EC090091BD123B79796FCBD5DEBF361E1E26BB1115010318C2160
          A0E398C3C2C345346F1F17131318D92651D191AC1A2693564C18334116ACDA36
          49341B374934514C8990A50FD2C633EEBAE98C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314A6318C5298C6314A6318C5299F36CE885D32B8B5D
          4AB953CFBADF27A26E92B19AAA6D9CE544B4DB8BCA8AA8BFB3EC6BFB09533E55
          A37702F923B78966082670202272A862888A83DBE92791378EFC16E24F132CF7
          FB9F1CB45D37535A36979B0EC19AAC84B03BB48B39090956C325E91937C90F91
          919590764F374D0FDD5DABDC44BE1297E193A9949D6977B07BEF7AF5797ABF3F
          5F6248515C0D8660BA23D441D9FBDB1BAA1EEAF7C22D13D3F7D8FBF2D74071D9
          859A375D96FBA66EA0DAD763736896F4E59392DA3529353D28E91455F3631231
          A7916FE4FC28881C4047C63DA917A6DEABF635562E14E9299E795C6062F962F5
          ADE476D47BCD8BCA18374DDCA1B36E8DAA00AC5EBE7C953DA0A9AFD1AA2A5086
          214AAA6A1577BDE4557823BF1DEBA1B507267575934AEF8A1C2ECCD596F3C2A9
          65A5587CF06225CF5D9E8CB3C219D798BA64E8463A7E1A2E510F26E53FDF2C92
          F1F8D3F110D5EFF50B3A487DA2FA6FFD5B5FED2FF7EFF7B3E4A1EA047490001A
          6074347FF28F57979F7FBFBAFB594042AC5C12FD44A91DFB0001DFDAF2F7D65F
          3D9365EF5458763F47CD8FABEC4C65349C96B794B5D0AD291E44B1CF35A9ECDA
          6646BD36552612465819A95B2B579E524D14DF8A5F5EEC80E3C61966FD677AF1
          F047E91EDF1C7FE356EAAF721B7572275CD8F4D45C56B7465E5EB757ACEC48E5
          EAF72B3596DA2C1080485AD5A4661AC341C6BF919D909E751645631BC3F9FC9B
          4BB3DCFD2D7801C85A5E9ED79B8F8C946BB537405352D7DA6E11DBEB64625AFE
          968348A6295720DDC158A2E402348D21225104DDBB747F0B140DE3F1818C6F0B
          44F4A0E9C1C68B3475D74BF0E748D4EE70CE1279076F7B57FA32B5403E40C432
          0FEBF62BCB9B2CC40C824621448FA1DEB2765113F65BB1CFE2147DB68A80C003
          E7B1A1AEDECF5EBEDD72248FA630C1C98CB1001001D9046FD7EAEFAAC815DF86
          3B2386DEC5776934DBF5F7F51D8DBFB927ABB7F49D4269A1D8D8AA55EB0DCB56
          D3E95093ED1511599493CAD52595B978B744424618F6B3C44B35672CC5F3443D
          57A7E6A7F63253DC39D132FCD7BA4046F291F566495DC2C5DEC8E5443386F602
          DA279360456328AF92A9B430D7490E704E1532B6314C5514FDF475C47795BF78
          F1A57949AD2574EF2075E416D2D6538FA224A5A9D6307A314F9F40C8212B0EE5
          6060ED939F28C245B20ED0F038297CAA45F194C5EE51803F50AFA487DA31A73F
          D5B5FED2E71E8C8604749D285D3027CB5DC7BFB76F9A8260558317059FAF6846
          8F651A3BF576FECF55660FD92921AD3911CD3E928D6BB2CA5834EEF3D5F43420
          E7619574C959BD6BB376C57138D96895E45A95EB4524EAF368BC62ABE6657481
          9644EE9A82A43A41C4DCB9E2C50FD8ED7565E0F6F6D24E65ED1C6AD9C52AD349
          6E06153BA4FD6E39959E36A3BCE22BD6456ACCBD1921074CB4D62D753B4C5B78
          DB4C63C95730AF649E4228F9396D70EF8E3B74E49ADC9C4ED55B0F8DB5ED9DB3
          F524354697A0A322184ACA3AD1F45A5AAC9D555E3814EC51E58AAC57D48364E5
          059D9256401B46A8F0CD976A82CA0CB6E4EF0AB8ADCCF88A9C2728748D337346
          51A424A56A0DEDADDF1CD5F7D32D9B34965A39C46BE8F7491645BB2669BC4456
          3375C59B451448CA3644C4F15ADF58DFCF7D0DA5D4571363EE45BDD8898B7C5E
          E3D1A4A609081D22408EA5D41250901802355D105FDBCCD2450C825F8AB35BDC
          AA90DD1232AC8118F9070ACA48DED7637DFB56407D92FDA2FF00CD6EA27C10E9
          99A29E423EB53668C6C4B9269CAC5A835D89BCA71B4743B9BB0B48E9C70585A3
          EBEA5276F9370DA1259542B1709351B474A2AB0B2357FF00589D13D60F88FB43
          881CF5E79EE6D05B9AE9AEF60566A1A76EFA42219409AA32FAD2796DC152AC5A
          DBC2E8FD2ECCEC9F48A36492AF08273AE4A4676240C2C101488E77AB0BD3DF86
          55EE4243F2C2338FF4C4F9195F8F8F8B86DB8E959D93B6473189D7C96AA8D451
          732732F1B08B2D7A825576EB1DA9D74E3C806053CEBBB81E50E46F1778FDCB9D
          7E86ACE49EABAC6DFD7CD2C51D6D6B57B5A2ED560DACB10D6458C74D363B176C
          9D20F9AB29793689AA9382776CFDD20703A6B1CA3ED3116EA24E989523448035
          AD6FDA411EFF00577EF5DCB304E80176141076013B6F3D79E8797AFCBCEB147E
          CB0B6B54F75EBEE90DBB69AE81C52B6B6BEDF7B3AB4EC4E554C6AEDD2278A967
          8B3AA64BB94562309144AB94A1DC8A95427840C5F0869EF5A75C2E959B876251
          353EB7E5F542D3B0F655B6BB43A356DAD276D347360B6DB255A41D7A19BBB93A
          0318E6CB49CABE6ACD25DFBC68CD23AC0A397282253A81CCBB23A5DF00F706BB
          D35A9B67718B5FDD75DF1EA1EC15FD2D559A52C6BC7EBC84B4AF0EE27A2E04E4
          9D4DD959C8295F840322EDCBA2B74A31A20D3CDD04813CF43D7BD1AFA616A8BE
          D3367EBBE1B6A8AA5FB5E5A606EB49B3C616CA1215DB55624DACCC04DB1F38B0
          AE879E45CA326AF5B8AC8AA979644BE512397B947EBA5C316057E56B60EFD400
          EDAFE5FBDDAB82E8C8AA4382A1B446B4492BADEFDC3D556698C633B2BA698C63
          14A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6
          318C5298C6314A08F60111F803BFFDD9547B37939C8FD9DC96B571DF8BEA5260
          4B408C70F2C56AB620778574EA3423939711505AC991A3369252CCA01068DA11
          EBF5A45372ED5768B130834B5A53FC03F6F77C06FF0080E52F70A0C0AF3DB974
          A381F12E594D8C9A626FF0BCDC9B4514FB077F5F84134DB87ABD5DBC3F076CA9
          3C4FBDC91BDE11C7AC7297B878791F226B5C85E63A5F8BDE7C52D6CAE2E8C10D
          C005A112C889D6E9A72A3A410A5B714E4D35C99F058FB7BA9EC932593315CCD6
          CE229CC315BCB37A34974593AD914315D3748D6F5D8FBDEA7E746D39BD25C937
          978ADC037DBFC7C643E50C46AE91819574E1DCAC4264938D49F9964DDC3CB43B
          B2C9A4CDFB341FA2AB6067E68605CC4F4DD63BE7A966DEA7426C2A1D0754CC54
          E7CEFF00D1920BF9847797F45CABC877A0A337B7B6AF912A4FE3DD223E345331
          C8982A97721C871917C989ED2129C7FE5AB0D5EBD18F718C8B512DA69D599C5B
          5981B079E28926A5A5662DD170FE40AE10926E2E9E28E5423A4241B1952B845D
          264859C51ACF5037FA3A84EF48EC1D7307AB9556C3F43B1761691AA3F6BE4EDF
          3A9CD03F3A9499678622D36493704F04838501AAA915114840A82552E4EF7925
          9F29E3DC62E794734E49690718BEBB96EF833D99BDB8B987903DA433644CCCD1
          491DADAF4DA5DC9B321B845247533EE21773E4A1CB637172E5B39938A3C4CF3B
          CDC7CC1E9E5953266047BAF4859196187504EFBEB32AA92365C9B1FE4DEF5BA6
          83E31B8D86FDB4021B50F1D56874D8A7E70F6BA8DCE6CEC909A062555549D3C8
          F8B204CC847957500EE5160895C8895454338C380FCA4BF6FD8AD935BDAC947A
          37CD712F1E9B8519478441DCC64B16410222F23C155132C84649C348A0ED56C5
          411F22B3148EDC8B1545978E9D50AE489DA71CB545CE659B34256C24B5EC4916
          0DDF19A47378B4D857D5946CC9B91DC928C8493B6772D5B249BA7A29B104D349
          771E028FA471936D6BE53A88EC1575A4E965F5F6E580924221C963E521D15679
          B40C3DB5F9D56132C235F22AB79186B3B440CA362A6B11E01D23A82A97BE472F
          E20E42C7C61C5E3D73EF1616C67C2F17BBC1CD73109AF6FB358DBDBA39196DC1
          05E4B4B83616F34C8BD092388F6BD5A3E9BCE43710733B5B65C894B0B77B0C4C
          D8F7913AEE2E3216B7130B9788302C6194DB46F200551D82920369B92DBF29F9
          99B53756F4D79A4E275428CB52D92CB1A8B0B0B4954241F4641D8A46BED0537C
          7994D9B8927E78E32EA82DE8D66919602828990A1927F837CAD9EE4D536E07B9
          C1C5C1DDA832CD98CD160C8ED1887CC655174B45BC41A483B7CF18392A8C2459
          3D68ABD764F28C88ED25C8578666CEB175727C9053937CC82F1B97A92161FA33
          D883366B3010CE8CC7DB02C42C8B5DF384958DF4A8BAF18106580B1E0224F383
          017DCE5BE05EC3A7EB9E27F25AED14DE4DA5FEA6DA4662CEFA55E24E1AC9BD18
          292FA06422CA46EDCCCD13BF2BA68AB679E7AECD28BBA7477EA3574D59308F70
          DE779F8F97D94B92CCE7CD84CDCFE7CA2658A1C2DE5B612495ECA2C0928585C5
          92206BB1D48AB1A686C1D363F0B9EBF19A81AE6F7226DA46E4925DADE749B196
          1C7BB1B75C71E927D25B81BB8EEA154003B120FE654B9AD603F355694353A888
          D0AF1B216D384B635ACA08D9A46222E4DB41C33C56E00AF9E2E741C3F8197916
          8E456609C6B945B11BA7E6CC9D36BDA28F88A5307B825010EDEE7AC3BFAB326C
          EACFACD8F16693130B6B1F6ED8ADD92B7B7B101153C471190AF21890E9AE8CDA
          D1458359505EB95B922B74255550BE70A09C9E709AE927A91D65706BB075E51E
          F2CC001ADB2A95FB0A040111F244998A6B21E487BFD70192071E4CC537D714C4
          1037D700E4BFC01E597D98B8E518EC965A0C9CF72D65CA2D7D14D1486DA3CD2C
          AD7762FE889F46D67711A2BC4C03A197E528EA3596F0FF002D3DEBE56DEEAF23
          BB92436F9588A48927A15C80733DB90A494304C80346C0105F6546C6FDEB18C6
          6CB55974C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C
          6294C6318A5318C6294C6318A5318C6294C6318A5741EC601F884043FE5951DB
          0F8D7C9CD3FC9BB96FFE3144542E2C763347E8CCD76CB208B2347389A3C73D9B
          2BB49DCA57D374D559B8D426A39E474C11EA475178E74C8504CCB3FB72C644F9
          670FC772F82C23BDB8BFB1B8C5DF4791C7643193ADB5EDA5D468F1F54523C532
          1578E47492392374753DD7601189CB61EDB2F1DBACF25CC125A5C2DD5ADCDA4A
          229E0995597A9199245219599595919483DC76AA8FD53C1FDB511A439329DE25
          EBCAEE2E42B3153CCD172A291312E50792D33E091936ED3C00EE665E61D79F83
          06CED8B149BB133770E8456293D3F566A1EA61A769107AEA8D21ABE3EAB5F348
          0C6B578E2224164FD2B2CFA69E8AAEDC451DC2C0A3E917270011EE44CC54C9EA
          297B5D0674F500FDD37FB7B64397C1AE3B6ED8A971995E4B87B9C563E7C6A5E6
          332CF6D75796F737AD91B8F8F4DE899A669AF1DA77D742F5150142A205C3AF0D
          C6C66D1AD6EF2B65259DB4968B35A5EB4334F14B39BA945C3FA32642F3B191B5
          D2A4E86805502AFE678B1B7B6872CB516D6DCB1947B051EA5AB6263ED8836508
          F215FDC9B43CE04946B1AFCA22772B479ADB3AA4CB170EDB99B9A1D9B641CAA4
          7C991B67F7BBB873673F2678FF00B7B4556EA75CAF55A521DBDF5A459232B28B
          28B8BB01DFBC914E39A20DC924E6560E525625416C9A8F0C641922B015B76590
          B3EC7AFB8FABEF0FC799193C28E2D35ADF433ADECD7390CEDB7219B2734D1C99
          34BFB57B568961BB30964800B54431E8FC97934416047A9B8B62DE2B84713492
          DC6422C9BDD3C8AD722E61689A3E898A12231E8557A347E4B368824115D9C61E
          346C8D55C88E4DEC7B5A5149D67645825242A0B337E474EE45B4E59E5EC82772
          D8A429D81A3D17C831729BAF0195780A19A82AD4A55D48835AE0FF0025EB3A3B
          935AD9AC5573CFB62DBB5EAD5B221626650B040D5EC3332728B26E14F269C591
          72290AAB76F26666E17453916CBA297EE25717A38CF25D783DC5AEED2C2D1A6C
          AC71E38F26303C7751ABB2F2C4963C9A48C606EA5092910680E8017A8C9F281E
          99787E2A5860859AE956DCE58A1595031FA32AEB78AC7D19D8E97222035D3A1D
          45FBEEBC2DBC23AD3FE240EA787A75189B65A6BEAF324AD88C345B57EF6EB069
          C6C93C5BE88BCC425116F352EC576AB39596EE2C5F1C8E005115083CF3C41A05
          FB5771E75E50B65A4D50B6D71A4B3376D9A3D4641268C549F94730CCCCF1B899
          BACAB4875D8B6505B9D440A64BC09AAA8144E692D8C9262B81F1FC266AD7398B
          B76B3BBB5C0271D58A131C76D2D8C73C73C6F3C491A992E51E3D098B82559810
          7B6B236B82C7595F457F6B19866871CB8B0A855627B65912543222A8EA955934
          AE48EC5BB1EDA6318C99D66698C6314A6318C5298C6314A6318C5298C6314A63
          18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C
          6314A6318C5298C6314A6318C5298C6314AFFFD9}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo1: TfrxMemoView
        Align = baWidth
        Left = 143.622140000000000000
        Width = 476.220780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Desenvolvido por: Elvis Sousa Brand'#227'o')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Align = baRight
        Left = 619.842920000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Align = baWidth
        Left = 143.622140000000000000
        Top = 102.047310000000000000
        Width = 574.488560000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'RELAT'#211'RIO SCOUT PARTIDA(S)')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Top = 151.181200000000000000
        Width = 740.787880000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo3: TfrxMemoView
        Align = baWidth
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'DADOS DA PARTIDA')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Top = 253.228510000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Local da Partida:')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Top = 275.905690000000000000
        Width = 105.826840000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Data da Partida:')
        ParentFont = False
      end
      object PartidaNome_Time: TfrxMemoView
        Left = 11.338590000000000000
        Top = 302.362400000000000000
        Width = 302.362400000000000000
        Height = 37.795300000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haRight
        Memo.UTF8W = (
          '[Individual."Nome_Time"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaGolsPro_Partida: TfrxMemoView
        Left = 313.700990000000000000
        Top = 302.362400000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Individual."GolsPro_Partida"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Left = 389.291590000000000000
        Top = 302.362400000000000000
        Width = 37.795300000000000000
        Height = 37.795300000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'X')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaGolsContra_Partida: TfrxMemoView
        Left = 427.086890000000000000
        Top = 302.362400000000000000
        Width = 75.590600000000000000
        Height = 37.795300000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Individual."GolsContra_Partida"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaAdversario_Partida: TfrxMemoView
        Left = 502.677490000000000000
        Top = 302.362400000000000000
        Width = 226.771800000000000000
        Height = 37.795300000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          '[Individual."Adversario_Partida"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Align = baWidth
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftTop, ftBottom]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          'ESTAT'#205'STICAS DA PARTIDA')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Top = 381.732530000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Total de Chutes:')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Top = 404.409710000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          'Total de Chutes Certos:')
      end
      object Memo10: TfrxMemoView
        Top = 427.086890000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Memo.UTF8W = (
          'Total de Chutes Errados:')
      end
      object PartidaTotalChutes_Scout: TfrxMemoView
        Left = 113.385900000000000000
        Top = 381.732530000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Memo.UTF8W = (
          '[Individual."TotalChutes_Scout"]')
      end
      object PartidaTotalChutesCertos_Scout: TfrxMemoView
        Left = 158.740260000000000000
        Top = 404.409710000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Memo.UTF8W = (
          '[Individual."TotalChutesCertos_Scout"]')
      end
      object PartidaTotalChutesErrados_Scout: TfrxMemoView
        Left = 170.078850000000000000
        Top = 427.086890000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Memo.UTF8W = (
          '[Individual."TotalChutesErrados_Scout"]')
      end
      object Memo11: TfrxMemoView
        Top = 449.764070000000000000
        Width = 147.401670000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Total de Assist'#234'ncias:')
        ParentFont = False
      end
      object PartidaTotalAssistencias_Scout: TfrxMemoView
        Left = 147.401670000000000000
        Top = 449.764070000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Individual."TotalAssistencias_Scout"]')
        ParentFont = False
      end
      object Partidap100ChutesCertos_Scout: TfrxMemoView
        Left = 264.567100000000000000
        Top = 404.409710000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Individual."p100ChutesCertos_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        Left = 340.157700000000000000
        Top = 404.409710000000000000
        Width = 185.196970000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '% dos chutes foram certos.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Partidap100ChutesErrados_Scout: TfrxMemoView
        Left = 264.567100000000000000
        Top = 427.086890000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Individual."p100ChutesErrados_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 343.937230000000000000
        Top = 427.086890000000000000
        Width = 192.756030000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '% dos chutes foram errados.')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaTotalPasses_Scout: TfrxMemoView
        Left = 113.385900000000000000
        Top = 472.441250000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Individual."TotalPasses_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Top = 472.441250000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Total de Passes: ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Top = 495.118430000000000000
        Width = 162.519790000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Total de Passes Certos:')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaTotalPassesCertos_Scout: TfrxMemoView
        Left = 162.519790000000000000
        Top = 495.118430000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Individual."TotalPassesCertos_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Top = 517.795610000000000000
        Width = 170.078850000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Total de Passes Errados:')
        ParentFont = False
        VAlign = vaCenter
      end
      object PartidaTotalPassesErrados_Scout: TfrxMemoView
        Left = 170.078850000000000000
        Top = 517.795610000000000000
        Width = 75.590551180000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[Individual."TotalPassesErrados_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Partidap100PassesCertos_Scout: TfrxMemoView
        Left = 264.567100000000000000
        Top = 495.118430000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Individual."p100PassesCertos_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 343.937230000000000000
        Top = 495.118430000000000000
        Width = 188.976500000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '% dos passes foram certos.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Partidap100PassesErrados_Scout: TfrxMemoView
        Left = 264.567100000000000000
        Top = 517.795610000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelPartida
        DataSetName = 'RelPartida'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Individual."p100PassesErrados_Scout"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 343.937230000000000000
        Top = 517.795610000000000000
        Width = 196.535560000000000000
        Height = 18.897650000000000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '% dos passes foram errados.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Line3: TfrxLineView
        Top = 540.472790000000000000
        Width = 740.787880000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object IndividualLocal_Partida: TfrxMemoView
        Left = 105.826840000000000000
        Top = 253.228510000000000000
        Width = 612.283860000000000000
        Height = 18.897650000000000000
        DataField = 'Local_Partida'
        DataSet = frxDBSelecao
        DataSetName = 'Individual'
        Memo.UTF8W = (
          '[Individual."Local_Partida"]')
      end
      object IndividualData_Partida: TfrxMemoView
        Left = 105.826840000000000000
        Top = 275.905690000000000000
        Width = 612.283860000000000000
        Height = 18.897650000000000000
        DataField = 'Data_Partida'
        DataSet = frxDBSelecao
        DataSetName = 'Individual'
        Memo.UTF8W = (
          '[Individual."Data_Partida"]')
      end
      object Page: TfrxMemoView
        Left = 638.740570000000000000
        Top = 1024.252630000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object SQLQSelecao: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conexao
    Left = 952
    Top = 56
    object SQLQSelecaoLocal_Partida: TWideStringField
      FieldName = 'Local_Partida'
      Required = True
      Size = 50
    end
    object SQLQSelecaoData_Partida: TDateField
      FieldName = 'Data_Partida'
      Required = True
    end
    object SQLQSelecaoAdversario_Partida: TWideStringField
      FieldName = 'Adversario_Partida'
      Required = True
      Size = 25
    end
    object SQLQSelecaoGolsContra_Partida: TIntegerField
      FieldName = 'GolsContra_Partida'
      Required = True
    end
    object SQLQSelecaoGolsPro_Partida: TIntegerField
      FieldName = 'GolsPro_Partida'
      Required = True
    end
    object SQLQSelecaoCod_Time_Partida: TIntegerField
      FieldName = 'Cod_Time_Partida'
      Required = True
    end
    object SQLQSelecaoCod_Scout_Partida: TIntegerField
      FieldName = 'Cod_Scout_Partida'
      Required = True
    end
    object SQLQSelecaoCod_Partida: TIntegerField
      FieldName = 'Cod_Partida'
      Required = True
    end
    object SQLQSelecaoCod_Time: TIntegerField
      FieldName = 'Cod_Time'
      Required = True
    end
    object SQLQSelecaoNome_Time: TWideStringField
      FieldName = 'Nome_Time'
      Size = 25
    end
    object SQLQSelecaoFoto_Time: TWideStringField
      FieldName = 'Foto_Time'
      Size = 50
    end
    object SQLQSelecaoCod_Treinador: TIntegerField
      FieldName = 'Cod_Treinador'
    end
    object SQLQSelecaoCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
      Required = True
    end
    object SQLQSelecaoTotalAssistencias_Scout: TIntegerField
      FieldName = 'TotalAssistencias_Scout'
    end
    object SQLQSelecaoTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object SQLQSelecaoTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object SQLQSelecaoTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object SQLQSelecaoTotalPasses_Scout: TIntegerField
      FieldName = 'TotalPasses_Scout'
    end
    object SQLQSelecaoTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object SQLQSelecaoTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object SQLQSelecaop100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object SQLQSelecaop100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object SQLQSelecaop100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object SQLQSelecaop100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
  end
  object frxDBSelecao: TfrxDBDataset
    UserName = 'Individual'
    CloseDataSource = False
    DataSet = SQLQSelecao
    BCDToCurrency = False
    Left = 952
    Top = 248
  end
  object SQLQRelAtleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'SELECT * FROM scoult.tbscoutatleta, scoult.tbatleta WHERE scoult' +
        '.tbscoutatleta.Cod_Partida_Scoult = 1 AND scoult.tbscoutatleta.C' +
        'od_Atleta_Scoult = scoult.tbatleta.Cod_Atleta AND scoult.tbatlet' +
        'a.Nome_Atleta LIKE '#39'%'#39' ORDER BY scoult.tbscoutatleta.Cod_Scout A' +
        'SC;')
    SQLConnection = Conexao
    Left = 1064
    Top = 56
    object SQLQRelAtletaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
      Required = True
    end
    object SQLQRelAtletaTotal_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object SQLQRelAtletaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object SQLQRelAtletaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object SQLQRelAtletaGols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object SQLQRelAtletaAssistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object SQLQRelAtletaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object SQLQRelAtletaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object SQLQRelAtletaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object SQLQRelAtletaCod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object SQLQRelAtletaCod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object SQLQRelAtletap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object SQLQRelAtletap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object SQLQRelAtletap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object SQLQRelAtletap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object SQLQRelAtletap100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
    object SQLQRelAtletaCod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
      Required = True
    end
    object SQLQRelAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object SQLQRelAtletaDataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object SQLQRelAtletaFoto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object SQLQRelAtletaRG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object SQLQRelAtletaIdade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object SQLQRelAtletaCod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object dspRelAtleta: TDataSetProvider
    DataSet = SQLQRelAtleta
    Left = 1064
    Top = 104
  end
  object cdsRelAtleta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelAtleta'
    Left = 1064
    Top = 152
    object cdsRelAtletaCod_Scout: TIntegerField
      FieldName = 'Cod_Scout'
      Required = True
    end
    object cdsRelAtletaTotal_Passes_Scout: TIntegerField
      FieldName = 'Total_Passes_Scout'
    end
    object cdsRelAtletaTotalPassesCertos_Scout: TIntegerField
      FieldName = 'TotalPassesCertos_Scout'
    end
    object cdsRelAtletaTotalPassesErrados_Scout: TIntegerField
      FieldName = 'TotalPassesErrados_Scout'
    end
    object cdsRelAtletaGols_Scout: TIntegerField
      FieldName = 'Gols_Scout'
    end
    object cdsRelAtletaAssistencias_Scout: TIntegerField
      FieldName = 'Assistencias_Scout'
    end
    object cdsRelAtletaTotalChutes_Scout: TIntegerField
      FieldName = 'TotalChutes_Scout'
    end
    object cdsRelAtletaTotalChutesCertos_Scout: TIntegerField
      FieldName = 'TotalChutesCertos_Scout'
    end
    object cdsRelAtletaTotalChutesErrados_Scout: TIntegerField
      FieldName = 'TotalChutesErrados_Scout'
    end
    object cdsRelAtletaCod_Atleta_Scoult: TIntegerField
      FieldName = 'Cod_Atleta_Scoult'
      Required = True
    end
    object cdsRelAtletaCod_Partida_Scoult: TIntegerField
      FieldName = 'Cod_Partida_Scoult'
      Required = True
    end
    object cdsRelAtletap100PassesCertos_Scout: TFloatField
      FieldName = 'p100PassesCertos_Scout'
    end
    object cdsRelAtletap100PassesErrados_Scout: TFloatField
      FieldName = 'p100PassesErrados_Scout'
    end
    object cdsRelAtletap100ChutesCertos_Scout: TFloatField
      FieldName = 'p100ChutesCertos_Scout'
    end
    object cdsRelAtletap100ChutesErrados_Scout: TFloatField
      FieldName = 'p100ChutesErrados_Scout'
    end
    object cdsRelAtletap100Assistencias_Scout: TFloatField
      FieldName = 'p100Assistencias_Scout'
    end
    object cdsRelAtletaCod_Atleta: TIntegerField
      FieldName = 'Cod_Atleta'
      Required = True
    end
    object cdsRelAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
    object cdsRelAtletaDataNascimento_Atleta: TWideStringField
      FieldName = 'DataNascimento_Atleta'
      Size = 10
    end
    object cdsRelAtletaFoto_Atleta: TWideStringField
      FieldName = 'Foto_Atleta'
      Size = 50
    end
    object cdsRelAtletaRG_Atleta: TWideStringField
      FieldName = 'RG_Atleta'
      Size = 15
    end
    object cdsRelAtletaIdade_Atleta: TIntegerField
      FieldName = 'Idade_Atleta'
    end
    object cdsRelAtletaCod_Time_Atleta: TIntegerField
      FieldName = 'Cod_Time_Atleta'
    end
  end
  object dsRelAtleta: TDataSource
    DataSet = cdsRelAtleta
    Left = 1064
    Top = 200
  end
  object frxDBRelAtleta: TfrxDBDataset
    UserName = 'RelAtleta'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Cod_Scout=Cod_Scout'
      'Total_Passes_Scout=Total_Passes_Scout'
      'TotalPassesCertos_Scout=TotalPassesCertos_Scout'
      'TotalPassesErrados_Scout=TotalPassesErrados_Scout'
      'Gols_Scout=Gols_Scout'
      'Assistencias_Scout=Assistencias_Scout'
      'TotalChutes_Scout=TotalChutes_Scout'
      'TotalChutesCertos_Scout=TotalChutesCertos_Scout'
      'TotalChutesErrados_Scout=TotalChutesErrados_Scout'
      'Cod_Atleta_Scoult=Cod_Atleta_Scoult'
      'Cod_Partida_Scoult=Cod_Partida_Scoult'
      'p100PassesCertos_Scout=p100PassesCertos_Scout'
      'p100PassesErrados_Scout=p100PassesErrados_Scout'
      'p100ChutesCertos_Scout=p100ChutesCertos_Scout'
      'p100ChutesErrados_Scout=p100ChutesErrados_Scout'
      'p100Assistencias_Scout=p100Assistencias_Scout'
      'Cod_Atleta=Cod_Atleta'
      'Nome_Atleta=Nome_Atleta'
      'DataNascimento_Atleta=DataNascimento_Atleta'
      'Foto_Atleta=Foto_Atleta'
      'RG_Atleta=RG_Atleta'
      'Idade_Atleta=Idade_Atleta'
      'Cod_Time_Atleta=Cod_Time_Atleta'
      'Local_Partida=Local_Partida'
      'Data_Partida=Data_Partida'
      'Adversario_Partida=Adversario_Partida'
      'GolsContra_Partida=GolsContra_Partida'
      'GolsPro_Partida=GolsPro_Partida'
      'Cod_Time_Partida=Cod_Time_Partida'
      'Cod_Scout_Partida=Cod_Scout_Partida'
      'Cod_Partida=Cod_Partida')
    DataSet = cdsRelAtleta
    BCDToCurrency = False
    Left = 1064
    Top = 248
  end
  object frxRepRelAtleta: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42507.610522569400000000
    ReportOptions.LastChange = 42507.610522569400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1064
    Top = 296
    Datasets = <
      item
        DataSet = frxDBPartida
        DataSetName = 'DadosPartida'
      end
      item
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Picture1: TfrxPictureView
          Width = 143.622140000000000000
          Height = 132.283550000000000000
          Picture.Data = {
            0A544A504547496D616765054D0000FFD8FFE000104A46494600010101004800
            480000FFDB004300010101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            0101010101010101FFDB00430101010101010101010101010101010101010101
            0101010101010101010101010101010101010101010101010101010101010101
            01010101010101010101010101FFC00011080101012303012200021101031101
            FFC4001F00010003000105010100000000000000000008090A07010304060B05
            02FFC4005E100000060201020104080F0A0A0709000001020304050600070809
            1112131415210A173138415157961618192236586171767781B2B5D5D6232427
            33567397B6B7F0323742657492A1A5B1C12639529194B4D4253A4346537295D1
            F1FFC4001E010100020203010101000000000000000000060705080103040209
            0AFFC40056110002010401020204040C100C0700000001020300040511061221
            0731134151610814229115323436527175A1B2B4D1F009172335375556627476
            81929495B1B3164445535463739396B5D3E11842466472D4D5FFDA000C030100
            02110311003F00DFC6318C5298C6314A6318C5298C6314A6318C5299D3B00F7F
            57BBDBBFE4F733AE440E65735B4DF09B5929B0369C92ABC8C89D6634CA34399B
            AD6ABA4C244218ECA21A2CB229A4D19115497979878A231D14DD44FCB2AA3C74
            C193CF35E5E5AE3EDA6BCBD9E3B6B5B74324D3CAC1238D079924FAC9D0006CB3
            10AA0920565F0380CCF28CC63F8FF1EC6DDE5F3595B98ED31F8EB289A6B9BAB8
            90E951117C82805E4918AC7146AD248E91A33097A63149DC4E72943E0F108140
            3F288867641D36F705CA023FCEA61FECF1660EB93BD63F99BC8694916D5FBDBD
            D17405567058CA86AB7EE61E5936463981BFA6AFC9F90B5C9481501049CAD1AE
            ABF10E4DE2513826C3D80B5DEAEE9DC6BC884C2FB6765AD2C513092515BDDA54
            9128987C46107C79533901318004C20A87710EE3DC43296C8F8E783B6B868B1F
            8BBCC8428C54DC34B1DA23807E9E24649A4656EE47A458D8FAC0DF6FD10E23FA
            1A7E24E5F1515F72AE67C7B8A5F4F0A4AB8982CEE73D716E5C6FD0DECF1DCE3E
            DA2993B0716D2DE47D5D416560A0BFD36CAA10FF00E01C87FF00ED301BFE0239
            FD67CFD78EBD5779B3C74948E346EDD9CD93526AB945ED1B6D3C79778A7ED3B8
            78DB359A92726B6418109E2169E869E66D515BC0670C9DA043B5535F3C04EA37
            A7F9DB4F70AD74A34DDAB5B62DDC5EB564ABC23A928922A7237F4C4148022D53
            B255D77660451956ED9B3968AAADDB4C46C5B872CD37330E27E2571FE5928B4B
            7696C723D24AD95E742B4DA00B7C5A452526E91B3D3B49080CDE8FA54B0A07C7
            2F820F8ABE06D9B6772B059F23E242458E4E478033CB158B4AFD108CB5A4D1A5
            CE3C4ADA55987A7B30EF1C46E84B2246D62381100F58E558F3E39CB6BE3FCFC2
            EB1D5ECA2FE8BE4A152B1CDD8A61B8C8B5858C76F1E328E651D1E55934D79674
            AC7BB70E557E53B666C41A79368F1590F2B1F595F5497979F28D1DF32A9FFA97
            FBFE40C8472FF844F00E1B9DBCE3F7C32F7B7F60C23BB38EB486582198AAB342
            D24F756FD5220203F42B2A9DA96EA056B46331E23F1DC25FCD8EB93793DC40C1
            6636B0472468E403E8CB49345B75047574860347641040D41E332F9F5497979F
            28D1DF32E9FF0077FCCBF77FBF60C7D525E5E7CA3477CCBA7FDDFF0032FDDFEF
            D8322FFF008B3F0DFF00D0393FF41B1FFF004BF3D1F76F17FA6E717FF3196FE8
            D6FF00FDBF7FF6FB0D6A0F199B6D79D5139195FB247BCBDBC82BED63CE912CC4
            42B01190920661E3ECE0D13230C8C791BBF29044E819FB77ED0E72F93511029F
            CA92E1B935CAD89D21A0A336ED798A5627B74083654166E8544583B7D638A5E6
            D93D95144E57048E670ED1DC82E8B7311676AA484711C341760F50B078B78E1C
            17966173D9CB3B9BCB3B6E3900BACA4390B758AE61B7656F472C6914B324AB23
            23468B1C8CE64D02AA597722C4F38C065EC6FEFE09A6861C62096ED2E62092C7
            130255D551E40E1882802B16EB1D240DAEE61E3330AF7A9672E1D3A59746F50B
            1E928713119B3A6D68CD9B80FB89A267F1EF5E1881EBEC2BBA594F8CE39E37D5
            25E5E7CA3477CCAA7FEA5CAFCFC2CBC360CCA2C793305240616167D2C010363A
            B221B47CC6C6C8F56FB08E9F1738BEC8F43953A3E62DA0D1F2EE37760EBED807
            5E607715A83C770EE01F1FB9F9332F9F5497979F28D1DF32A9FF00A97EEFF7EC
            19E531EA5DCB768E9172BDE2124D248E063B17D4CAD91AB9287BA9AC68F62C1E
            1483F08B776829F11C3395F858F86CCCAA6CB92A06600B3585910A090093D391
            27437B3A0C740E813AAE478B7C5C900C395009036D6D0686C8EE75764E86F674
            09EC740915A79C6462E25721D0E4BEA18FBE9A352859D6724F2B96B8A6EA9D76
            6D2C11A8B470B9982AAF758CC5F31908F916C9AE265DA91E799AAB39336174BC
            9DCD8CC3662C33F8AB0CCE3261716192B68AEED6600AF5C52A875DAB00CAC01D
            32B00CAC0820106AC7B3BBB7BFB5B7BDB590496F750A4D0B8D8EA49143025480
            410080411B07608A6318CC9D7AA98C6314A6318C5298C6314A6318C5298C6314
            A6318C5298C6314A6318C5298C6314AFCE9794630915233124E91651F16C5D3F
            7AF1C1CA9A0D9AB341470E1C2CA1840A9A48A499D450E6100290A6111000EF9F
            3B5E7A72DACFCCBE46DD36A4A3D79F420D9F3BAEEAD81580E9235ED7D1AF1C04
            2905A1BF899499298F3D3EA185458F2D20BB705018B462837DCBF5057EF62F84
            3CAC7D1CE5566F51D09B53C83A6E7326BA263D2A69313A4A9440E9A80539BC2A
            104A7208F888629800C1F39BCD78F1DB2F751C788C344EC96D7026BDB8507426
            68D963855B476550FA46E93B52594E8B28AFD5EFD0CCE0785BDBAE7DE215EDBC
            57398C53E3F8F621E455636115DC725EE42788329E99AE425A4225521D238A54
            042CCE0B18C66B757EBD5339AF8EDBEAFBC66DC748DD1AE24566361A6CBB678A
            B42B851BB2B0C29D42126EAD30040382F0F3F1C2B47BC20A673A1E548F9A0A4F
            DA35708F0A633D369753D8DD5BDE5AC8F0DC5B4A93C32212AE8F1B0656523D60
            8FB558ACEE171BC8F0F93C1662CE0BFC5E5EC6E31F7F67711AC90DC5ADD42F0C
            D13A30D1564761ED1BF3DF7AD42F38F66D73746D2A56DBA8AAAAB5BD8FA4F585
            CA185C0148E92656089712246AF53218E545F333383B37C801CC283B41644C3E
            220E432CE31D1D607D3BA4354A0F965DC1ABD5F9EAFB655C18E730316FB06E92
            0D114CE7EE2641AA5240D1028089114902B72784889485E4ECA03C42BF7CAF32
            CFE4A550B2DF5FC975228F2579C2C8E07B831EDAF56BD95FC5C7C2178947C13C
            6EF14387C2ED2DBF1EE699DC5DACAE76F25ADADFCD1DBBBF73A66842161BEC76
            3D54C63190DAA6E9972FCE2F78A7117FD0B5AFF64EFF0029A32E5F9C5EF14E22
            FF00A16B4FEC9DFE5E1E18FD62F8BDFC5DC77FCC92A7DC53EB7F9A7DCDB3FC6D
            6A9A318C651F501A6318C52B42BD233FC42DFBF1BB2FFD4DA2E5ADE552748BFF
            0010B7EFC6ECBFF5368B96B79FAD7E08FEC59C37EE52FF007B2D6DEF07FAD3C1
            FF00024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C6318A5318
            C6294C6318A5318C6294C6318A547FE55EB391DCDC6DDE7AAA1D60425B606AAB
            E54E2973000912939CAC4A47479D4037A8C883D7087962F7288A5E300390440C
            5F9B03D64F235E3B8E906AE18BF60E5764F993B4546CED9BC6AA99072D5D3754
            A455070DD64CE8AC8AA42A89284310E5298A201F51E30018A2510EE0601010F8
            C043B087FDD98FCEB4DD34EC7AEAF769E5CE97AEB995D617378B4EEDC828940C
            E1CD0ADAF5631E52E00D1120AA6A9D99C1FD2330E8855420EC0BBF74ECE8C549
            352B0A3FC68E2F7795C7D9E6EC6379E4C48992EA18D4B39B4959584CAA364881
            D4FA40013D0E5CE9236D7E917E87778D181E11CB3907875C96EE0C6DAF397B1B
            9C1642EA4586DD73D64B24031D34AE422BE5209635B4672AA6E2D96DD7AA5B98
            96B3B78C63355FCBCEBF6D410C03290411B04104107C8823B107DA298C65C774
            9FE9AF6AE5AECD81DABB1A01F45F1C28B30DE5645F48B214DB6D29A877C9A88D
            2E141D1008FE045E3732772946E459B24CD1735F6EB252CF85CC5E630582C872
            1C9DAE331D0B4B34F22876504A4316C75CD330042471A9EA763DC68803640A80
            789DE24F18F0A3876639972BC84365618CB5964862678C5CE42F0A37C571F630
            B329B8BBBA97A638A35EDB62CE5635665F7561A96574C6AED0B539E4956D3B29
            A6ABD7E946CE1033670CD4D913B67BCB18F72D9500550771B113B1D1CF115801
            64DCB558A7290C1E0278996ADD55755DA2136F406CC4A25DAB48B053E1EBE498
            41013B08D9E82712291E21DA891448C4CE235660EA37CE852090ED209B3057D1
            CE412AA9CA1BC53C05DE0B9EF22C63DADC2476F78C2D99E27066B6645304CA74
            4324B190FD4A4EC923ED7F1A5E35E7F27CBFC56E79CB32903C57BC9B936573B3
            22AB145394BB92F02C474498944CAA9DB617434354C63195EFA09FFCCCBFEEDF
            F2555DE8DFEC1FF9A7F27BC7CF4CB97E717BC5388BFE85AD7FB277FF00FEB2A1
            6B359B05CA7A2EAF55887F3D609B769B18B898D41474F1E3958DF5A44D3200F8
            484280A8B2AA09516E89145D751345339CB7D7CE7D0D755F863AAEBB011EE2C1
            29A592A429626B18928EDC2D0F094C7B56959166D5148CE1C9593B74D5F2FE4D
            20F211647AF5429536C712DFFE13E132D79C0BC5D92DB1F752A3E02CA242B0C8
            4492C375F199638BE4FEA8E90C6D232AEC81AD8DB0DD8DC3ECAEE6E3BCCCC56F
            3386C7DB22908DA668E6333AA76F94CB1A962A3BEB5D8922B3EF8C6328036F38
            241865047620C6FB07D87E4D575E8E4FB07FE6B7E4F78F9E98C6302DE7274219
            493D8011BEC9F67D2D3D1BFD83FF0034FBBDDEF1F38AD0AF48CFF10D7EFC6F4B
            FE4FFA1946FF00F9F972D6F2BA7A64EB0B5EB7E3C385EDD16EE19E5E6E72D718
            F8C904146AFD08671130308C1576D1729166E77DE835A41B915294C762E9A2DD
            8015000B161001F50E7EB7F839677361E19F0FB6BC864B7B84C442CF0CAA5244
            1296953A958065251D4E88046F4456DFF0D865B7E2F848A6468E45B188B23021
            97AF6CBB520104AB03A206BD74C631966549A98C6314A6318C5298C6314A6318
            C5298C6314A6318C5298C6314A6318C5298C6314AE9DFD5DC7D5DBD63F0F6CAE
            2E41F51BD2DA8EDB33AD895E9BD91351265236CC48808C460235E18A64DE42B8
            919171FBF641B14DE4E41BB462E5A3658CA3172F137EDDDB46F632B8F645610F
            74125043FD41CC616C072BBDBE5D9E3A54EBB9776EB23972BA83DD45975E65EA
            AB2A71F84EA28731CC3F08888E6B9FC223C4FCFF0087388C1A71DF8BC57B9ABA
            BA47BBB9852E043059240CCB1C320319695AE14167560AA8405DB750AE7C44E5
            792E2F698F6C5324575773CBAB865EB6856DC44DFA9A9F921D9A45D31DE829D0
            D9D8F27931AA3813BCE59FDAF5DEA7DA1C7AB6492AE5CBD2D1A5EB12D4378F9C
            980E2E96A14991B231BE0376F0B3AA4D5663840CA18ECCEB1C550AFD3F0CE241
            D8112DA722761DC7C4E4FAF1B26EC03BFA841916FEAA22221DC440640BD843B7
            71EE22132F19A1F90F13F9364EE5EEAE8E3C4D212CE6DF1F6F688CC744931DB2
            471F513B24F4ECECF7F3353BE1FF00A223F0B1E15898B098AF12E7B9C7DBC622
            B68F338BC56667B7455E98D22BBC8DA5C5D7446A02C71B4CD1228D2A6BB57F1C
            78E3EF087574AC658F71D476EF202623542AE5837F235AA2EBB70E13382A828F
            AB318E26A7648A81C8503347D715625E904E94845B841414434DDC47E69E85DB
            8BC66A2A35557D53270D0E56F55A42F1F111F04E21E25B0F78EAA9E0CE11E42C
            4304415F4499A46AA9B14D55D8B670D59BC51B6653247F109CB869C9DD1CB365
            8E8AA3B0E05B8A898F84C283C5C59BA4847FEC2ED57590503FCA4D4317E1CB23
            C2FF001BF9762392E0B16B1E2E5C66472965637B02E3EDE19E58AEA78E02E6F2
            245B96922EB2F1FA4959037D32904835F726F85278D3E2DF26C5DCF891CC2F39
            4A35E450476976B1416368B7322472B5858DAA41676523020B35BC09D7D2A24E
            B000AD15F29795BA7F8E9111EC36134736998B324B9A369314C98C8BE7B1E81C
            1371212249170DA3984491731102ACF56F2CF16058B1CD1E8B37BE6D5C1F546B
            8D5F6A9B1FFF001F47FBBFE6BFBDFDC7D51F7AA3B95D7E51AA92CA9D44D9EBEA
            A366A438F704103AF32ECC927F1105CBA70B887FF51638FC395CD927F163C77E
            6763CEB3B89C5A626DAC30F76F8F816E315657D3B880AABCB2CD7914CDB79031
            554E84552ABA66059A07CBBC40CDDB67EFECACD6D22B7B298DBA092CE0B891FD
            19019D9E6473B2C0B00BA0ABA1A3EBB9BFAA35C6AFB54D8FFE028FF77FCD7F7B
            FDBF1FA9F546B8D5F6A9B1FF00C051FEEFF9AFEF7FB7E3F5532632B6FD3F7C41
            FF003B82F57FE9DC3FAB5FFB4F77E7DF719FD313927D9D87F56D8FBBFD47B855
            FA6A0EA47C6535A59C42FA997D488CD384589AD0D226B478A6C654FE148F38B4
            315A4835620AF8087729B37A8A026F2EEBCDDAA6B2E9DBBA6749C244508622A8
            AC429C825F09C8621CA0202530770314C5101010F50808087A8731299B09E39B
            A70F74169678ED63B874EB55EBF70E17507C4A2AB2D548951554E6F84EA1CC27
            30FC26111CDABF837F8A39FE76D9FC4E7E2C7B9C6C36D756F716765059752CEE
            F1CB14D0DBAA42DDD559196356FA60C5BE4EAD8F0D395E473E3256B905B726D1
            61962921812025656646474882A103A54A90A081B0C48D6BD95E6A7D6324E567
            AFF5F52DEBB707151774EAAF08BAEB283EE9D559562651438FC26398447E11CF
            1BDA6B537C9AD0FB7C1FF44603BFE51F47FAF392C4007D438EC1DC07E2F73F2E
            6CC1C2E2092CD8BC796624B1F89DB9249D1EE4C7B3E437ED3EAF3AB34D9DA124
            9B6B7249D92618C9249077F4BED02B8D3DA67537C9AD13E69407EAFCF2D8EA9D
            6514E917F1D40A6B17AD8E0A3776CEB108DDCA0A07B874574589154CE1F01886
            2887C79C81D83B88FC7EEFE4C00007A830B85C3AB065C5E3D4A905596CEDC152
            344104460823A46883BDD059DA0208B6B7047704431EC11AEE0F4FB857400028
            001400003DC000EC19D718CC900000000001A0076000F2007A80AF4D318C6734
            A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A631
            8C52BB4BFF0010B7F34A7E61B317776FB33B77E13CFF00E95779B445FF00885B
            F9A53F30D98BBBB7D99DBBF09E7FF4ABBCD2BF862FD43C27F8466BF031B54978
            CDF5360BFDADFF00E0DA57AC6318CD13AA129921F895EF99D1BF8C9AC7E904F2
            3C6487E257BE6746FE326B1FA413C94708FAF1E2DFC60C47E3D0565B03FAF788
            FBA565F8C47522FAA17BE99FFE02D47F36472BB72C4BAA17BE99FF00E02D47F3
            6472BB733FE2EFEC97CCFEEEDF7F7A6B21CCBEBA339F742E3F0CD318C6571519
            A66C0B8D3EF79D1DF8A5D77FD5187CC7EE6C0B8D3EF79D1DF8A5D77FD5187CDC
            AF81EFEBDF2FFB9B63F8C49575F833F5666FF835AFF7AF5CDD8C6337DAAFDA63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314AEDAC1DD15403DD14CFDBEFF847B7FB7318FB2239
            E44EC4BE45482076CFE32E76862F5BA8020745D349B7CDDC24601EC2064D44CC
            51F57C1F973677F18087ABFE3F1FAB2B73955C71E13D9ADBF455B8AE513AB6EB
            3A8A6E1DBB637686ABC95912404AD48F9C42CB26F9B3D3A7E4C1BAD28D62C8E1
            402148EDD2BE453F27AE7F08AF0E6F79E60B0D716193C5E3A6C25D5CBB0CB5CA
            D9DACD0DEA42ADABA60C892A3C11F4AB00AE19BE5750556AE3C47E353F20B0B2
            782EAD2D9EC259598DE4A2085D271186FD54860AEA635E90400413DF60039B3C
            65CCFD2B9D353ED9777FD25D23F66B1F4AE74D4FB65DDFF49748FD9ACD37FD22
            F907EE9782FF00C4F65F9FAC7CFF003D33FE00644FF95B8F7F5B41EEF77BFEF1
            F655336495E1D46BC95E50E906B1E81DCAE9DF625F9D32008895A450AB2920B8
            8000F623660CDCB850DEB002246111000EF9609F4AE74D4FB65DDFF49748FD9A
            C9D3C48D07C49A1AF256CD0D6088D856049008D7F6C35B632DD2F12D9DF753D1
            E29C60A2CA0C5E024632A09C6B278F1227935955904C842CCBC3FF0001B36FCB
            F033DC723E2525BD8E4AD2FE78F1F9A82FEEE48ACE78E768E1B7847533C8102E
            C90ABD5D449034735C7BC3EBEFA338F964CA619A3B6B986E644B5BE8EE666582
            4490AA45180496202EC9001277BEC2AA73AA5C73C67C9E074E103A6DE535E559
            D315443B9174507734C15314DEE789374D564CC4EFDCA004308014E511AE0CD6
            672934F71E368541A3BDFCE616023601639622E921606B537906E1F8A6559BB4
            9B74BA0D8C49014122A91AF4AEDA3A511455068672DDBAA95660F173A6A771ED
            C9777DBE0FE12E91FB321FF00FBD999F16FC0DCCDD73ACD65AD390F1782D7317
            4D908A1CAE621C75E4467D19124866036AB2F5847462193A490A76A3DBCBF81D
            ECF9EBEBD8725898A1BE94DCA25EDEA5ACEA64D17568DC770AE4F4B0276BA274
            762A99B19733F4AE74D4FB65DDFF0049748FD9AC7D2B9D353ED9777FD25D23F6
            6B2B4FD22F907EE9782FFC4F65F9FAC7CFF3C63FC00C89FF002B71EFEB683DDE
            EF7FDE3ECAA66CD88F1F635EC368BD3B112481DAC8466B1A2307CD95289546EE
            DA55A290708285100103A4B2674CE02002062887C195E1A2B8B1D3E0D7B8A714
            FD9517B5ACEC5C15FC4D667360D7660A772C4A2E4AE53AEC4B58952608D013F3
            95117684832279203AEDC4A5ED96CABAEDD93655C385D26AD5B2465555D65089
            A28A29104EA2AAA8A0948421085318E731808520098440004736AFE0E5E195EF
            074E419AC96630D7FF004463B7B58570F7C97D0431DBB3CB2BCF70A162576665
            0A80B74852588D8156CF86DC5EE302991BCB9BCB1B9F8D88A28C594EB711A2C4
            59D9A4994050C4B01D237A00927C857938C8E8EB973C6564E156ABEF3D622B22
            61229E46E306E530307BA5059BBD55138947EB4E0450DE130094DE1300943C7F
            A70F8C1F2E7ADBE7544FFEA73611B9971246646E4D8156525595B2B621958100
            820CFD8827441F5FDA35609CCE2012A7298F520E8A9BDB7041F5823D27623D95
            24FB87710F8BDDFCB81001F50E46CFA70F8C1F2E7ADBE7544FFEA73C969CB7E3
            34838499B7DE5AC4575CE09A455AE306D8863987B149E55C3E4520318DD8A428
            A802730814A02610012732E25232A2726C0B3310AAAB95B12CCC74005027D924
            9035AD935C8CCE218855CA63D9988000BCB72492740002424924E801522B19DA
            45649C249AE82A9AC8AA42A89AA91CAA26A10E50310E439044A6298A206298A2
            20251EE1DC04073BB924565750CA432B00CACA410C08D8208EC411DC11592041
            1B0760F7047911EDA6318CE694C6318A5318C6294C6318A5318C6294C6318A53
            18C6294C6318A5318C6294C6318A576D5112A4A983DD2A6710FBE05110FF0086
            6397775CE77606DCD8B6DB23E70FE525ADD3A7328E1532BE6CCDB482ED236390
            1376F0338B8F41B47B248A052A4D5B24400FADCD8CAFDFC8ADEBFF00E129DC3E
            3FAC3662EEEDF6676EFC279FFD2AEF34C7E1857571162B86DB4734A904F79959
            66895D95249208EC842EEA0E99A312CA137DD43B6B5BAA57C659645B4C244AEE
            B1C93DEBBA2B10ACD1A5B042C07625448FADF71B3AF335EB18C63343FD23FD9B
            FF0038FE5F70F9AA82EA6F69F9CD325A7072EB3D4AE506A85611EAED92B158DB
            D4E6DB26A9936F270D3FDD9AED1EA402245D241C19AC8A0450A209BE64D57209
            5448862C4BC90FC4AF7CCE8DFC64D63F482792EE0377736DCDB8A4D04F34522F
            20C4F4BA3BAB006F61561D8ECA9525483D88EC411E799E3D2C91E7B0EE923AB0
            C9D9E995883A371186EFDFCC13DBC8ECFBEA5C7557BA4F4C6FF85A7397CE3E87
            6A94989751B160AFEF324A4EBB91712929E4400A1E76E5BA11AC4E7318DD908E
            4813F27E35BC75819625D50BDF4CFF00F016A3F9B2395DB99FF192EEEAE7C4CE
            62F35C4B2B2666E614EB918948A02238A31B2748888AAA00D2803B0EC4E439AC
            D2CBCA734D248EE56FA58C75313D2919E94503D41540000F5014C6319597A47F
            B37FE71FCBEE1F3545BA9BDA7E735E647C8BF897ECA562DE398E928D76DDFC7B
            F64B28D9E327AD1522ED5DB5708988AA0E1BAC99154564CC53A6A14A72980C00
            397B3CF4DB56F90E11E95924E45662EB6E975FAD713B4315109064FE8CF6CEFA
            347C9109E06AEA61BB15962220911441A99A1C866CE1648D435972FCE2F78A71
            17FD0B5A7F64EFF2FAF0AF257D6DC0BC5F482EEE224FF07EC1BA5246550D25E9
            824651B014B412C91B11DCAB11BF55589C46E6E22E3BCD024D228FA1D6DAD31E
            C5EE3D13687A8B46ECAC47A8FAAA9A318C650DE924FB37FE737E5F70F9AABBEA
            6F69F9CD318C604920EE1DC11E44330D7DFF0070F9A9D4C3C98FCE6B483D2BAE
            B3F6AE393F8A9C7EBBF428F7E99AC4019C282AA8D20C216B936DD80287EEA190
            68EE6DF24D087398AD9A790688F81BB74124ECBFB7C3F17FCF2A8FA46080686B
            F88FCAE4B7F5368D96B99FADDE0CDC4F75E1870E9AE2579A5387850C921EA765
            899A3452C7B9E944551B3BD01DFB76DBFE192C93716C2492BB3B9B1881662492
            1768A367BF650079EFB5318C659F528A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C52BB4BFF10B7F34A7E61B317776FB33
            B77E13CFFE95779B445FF885BF9A53F30D98BCBB8085D2DE0202021689F01010
            EC20212CEC040407D6021F086695FC317EA1E13FC2335F818EFF00BD525E337D
            4D82FF006B7FF83695EAF8C63344EA84A6487E257BE6746FE326B1FA413C8F19
            223892023C99D1BD8047F849AC8FA83BFA81FA6223F7803B88FC401DFEF4A384
            7D78F16FE30623F1E82B2D81FD7BC47DD2B2FC623A915D50BDF4CFFF00016A3F
            9B2395DB9627D50804394AF44404006895210EE1EE876922F70F8C3B808770FF
            0028043DD01CAECCCFF8BBFB25F33FBBB7BFDE9AC8732FAE8CE7DD0B8FC334C6
            3195C54669972FCE2F78A7117FD0B5A7F64EFF0029A32E639C4530705388DDC0
            43C2CF5A147B947D461D4F21D807E21F50FA847BFA87E21CBC3C31FAC5F17BF8
            BB8EFF0098A54FB8A7D6FF0034FB9B67F8DAD533E318CA3EA034C6318A56853A
            45FF00887BFF00E3725BFA9B46CB5CCAA4E919DFDA1AFE3D87B0EDD97001EDEA
            110A6D1447B0FB9EAEE1DC3D5DBB87C6196B79FAD7E08FEC59C37EE52FF7B2D6
            DEF07FAD4C1FF024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C
            6318A5318C6294C6318A5318C6294C6318A57430018A628FB860101FBC21D872
            92791FD2E6D96BD8D62BB69BB5D4D9C45B655F4F3FAD5C17978D3C34A4A383BB
            91245C845C4CE11EC7B87CB2EE5B3770D581E3D3541990EE53453506ED543780
            873FFD9218DFEA808FFCB32FFC9CE6BEF1D81B4EDC8D6B61DAE8D4A83B04AC2D
            62169D37235A0346C5BD598A32328F221662FE41F49F9B03E70478E56419A8B8
            B46844D24C04FAF3F088C9787D61C73191F3AC4DE659A7BD90E220C74BF17BC8
            E58D14DCCA2E4B2AC70F4346B22B0903BB47FA9315EA5AF3C44BBE396D8DB55E
            41673DEFA59DFE251DB37A29D5D147A57594B28540AC81D5BA831643D07A76BC
            8FF528B925FCA4D41F39AD5FB0D8FA945C92FE526A0F9CD6AFD86C859F4C3EFF
            00F973DC5EAF73F84DBAFABFDF78FA61F7FF00CB9EE2F57B9FC26DD7D5FEFBCD
            33FA39E05FEE33977F5E5BFF00D2FCF67DDAA5BE3FC03F68F33EAFF1F8FF007B
            FBDFB7F7FDB534FEA51724BF949A83E735ABF61B26270FFA704DE9DD8B19B536
            C59EBB332D58F385AB15DAA1A49DC6A526E9B2ACC25A525251844ACB1D9375D6
            F338F463412076A24F4EF47CD4A8AB4D1F4C3EFF00F973DC5EAF73F84DBAFABF
            DF79393827CC9DC4C375D435C5EEED3F7BA65F6442BE74ED724EA76521A59D22
            A8C44846CBC81DCCA010CFCA8B276C967676476AE945C112386E929938F0E33D
            E05AF33E3E22E25C86DAF1F256B1E3EE721918EF6D2DEFDE545B49A6823F424A
            ACE558312E11B4C63602B3BC6B21C0466B1E1311928676B9856DA5B9B959E18A
            E199442EF1A95240935DC8600FCA2A6AC3B9B9C163F259FC35EA99628CAD6C08
            58A0805D39D23C34158219376E1EB141D386293A7514F235CBE7EA26F508F7E2
            ED1742D5C220545B2C85707D4A2E497F293507CE6B57EC3648CEA55CB4D9F43B
            C4469BD67637F4C689D6D9D8AD13D06B99A4F3F732AEDEA4C621AC81132BA8A6
            8C9AB04DEACE235745D3E51F91BA8AA68355137553FF004C3EFF00F972DC3FD2
            65D7F5DE667C61CEF82839DE622C8717CE5FE5E19963CB5E62EFD2C6D67BC48E
            30FD3149E93AA4403D1CAEA9107915890E4FA43EDE6790E0DF47AF12EB137F73
            7B1BAA5E4F6B70B6F0C932850C42B16EA65D74BB0440CEAC7449EA3353EA5172
            4BF949A83E735ABF61B1F528B925FCA4D41F39AD5FB0D90B3E987DFF00F2E7B8
            BD5EE7F09B75F57FBEF1F4C3EFFF00973DC5EAF73F84DBAFABFDF79577D1CF02
            FF00719CBBFAF2DFFE97E7B3EED457E3FC03F68F33EAFF001F8FF7BFBDFB7F7F
            DB561BAF3A4B6D175668E1D9B79A3C65492748AB2A5A7BC9C999E7AD933F8D56
            6CCB295F8462C54745282059055677E682A0B8060E8520415B66E42F18EA3BDF
            4BA7A88EB8D65083089754B956C819E056A4E059AB1F18AF991DC23E7CCFD18E
            1DC5BA6AA394CEA3276B1915D176441CA59C5D79CC5E47EB9B2C75899EDABBD8
            9366E9155E415CACB316A82956853FEEEC1DB19B7AF4A891CA227445DB03347E
            DC4C0B35748AE44CE5D5450ED6D6F748A8DD18A476ECED95A83B234494301D44
            9B4DC6359241339BC24F11C893A294C6F017B98047C25F73368BC071E13729C2
            F2BC0F1DE3B7D646EE0861CF5BE5E7F8D4D7B653ACB1C3E86E636015226F49B1
            1AC2F1C8CB26D8F4B2DA7C00F11CAD8E5F1F8CC6DC402548D32315E4A6592682
            40EB1F4CA8DF2429EBFA511B0621813D8AE7F1D749BE4726E16234B46A674D80
            E604575276D6D95553EFF58651B852562A461F8485595294407B2860F58F8FF5
            27B92DFCA0D47F392D9FB0B9A37EE1DBBF7F57F70CEB9246F82EF858CC585AE5
            90124845C93E94120E87523368790D9DE8F7EFDEB247C2BE2658B7A1BB1B3BE9
            174DD2BDF7A1B5275EAEE49D6F66B38FF527B92DFCA0D47F392D9FB0B9E533E9
            33C8C55D229BDB4EA668D0C70070E519BB63B5524BFCA324D8D4B6C55CE01FE0
            A6770814C3EA15481EBCD177AFB8FABEF0FC78C27C177C2C575636B96902B062
            8F9293A580236AC5514E8EB44060744F7F2D17C2CE26A41305DB0041D35D368E
            B5D8E94763AEFEBEE75E75C03C6AD035FE376AD8AD7306F56975D272EE5A7E79
            C200D169D9E90F240F24059956709B244883768C593422CB0B762C9B11770E9C
            82EE97E7EC077F847BFDDF7302201EB1CBF3158BB1C2E3ACB138CB78ED71F8FB
            68AD6D2DE3D958A18542228662598E87CA662599B64B127753FB5B582CADA1B4
            B68C456F6F1A450C6BB2123450AABB2493D8772764F727BF72C631990AF45318
            C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C629
            5DA5FF00885BF9A53F30D98BBBB7D99DBBF09E7FF4ABBCDA22FF00C42DFCD29F
            986CC5DDDBECCEDDF84F3FFA55DE695FC317EA1E13FC2335F818DAA4BC66FA9B
            05FED6FF00F06D2BD6318C6689D5094C90FC4AF7CCE8DFC64D63F482791E3243
            F12BDF33A37F19358FD209E4A3847D78F16FE30623F1E82B2D81FD7BC47DD2B2
            FC623A917D50BDF4CFFF00016A3F9B2395DB9625D50BDF4CFF00F016A3F9B239
            5DB99FF177F64BE67F776FBFBD3590E65F5D19CFBA171F86698C632B8A8CD336
            05C69F7BCE8EFC52EBBFEA8C3E63F73605C69F7BCE8EFC52EBBFEA8C3E6E57C0
            F7F5EF97FDCDB1FC624ABAFC19FAB337FC1AD7FBD7AE6EC6319BED57ED318C62
            94C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6
            318A5318C6294C6318A57697FE216F87F7253F30DF1662EEEDF6676EFC279FFD
            2AEF368C72788872FBA27218A23EE7BA0201F7BDDCCB2726F887B9F58ED5B891
            8502D568A7CBCFCACCD62CD5882939F8E71112AF9676D5ABF5631BBC3464AB00
            5FCC1E33922B65965DB28E9915CB059BBA5750BE16B80CC6570BC56FB1B8FBAB
            EB7C75DE492F5AD6179DA0F8D4769E85DD2357658D8C0E3AC80AADD2A4866506
            9EF1771F7B7963899ED6DA6B88EDA7B959CC485CC7E9D6011B385EE1498D8756
            B40E86F64030B719C8DED3DB73E4B7637CC8B37EACC7B4F6DCF92DD8DF322CDF
            AB3344FE80673F69F27FD06E7FE9D507F43EFBFD0EEBFDC4BEEFDEFBC571CE48
            7E257BE6746FE326B1FA413CE3EF69EDB9F25BB1BE6459BF5664E7E0771336E4
            FEF1A6EC0B452AC74EA3D064D3B1BB94B3C4BE81565A41A22B1E1A3A119C924D
            5DC90A92028AEF1EB744F1CD1A35709B874578AB36AE663E1EF14E497DCD78C4
            76F85C9318F378C9E466B39D638A086F21925965768C2A471A02CCEC4003CFD4
            0E738DE27273E7714B1585CB745FDACAEC6191552349E367776202AA2AF72C48
            D0EFBAFC4EA85EFA67FF0080B51FCD91CAEDCBACEA69C5CD9D6AD830FB935F55
            E5EE710EEB4C6BB648CAEB0712F37112112F1F28CE44629A156907718FD8BF49
            0328C1A382C7AD1ABAAFCC924ED038D4CFB4F6DCF92DD8DF322CDFAB333FE33F
            14E456BE24729924C3645A1BCC9CF796B3C7693C90CF6F704491C914888CAE3A
            5C2BF493D0E191B4CA457BF9BE27251727CB33595C949EEE49E17585DE392394
            F5ABA32AE981D80DA274C0A9D106B8E719C8DED3DB73E4B7637CC8B37EACC7B4
            F6DCF92DD8DF322CDFAB32AFFA019CFDA7C97F42B8F77FABF78F9EA29F43EFBF
            D0EEBFDC4BEEFDEFBC571CE6C0B8D221F4BCE8E0F84752EBBEDF92A30F997BD7
            DC5CDF9B26CB1D5A80D5B746AA3F749A0E25E76B931055F8940C3E259ECB4CC9
            B26EC9AA0DD105171481551EBAF2628306AEDD9D26EA6B075ED4D0A15129D486
            AB99CB7A855E02B4838397C075D1838A691892C6209D4F0195235038945453C2
            26EC27376EE3B97F049E3D9AC7DE72AC9DFE36F2CECA7B5B2B5827BA82481679
            D669649122F48ABE90C6BD25CAEFA0B286D123776783F8FBDB6933175716D341
            04B15BC5149346F1AC8EAEECE10B81D5D235D44761B02BDC718C66EF55E34C63
            18A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5
            318C6294C6318A5318C6294CCA1F46CEACFCC8E6ADABA95456F8B2D22659F192
            84E2C1AA0B054083AE9E3E49292DA0D4AA4BA8C0803349F91AAC380A2EFEB045
            258DDBBAE7CD5E6605BD8DD7D9E75ADFC543CFD35BD33A9C6D914E8A9EBDA900
            83A008D820F9576C6AAC9212012047A24796DC6F40FB476D1AE52E8DDEC8D793
            3BDF99145D11CED97A0BAD67BE05E6BAD657681A044D150ADEEA2AD18EAB1172
            3251A056D291F6CF3E42A0AB23914731F62B2D35E1D5671CE1EA8B5A7ED3EA51
            CA3AA7B217D1FD3A61E729E97192F5474676C102B52A1D7B4AF207D17B2EFA63
            B6B71CBE946C98D8AB112BF924C7C20D9359A87EE4B9F32A5C35E02CBF31FA1D
            F25F6C6AE60F15E41F0CF97F69DCF405618164E7E6A8AB694D3C7DAF54895DA7
            67BE93089AD43DE6053660A48B89DA231878C211C4E2871923D3FF0098EF39DD
            D7A7A61720EC6E88E7664871F9DD1B7189132A42A6CFD6DA0F9154B9D9939122
            15BA63748F8887BFA6D9A8790608DAD28D2F84CCCE52F42C7180A0C69DD9083D
            0BB209D104EBD5AF2F6577BC517539545D2A9461D2074B7C9208F5F71B1BF68F
            3DD5B1F283AB9752FE56F51EDC1D39BA4C54F5354DFF001FD7BBC5DF366ECB67
            54919C9392D6B2D1753D893407BAAD235384ABD7EF128DEA71112C2AD67B4CC3
            A124D393B560E1CC643CE6D3EF7D90DB2E18F2F58EDE87D0327CCA829ED3AD38
            85250886AA4216DF12BDC6215DCD2D6C72D2C2C28658E6F4955F35AD329BAED3
            E71B4BB29558C9CA91EC00211AFA93FB1E8D8DB339276DE7CF4DAE474971BF93
            F62997976B1549D4E586A1073D7A7C89CB64B1D2F66D38EA586912B7139575AC
            301310F3F5CB14D4B49ACF256BB14F1CB4CF61F63D9D587951CC4BB721786DCD
            26B1F62DDBC6B891944367C6C6444649CC3180B686BDB7D5EFC9D6409527F648
            2B0AB1A688B1D79BB44AC4C549555FA4EDD47FA5E4FED5111FBA8566D852A142
            EBD5AD0D823FEE6BAC84E806358FE485EB0574FB057677EB04F63EAF303CEAA5
            F6F7557F6467A3F973AC3837B217D0115C8CDC214B1A2545B5374F4BC4C986C0
            999380AC79CDAE3A59CD6E33CF64E19FA2B7A42450F33224559D79249521CD62
            FC8BE6BF5BBE0CF4C9DEDC85E6123A669BC848ADFBA6AA9A85D57EBDABADD5F5
            75D59D0926D702C9C5D464A5628CFCD2A8362345A45449DA29F88CDCA64C4C23
            14BAA4FF00EF4AF4E5FE6F891FDAD6C6CB52F6545FF54BDBFF001E5A57F4D496
            7C989089091D453B0EAD376FE51BDD727A4B423D1C7F2BA3ABE48D9DB2FDED76
            D7AF677E75C3725C87EBDBC94E24F0277FF04227495A55DB3C7A35B7903276C8
            ED430089F65B9B54A37603051374998A519471ABEDDB8A88C524AB22AC022A1C
            1531CB9547C29EAA5EC8BFA83CE6D8AEF1714E3F5D2574A0D74BB09098A569DA
            612286D2EEC6C617CD57B4CAC5A32BE72E6A736453D1A771E6E0D8875FC05728
            0A9AA7E883FF0054D704BF11509FA4E5B338DEC41FBFB71F535EC1DFF74D0FEA
            F73FF9AB7EE71E863062D28F95DCF65F5007B6C7BFD7BAF9529D329F4511E820
            8DA027BB81A3ED1AFB5F31A96DC98EA93D43B8E5D4FBA55708ED535AEA19B6FF
            00D49C1E5795D5F468F559976B6DADA7B36C340DE68D62D0C0EE108C8D51E413
            8690A304E168D65E4BCEE2D651254873D9375F0E706FDE9FDC1661BE78DF315E
            83D86E378EBEA2A8F6CD5A8FB5C70D7AC50B747D248045C980B6072A38846064
            DD07EE88948A10BF5AA9B2873ADEB96D43F6479D2A7615A574E269A2DF866BB8
            B03C30368B648C272F364A536ABB7AB8A6DD24A19B3E6323267153B3460ED05D
            4EDE3001B0DF65B164868AE9914B817B20DD198B4F2A75A37858E32C995E3E08
            9A46D19493708B71382CA3562D924C1DB84C8649BACF18A4A988776801FB0008
            B28501403DBA7B6BB0F203FB7CFEDD3A1435B80A34C14B76EC4F50077EAF2F31
            F7BCEBC6BFEFFEBF9BDB8E9C16DF5C0E8BD2765AE6D8E1CEB5D8FBDA56DACF50
            C29D4DD3613CBCA4F1A1222E73716ED9439EBEA40AA8358B4148D4963AC9A6A0
            AC0B10B539C18EAA5EC8DFA8E21B39C713DC681BC25A815A7A17B34D53F4F524
            D18A5EC96752B40D82DB2F126922BC2D3E745618F05C1A79B240E452172DFCA6
            B7BA5A4149D6FA5A70662261B2ACE451E1CE9474BB45D33A2E1B04A6B2859441
            1708AA52A88B84D0789157454294E92A074CE5031443332DEC32BD70DD44C3E0
            F49F153FF2BC8AFCB9CE9B718EB70587CAF95BD10A0F6FE5FB75F40AF44A7A23
            3D047492BE7B751ED3EDEDFDBED983D417AD97303536D8E3FF004D5E1AEAAA96
            D6EA3971A0EAD67BE271FB4633B56D7DB6ED7458AB24ED3AA104C25E36AEF25E
            3DB2AF2E563B4CF4BA9AF6935255B2AE9B4A94259C56E2F6DBEA89D793A495BB
            535DFA96EBDD39C80E38ECE9F240C9CDEBC8BA84548C3489D3F4ABFAAC35BE80
            C2AF19077F8F83692123051B72ACCC405B19474BA31932E4F1B27310BC19C3A7
            F1DA87D966723E33782E48BB15F2FF00C8761ABDED8845A00486C8A9A36FD62D
            D8B87606210F37AB5C1ABD5DF0AC88491A518C5B013AEFDB32716FFECABAED40
            AF74AE97AA5A5DC705BF606EFD4F1BAC63975133492D3D0126F2CB60938F6C05
            3AFE6F1F4B8DB0327EFC0126CDBD32D19ACE0ABC9B36EEB8DB1577EA20A9200E
            DAEDAF31F9F7F9AB9D2868D3D1A90EA09623B9EAEE4A9DF60BEAF75681F4D6DB
            A2EFCD4DADB76EB1982CFEBDDAF49ADDFE9B2C04F22A3CAFDA629ACBC699DB63
            18CA319045BBA2B7928E5C41CC73F49CB17442386EA90BC9594FBD02AAF6FA87
            482E1044DDD074DE69CEBAB45959A4F133A4B0D4AEBB4AF972A0AA521C007CDD
            C5127AB8E199FB785568AA0A904487288DC1677A9D807DA01F9C57998698AFB0
            91BFB4754C6319CD714C6318A5318C6294C6318A5318C6294C6318A5318C6294
            C6318A5318C6294C6318A53282FA6F743B4FA7C4F735A6C393C3B6C3985535EA
            E2D4DA60285ED79E59EDE9E79F796F6D7B97D167846EA29F9B0A35AF17A37C7E
            701E79E06B7E7DBD603DFDCEFF0097BE7CB4BA6B700F869CF2E4BF3420B985CA
            13718E235CDA5C4B51E4C2FF00AAE85F45B2560BFDD59CCB0173B4593D6B25E8
            B6B1AC5CF918804DC37F3CF1BB1326AA201D6E4064F93B3F2BA4EF5AF2DFCFED
            F56ABB6304ABFCA2AA3A49D2F56FE576EDE7D8F7FEDADDDF47DE95C9F4A2D1DB
            3F4B8EF30DFA4D93B516D966B09F5917581624AB542B3543410C37D1FEC40922
            F6AF79F0C88C9B20303DF35161D90F385A0E71C7D8E36B7E2CF53987EA03A9B9
            12785D7B5AD85B2AF558E31069A48ACEBACF64D12E1525EA317B452DA442A305
            5C7D7377215F036B93ACDE118475717F2EB1149E52157373843C63E087B1D2E7
            4EB4E276FC77C8CD6B76DE7A6B643FBE38B7EBEBAA2D6D6EF757192A1275E673
            5AD593280F20C23E9D12F1466B1559241D48AE670A820A364D3A83E9FF00D2CB
            A34F21B887A7F717293A9F4271FF007C5CDB5C95BF6A177BDF8E34F714F5A176
            25BAB75F494AE5EA29CDAA37D33538782B114B2CB18CE492E578D3C2C1CB5297
            E4EB683A07C91B1F2B406B5E475F2BD5E7E6457600C43B894E99BD1922324B76
            07B81F4BE7AF6FCF5A0CE45FB1F8E56DF3903BD772E92EB05BFF004052F907B3
            6E9B26EDAF21A1EFB19190A7BB4D3D96770CDCD44DF54081B2444624F53868B6
            D290114A122DA3545E3C78A81D53D90F499E911A03A5B51AEE1AF2EB35B9F6BE
            D8711A6D91BAACACE3631CCB31823393C656AAD031AF2551ABD65ABD7AF651DB
            25A727E5E5665D19CCBCE3D6EC211944E61BD93B6B1ADD5A7FA41680AE5A65A7
            75BC1E9C79ABA1EC09C8315DDCF55E15F697A6C4598CBB26DE837526FA0D249F
            A4F5BB033032CE0CA376DE6A704879D39EDEC78C9D39F8F5B039ABD35F96DCA0
            A3EC4E3D57D6D9B6FAFDB2EF068C8CFD22A80591B53EAF5B3595575A291EF2B9
            0C83BB1B985B0C558E26C31F1F211473321708914E3B066223D95D127ABB8D80
            7B0F5EBF2EBB6EB920B2206974243A51D0347A4A8009041D0F3EFF00F7ABBAE5
            2F4652F257AA4F1CFA958F23CD4B1D005D4850D301A842C416CF6ADB6D8ED203
            ED89ED9D06305E9D1B0798FD834CFA33CD3CE7FF0068797F3746547550E9FC5E
            A63C4C97E2E1B6DFB4A84ADE69574FA390A206C6143E83DEB879E8DFA1A1B951
            015F48F9C027E79E9F4FCD3C1E306AE7C5E12E5EB94BD422E7D477D8C4EC9DB3
            B54192BB9B5B6FED55A476C4BC7326F16C6D966AA5F75CD8A2EE6DE29A88368F
            5EC94EB8569D4E20CD16917F4549D8461D846C50338E6904F839D29BA2CEF7E2
            8E98DB7C91EA9507A37785DABB2123B0B543ADF7C6BAAAF4B966F649B8C6B1CA
            57AE712BD9E305C44318E920465D63B8383D05D33037551007529240404300C4
            96D6FF0090EF47DC0D7C846003331531B845013AB5AD107B01DB5AF307D9DEB7
            BFC28E36A1C2CE2468CE3239BE257E4347D0D9D2CF7E5E0494B4AC4566EDDB9F
            4A295E3CFD90909E505DF93F341B0C9813C1E2F3B309FC25AE3E8F9D1B5AF4B1
            B5F25AECCF92C97205BF247E80D54DBA1A993D6C854CB4895BFC909927E96D1D
            884B1964C6F028788A842832F45F94FDF62F7C9B4CF37B25BD51575B97DD2738
            ECEEC334B6B55F5551F53BB974A45936915AAC7D9F5DA3AD6023A3355A190993
            C0899D1244D1AAB149C082A2D0ED4BE40633F3E78E14DE8ADCE3E191FA5072AF
            6AEC4D9DB1A75435C346ABB1AB5799C4E5195B29D0D53A9DA996BB85ADC5CED4
            F74FA766EBE853ED75C78FC1CD6E4DF3478E88F1892245803AE81FA99007CAEE
            37A1D86BBF97AF7FDB458CB2FD390650588E9EC7A483DCEFB773BF203CBD55B1
            1EAC1D21746755AD735084BE59A6B55ED8D5EE259C6AFDC55989653AF60DB4F8
            3209EAE59AB6F1DC5A76CA9C9AB1D1EFFD1849B82938E956083C899B628B9996
            92D51D41F63016EBF6C9D7363EA05D48778732759EA655246A3A9E61A5D1A207
            856EAB5582B85B5DEB6D6C67552AACA047B1693D054E868E7CF63912B663648B
            5916AF109EDEC91B93E3C6DE955BA2323647CC2E1C8C92AFF1CAB204544AB2AC
            AF42F2536210C9104AA9DAB9D575ABBC52AA8095149D4A312AC26058882D9B1E
            89F0579E963D62B4DF1BB693D76C6BDCDEE216AA7A72CA13CCD06B6CDA5AAAB5
            B96BCD566E00405246AFB66B578D2718B9056F2EBC83950FD8CE943A1CBF475E
            8AEF7AD9D9006FCB63C8F979FB86EB98C4822255FA40EAE95D0D9D74ECA9F31E
            CF9FDBBAFA0F210D1B1F068D76219B3878965129C2C5C7C7B545AB08B8E6CD0A
            C593362C5B82283766C9B11241B3440A92292299114C08429402963A33746B27
            48B67C88685E469B903EDFAE75538150DA883557D0A7B5925B113F00143676C7
            F4EFA6FE8F84DE2F143FA37D13DBC2FF00CFBBB3A31F6647F643D34FF9DE55FF
            00E7B8C99B8BCFB0417235DD3C8FFF002037F93D75D44148D747E4C9BD8D7D89
            07CFED907D55487D547A1A71F7A99D86AFB7D2BDD9B8E5C9CA532611709BBE89
            0ECE702622E25E95F4236BCD50F275B756079585C573D567A1EDB56B0C40B806
            EBCA4946328D8E655E9AEFD8C2C9EC0DB34DD8FD46BA86EF5E72D7B5E9D142B5
            AEEC45B946A2EE29A2ED954E0A5EED76DA9B2AC51F55932B36A49CAF5390ACBE
            74448011B424AF65C358F80101F5860A293B23B9D6FB9D1D6B5B1E47CBD62825
            9140018F6F2EC090091BD123B79796FCBD5DEBF361E1E26BB1115010318C2160
            A0E398C3C2C345346F1F17131318D92651D191AC1A2693564C18334116ACDA36
            49341B374934514C8990A50FD2C633EEBAE98C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5299F36CE885D32B8B5D
            4AB953CFBADF27A26E92B19AAA6D9CE544B4DB8BCA8AA8BFB3EC6BFB09533E55
            A37702F923B78966082670202272A862888A83DBE92791378EFC16E24F132CF7
            FB9F1CB45D37535A36979B0EC19AAC84B03BB48B39090956C325E91937C90F91
            919590764F374D0FDD5DABDC44BE1297E193A9949D6977B07BEF7AF5797ABF3F
            5F6248515C0D8660BA23D441D9FBDB1BAA1EEAF7C22D13D3F7D8FBF2D74071D9
            859A375D96FBA66EA0DAD763736896F4E59392DA3529353D28E91455F3631231
            A7916FE4FC28881C4047C63DA917A6DEABF635562E14E9299E795C6062F962F5
            ADE476D47BCD8BCA18374DDCA1B36E8DAA00AC5EBE7C953DA0A9AFD1AA2A5086
            214AAA6A1577BDE4557823BF1DEBA1B507267575934AEF8A1C2ECCD596F3C2A9
            65A5587CF06225CF5D9E8CB3C219D798BA64E8463A7E1A2E510F26E53FDF2C92
            F1F8D3F110D5EFF50B3A487DA2FA6FFD5B5FED2FF7EFF7B3E4A1EA047490001A
            6074347FF28F57979F7FBFBAFB594042AC5C12FD44A91DFB0001DFDAF2F7D65F
            3D9365EF5458763F47CD8FABEC4C65349C96B794B5D0AD291E44B1CF35A9ECDA
            6646BD36552612465819A95B2B579E524D14DF8A5F5EEC80E3C61966FD677AF1
            F047E91EDF1C7FE356EAAF721B7572275CD8F4D45C56B7465E5EB757ACEC48E5
            EAF72B3596DA2C1080485AD5A4661AC341C6BF919D909E751645631BC3F9FC9B
            4BB3DCFD2D7801C85A5E9ED79B8F8C946BB537405352D7DA6E11DBEB64625AFE
            968348A6295720DDC158A2E402348D21225104DDBB747F0B140DE3F1818C6F0B
            44F4A0E9C1C68B3475D74BF0E748D4EE70CE1279076F7B57FA32B5403E40C432
            0FEBF62BCB9B2CC40C824621448FA1DEB2765113F65BB1CFE2147DB68A80C003
            E7B1A1AEDECF5EBEDD72248FA630C1C98CB1001001D9046FD7EAEFAAC815DF86
            3B2386DEC5776934DBF5F7F51D8DBFB927ABB7F49D4269A1D8D8AA55EB0DCB56
            D3E95093ED1511599493CAD52595B978B744424618F6B3C44B35672CC5F3443D
            57A7E6A7F63253DC39D132FCD7BA4046F291F566495DC2C5DEC8E5443386F602
            DA279360456328AF92A9B430D7490E704E1532B6314C5514FDF475C47795BF78
            F1A57949AD2574EF2075E416D2D6538FA224A5A9D6307A314F9F40C8212B0EE5
            6060ED939F28C245B20ED0F038297CAA45F194C5EE51803F50AFA487DA31A73F
            D5B5FED2E71E8C8604749D285D3027CB5DC7BFB76F9A8260558317059FAF6846
            8F651A3BF576FECF55660FD92921AD3911CD3E928D6BB2CA5834EEF3D5F43420
            E7619574C959BD6BB376C57138D96895E45A95EB4524EAF368BC62ABE6657481
            9644EE9A82A43A41C4DCB9E2C50FD8ED7565E0F6F6D24E65ED1C6AD9C52AD349
            6E06153BA4FD6E39959E36A3BCE22BD6456ACCBD1921074CB4D62D753B4C5B78
            DB4C63C95730AF649E4228F9396D70EF8E3B74E49ADC9C4ED55B0F8DB5ED9DB3
            F524354697A0A322184ACA3AD1F45A5AAC9D555E3814EC51E58AAC57D48364E5
            059D9256401B46A8F0CD976A82CA0CB6E4EF0AB8ADCCF88A9C2728748D337346
            51A424A56A0DEDADDF1CD5F7D32D9B34965A39C46BE8F7491645BB2669BC4456
            3375C59B451448CA3644C4F15ADF58DFCF7D0DA5D4571363EE45BDD8898B7C5E
            E3D1A4A609081D22408EA5D41250901802355D105FDBCCD2450C825F8AB35BDC
            AA90DD1232AC8118F9070ACA48DED7637DFB56407D92FDA2FF00CD6EA27C10E9
            99A29E423EB53668C6C4B9269CAC5A835D89BCA71B4743B9BB0B48E9C70585A3
            EBEA5276F9370DA1259542B1709351B474A2AB0B2357FF00589D13D60F88FB43
            881CF5E79EE6D05B9AE9AEF60566A1A76EFA42219409AA32FAD2796DC152AC5A
            DBC2E8FD2ECCEC9F48A36492AF08273AE4A4676240C2C101488E77AB0BD3DF86
            55EE4243F2C2338FF4C4F9195F8F8F8B86DB8E959D93B6473189D7C96AA8D451
            732732F1B08B2D7A825576EB1DA9D74E3C806053CEBBB81E50E46F1778FDCB9D
            7E86ACE49EABAC6DFD7CD2C51D6D6B57B5A2ED560DACB10D6458C74D363B176C
            9D20F9AB29793689AA9382776CFDD20703A6B1CA3ED3116EA24E989523448035
            AD6FDA411EFF00577EF5DCB304E80176141076013B6F3D79E8797AFCBCEB147E
            CB0B6B54F75EBEE90DBB69AE81C52B6B6BEDF7B3AB4EC4E554C6AEDD2278A967
            8B3AA64BB94562309144AB94A1DC8A95427840C5F0869EF5A75C2E959B876251
            353EB7E5F542D3B0F655B6BB43A356DAD276D347360B6DB255A41D7A19BBB93A
            0318E6CB49CABE6ACD25DFBC68CD23AC0A397282253A81CCBB23A5DF00F706BB
            D35A9B67718B5FDD75DF1EA1EC15FD2D559A52C6BC7EBC84B4AF0EE27A2E04E4
            9D4DD959C8295F840322EDCBA2B74A31A20D3CDD04813CF43D7BD1AFA616A8BE
            D3367EBBE1B6A8AA5FB5E5A606EB49B3C616CA1215DB55624DACCC04DB1F38B0
            AE879E45CA326AF5B8AC8AA979644BE512397B947EBA5C316057E56B60EFD400
            EDAFE5FBDDAB82E8C8AA4382A1B446B4492BADEFDC3D556698C633B2BA698C63
            14A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6
            318C5298C6314A08F60111F803BFFDD9547B37939C8FD9DC96B571DF8BEA5260
            4B408C70F2C56AB620778574EA3423939711505AC991A3369252CCA01068DA11
            EBF5A45372ED5768B130834B5A53FC03F6F77C06FF0080E52F70A0C0AF3DB974
            A381F12E594D8C9A626FF0BCDC9B4514FB077F5F84134DB87ABD5DBC3F076CA9
            3C4FBDC91BDE11C7AC7297B878791F226B5C85E63A5F8BDE7C52D6CAE2E8C10D
            C005A112C889D6E9A72A3A410A5B714E4D35C99F058FB7BA9EC932593315CCD6
            CE229CC315BCB37A34974593AD914315D3748D6F5D8FBDEA7E746D39BD25C937
            978ADC037DBFC7C643E50C46AE91819574E1DCAC4264938D49F9964DDC3CB43B
            B2C9A4CDFB341FA2AB6067E68605CC4F4DD63BE7A966DEA7426C2A1D0754CC54
            E7CEFF00D1920BF9847797F45CABC877A0A337B7B6AF912A4FE3DD223E345331
            C8982A97721C871917C989ED2129C7FE5AB0D5EBD18F718C8B512DA69D599C5B
            5981B079E28926A5A5662DD170FE40AE10926E2E9E28E5423A4241B1952B845D
            264859C51ACF5037FA3A84EF48EC1D7307AB9556C3F43B1761691AA3F6BE4EDF
            3A9CD03F3A9499678622D36493704F04838501AAA915114840A82552E4EF7925
            9F29E3DC62E794734E49690718BEBB96EF833D99BDB8B987903DA433644CCCD1
            491DADAF4DA5DC9B321B845247533EE21773E4A1CB637172E5B39938A3C4CF3B
            CDC7CC1E9E5953266047BAF4859196187504EFBEB32AA92365C9B1FE4DEF5BA6
            83E31B8D86FDB4021B50F1D56874D8A7E70F6BA8DCE6CEC909A062555549D3C8
            F8B204CC847957500EE5160895C8895454338C380FCA4BF6FD8AD935BDAC947A
            37CD712F1E9B8519478441DCC64B16410222F23C155132C84649C348A0ED56C5
            411F22B3148EDC8B1545978E9D50AE489DA71CB545CE659B34256C24B5EC4916
            0DDF19A47378B4D857D5946CC9B91DC928C8493B6772D5B249BA7A29B104D349
            771E028FA471936D6BE53A88EC1575A4E965F5F6E580924221C963E521D15679
            B40C3DB5F9D56132C235F22AB79186B3B440CA362A6B11E01D23A82A97BE472F
            E20E42C7C61C5E3D73EF1616C67C2F17BBC1CD73109AF6FB358DBDBA39196DC1
            05E4B4B83616F34C8BD092388F6BD5A3E9BCE43710733B5B65C894B0B77B0C4C
            D8F7913AEE2E3216B7130B9788302C6194DB46F200551D82920369B92DBF29F9
            99B53756F4D79A4E275428CB52D92CB1A8B0B0B4954241F4641D8A46BED0537C
            7994D9B8927E78E32EA82DE8D66919602828990A1927F837CAD9EE4D536E07B9
            C1C5C1DDA832CD98CD160C8ED1887CC655174B45BC41A483B7CF18392A8C2459
            3D68ABD764F28C88ED25C8578666CEB175727C9053937CC82F1B97A92161FA33
            D883366B3010CE8CC7DB02C42C8B5DF384958DF4A8BAF18106580B1E0224F383
            017DCE5BE05EC3A7EB9E27F25AED14DE4DA5FEA6DA4662CEFA55E24E1AC9BD18
            292FA06422CA46EDCCCD13BF2BA68AB679E7AECD28BBA7477EA3574D59308F70
            DE779F8F97D94B92CCE7CD84CDCFE7CA2658A1C2DE5B612495ECA2C0928585C5
            92206BB1D48AB1A686C1D363F0B9EBF19A81AE6F7226DA46E4925DADE749B196
            1C7BB1B75C71E927D25B81BB8EEA154003B120FE654B9AD603F355694353A888
            D0AF1B216D384B635ACA08D9A46222E4DB41C33C56E00AF9E2E741C3F8197916
            8E456609C6B945B11BA7E6CC9D36BDA28F88A5307B825010EDEE7AC3BFAB326C
            EACFACD8F16693130B6B1F6ED8ADD92B7B7B101153C471190AF21890E9AE8CDA
            D1458359505EB95B922B74255550BE70A09C9E709AE927A91D65706BB075E51E
            F2CC001ADB2A95FB0A040111F244998A6B21E487BFD70192071E4CC537D714C4
            1037D700E4BFC01E597D98B8E518EC965A0C9CF72D65CA2D7D14D1486DA3CD2C
            AD7762FE889F46D67711A2BC4C03A197E528EA3596F0FF002D3DEBE56DEEAF23
            BB92436F9588A48927A15C80733DB90A494304C80346C0105F6546C6FDEB18C6
            6CB55974C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C
            6294C6318A5318C6294C6318A5318C6294C6318A5741EC601F884043FE5951DB
            0F8D7C9CD3FC9BB96FFE3144542E2C763347E8CCD76CB208B2347389A3C73D9B
            2BB49DCA57D374D559B8D426A39E474C11EA475178E74C8504CCB3FB72C644F9
            670FC772F82C23BDB8BFB1B8C5DF4791C7643193ADB5EDA5D468F1F54523C532
            1578E47492392374753DD7601189CB61EDB2F1DBACF25CC125A5C2DD5ADCDA4A
            229E0995597A9199245219599595919483DC76AA8FD53C1FDB511A439329DE25
            EBCAEE2E42B3153CCD172A291312E50792D33E091936ED3C00EE665E61D79F83
            06CED8B149BB133770E8456293D3F566A1EA61A769107AEA8D21ABE3EAB5F348
            0C6B578E2224164FD2B2CFA69E8AAEDC451DC2C0A3E917270011EE44CC54C9EA
            297B5D0674F500FDD37FB7B64397C1AE3B6ED8A971995E4B87B9C563E7C6A5E6
            332CF6D75796F737AD91B8F8F4DE899A669AF1DA77D742F5150142A205C3AF0D
            C6C66D1AD6EF2B65259DB4968B35A5EB4334F14B39BA945C3FA32642F3B191B5
            D2A4E86805502AFE678B1B7B6872CB516D6DCB1947B051EA5AB6263ED8836508
            F215FDC9B43CE04946B1AFCA22772B479ADB3AA4CB170EDB99B9A1D9B641CAA4
            7C991B67F7BBB873673F2678FF00B7B4556EA75CAF55A521DBDF5A459232B28B
            28B8BB01DFBC914E39A20DC924E6560E525625416C9A8F0C641922B015B76590
            B3EC7AFB8FABEF0FC799193C28E2D35ADF433ADECD7390CEDB7219B2734D1C99
            34BFB57B568961BB30964800B54431E8FC97934416047A9B8B62DE2B84713492
            DC6422C9BDD3C8AD722E61689A3E898A12231E8557A347E4B368824115D9C61E
            346C8D55C88E4DEC7B5A5149D67645825242A0B337E474EE45B4E59E5EC82772
            D8A429D81A3D17C831729BAF0195780A19A82AD4A55D48835AE0FF0025EB3A3B
            935AD9AC5573CFB62DBB5EAD5B221626650B040D5EC3332728B26E14F269C591
            72290AAB76F26666E17453916CBA297EE25717A38CF25D783DC5AEED2C2D1A6C
            AC71E38F26303C7751ABB2F2C4963C9A48C606EA5092910680E8017A8C9F281E
            99787E2A5860859AE956DCE58A1595031FA32AEB78AC7D19D8E97222035D3A1D
            45FBEEBC2DBC23AD3FE240EA787A75189B65A6BEAF324AD88C345B57EF6EB069
            C6C93C5BE88BCC425116F352EC576AB39596EE2C5F1C8E005115083CF3C41A05
            FB5771E75E50B65A4D50B6D71A4B3376D9A3D4641268C549F94730CCCCF1B899
            BACAB4875D8B6505B9D440A64BC09AAA8144E692D8C9262B81F1FC266AD7398B
            B76B3BBB5C0271D58A131C76D2D8C73C73C6F3C491A992E51E3D098B82559810
            7B6B236B82C7595F457F6B19866871CB8B0A855627B65912543222A8EA955934
            AE48EC5BB1EDA6318C99D66698C6314A6318C5298C6314A6318C5298C6314A63
            18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
            298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C
            6314A6318C5298C6314A6318C5298C6314AFFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Width = 738.520162000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Desenvolvido por: Elvis Sousa Brand'#227'o')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baRight
          Left = 882.142302000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Left = 143.622140000000000000
          Top = 102.047310000000000000
          Width = 836.787942000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO SCOUT ATLETA')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 151.181200000000000000
          Width = 982.677800000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 128.504020000000000000
        Top = 249.448980000000000000
        Width = 980.410082000000000000
        DataSet = frxDBPartida
        DataSetName = 'DadosPartida'
        KeepFooter = True
        RowCount = 1
        object Memo3: TfrxMemoView
          Align = baWidth
          Width = 980.410082000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DADOS DA PARTIDA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 22.677180000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Local da Partida:')
          ParentFont = False
        end
        object PartidaLocal_Partida: TfrxMemoView
          Align = baWidth
          Left = 105.826840000000000000
          Top = 22.677180000000000000
          Width = 874.583242000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DadosPartida."Local_Partida"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Partida:')
          ParentFont = False
        end
        object PartidaData_Partida: TfrxMemoView
          Left = 105.826840000000000000
          Top = 45.354360000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelPartida
          DataSetName = 'RelPartida'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DadosPartida."Data_Partida"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 68.031540000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Advers'#225'rio da Partida:')
          ParentFont = False
        end
        object DadosPartidaAdversario_Partida: TfrxMemoView
          Left = 139.842610000000000000
          Top = 68.031540000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'Adversario_Partida'
          DataSet = frxDBPartida
          DataSetName = 'DadosPartida'
          Memo.UTF8W = (
            '[DadosPartida."Adversario_Partida"]')
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Top = 102.047310000000000000
          Width = 980.410082000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTAT'#205'STICA DE ATLETA(S) PARA ESTA PARTIDA')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 442.205010000000000000
        Width = 980.410082000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        RowCount = 0
        object RelAtletaNome_Atleta: TfrxMemoView
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'Nome_Atleta'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[RelAtleta."Nome_Atleta"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotal_Passes_Scout: TfrxMemoView
          Left = 158.740260000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'Total_Passes_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."Total_Passes_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotalPassesCertos_Scout: TfrxMemoView
          Left = 230.551330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesCertos_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."TotalPassesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotalPassesErrados_Scout: TfrxMemoView
          Left = 359.055350000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'TotalPassesErrados_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."TotalPassesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotalChutes_Scout1: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutes_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."TotalChutes_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotalChutesCertos_Scout: TfrxMemoView
          Left = 574.488560000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesCertos_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."TotalChutesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaTotalChutesErrados_Scout: TfrxMemoView
          Left = 702.992580000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'TotalChutesErrados_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."TotalChutesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletap100PassesCertos_Scout: TfrxMemoView
          Left = 291.023810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesCertos_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."p100PassesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletap100PassesErrados_Scout: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100PassesErrados_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."p100PassesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletap100ChutesCertos_Scout: TfrxMemoView
          Left = 634.961040000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesCertos_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."p100ChutesCertos_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletap100ChutesErrados_Scout: TfrxMemoView
          Left = 771.024120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'p100ChutesErrados_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."p100ChutesErrados_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaAssistencias_Scout: TfrxMemoView
          Left = 846.614720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'Assistencias_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."Assistencias_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletap100Assistencias_Scout: TfrxMemoView
          Left = 891.969080000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'p100Assistencias_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = clBtnFace
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."p100Assistencias_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object RelAtletaGols_Scout: TfrxMemoView
          Left = 944.882500000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'Gols_Scout'
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[RelAtleta."Gols_Scout"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 400.630180000000000000
        Width = 980.410082000000000000
        object Memo7: TfrxMemoView
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome do Atleta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 158.740260000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'T. de Passes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 230.551330000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'P. Certos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 359.055350000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'P. Errados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 498.897960000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'T. de Chutes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 574.488560000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'C. Certos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 702.992580000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'C. Errados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 291.023810000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '%P. Certos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 423.307360000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '%P. Errados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 634.961040000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '%C. Certos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 771.024120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '%C. Errados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 846.614720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Assist.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 891.969080000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '%Assist.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 944.882500000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataSet = frxDBRelAtleta
          DataSetName = 'RelAtleta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Gols')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBPartida: TfrxDBDataset
    UserName = 'DadosPartida'
    CloseDataSource = False
    DataSet = cdsPartida
    BCDToCurrency = False
    Left = 1144
    Top = 248
  end
  object SQLQRelCompAtleta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      'sum(scoult.tbscoutatleta.Total_Passes_Scout) AS TotalPasses,'
      
        'sum(scoult.tbscoutatleta.TotalPassesCertos_Scout) AS TotalPasses' +
        'Certos,'
      
        'sum(scoult.tbscoutatleta.TotalPassesErrados_Scout) AS TotalPasse' +
        'sErrados,'
      'sum(scoult.tbscoutatleta.Gols_Scout) AS Gols,'
      'sum(scoult.tbscoutatleta.Assistencias_Scout) AS Assistencias,'
      'sum(scoult.tbscoutatleta.TotalChutes_Scout) AS TotalChutes,'
      
        'sum(scoult.tbscoutatleta.TotalChutesCertos_Scout) AS TotalChutes' +
        'Certos,'
      
        'sum(scoult.tbscoutatleta.TotalChutesErrados_Scout) AS TotalChute' +
        'sErrados,'
      
        'round((sum(scoult.tbscoutatleta.TotalPassesCertos_Scout)/sum(sco' +
        'ult.tbscoutatleta.Total_Passes_Scout))*100) as p100PassesCertos,'
      
        'round((sum(scoult.tbscoutatleta.TotalPassesErrados_Scout)/sum(sc' +
        'oult.tbscoutatleta.Total_Passes_Scout))*100) as p100PassesErrado' +
        's,'
      
        'round((sum(scoult.tbscoutatleta.TotalChutesCertos_Scout)/sum(sco' +
        'ult.tbscoutatleta.TotalChutes_Scout))*100) as p100ChutesCertos,'
      
        'round((sum(scoult.tbscoutatleta.TotalChutesErrados_Scout)/sum(sc' +
        'oult.tbscoutatleta.TotalChutes_Scout))*100) as p100ChutesErrados' +
        ','
      'scoult.tbatleta.Nome_Atleta'
      'FROM scoult.tbscoutatleta, scoult.tbatleta'
      
        'WHERE scoult.tbatleta.Cod_Atleta = scoult.tbscoutatleta.Cod_Atle' +
        'ta_Scoult AND scoult.tbscoutatleta.Cod_Atleta_Scoult = 1;')
    SQLConnection = Conexao
    Left = 1224
    Top = 56
    object SQLQRelCompAtletaTotalPasses: TFMTBCDField
      FieldName = 'TotalPasses'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaTotalPassesCertos: TFMTBCDField
      FieldName = 'TotalPassesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaTotalPassesErrados: TFMTBCDField
      FieldName = 'TotalPassesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaGols: TFMTBCDField
      FieldName = 'Gols'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaAssistencias: TFMTBCDField
      FieldName = 'Assistencias'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaTotalChutes: TFMTBCDField
      FieldName = 'TotalChutes'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaTotalChutesCertos: TFMTBCDField
      FieldName = 'TotalChutesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaTotalChutesErrados: TFMTBCDField
      FieldName = 'TotalChutesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletap100PassesCertos: TFMTBCDField
      FieldName = 'p100PassesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletap100PassesErrados: TFMTBCDField
      FieldName = 'p100PassesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletap100ChutesCertos: TFMTBCDField
      FieldName = 'p100ChutesCertos'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletap100ChutesErrados: TFMTBCDField
      FieldName = 'p100ChutesErrados'
      Precision = 32
      Size = 0
    end
    object SQLQRelCompAtletaNome_Atleta: TWideStringField
      FieldName = 'Nome_Atleta'
      Size = 75
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'RelCompAtleta'
    CloseDataSource = False
    DataSet = SQLQRelCompAtleta
    BCDToCurrency = False
    Left = 1224
    Top = 248
  end
  object frxRepRelCompAtleta: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42509.626315463000000000
    ReportOptions.LastChange = 42509.626315463000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1224
    Top = 296
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'RelCompAtleta'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Picture1: TfrxPictureView
        Width = 143.622140000000000000
        Height = 132.283550000000000000
        Picture.Data = {
          0A544A504547496D616765054D0000FFD8FFE000104A46494600010101004800
          480000FFDB004300010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101FFDB00430101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          01010101010101010101010101FFC00011080101012303012200021101031101
          FFC4001F00010003000105010100000000000000000008090A07010304060B05
          02FFC4005E100000060201020104080F0A0A0709000001020304050600070809
          1112131415210A173138415157961618192236586171767781B2B5D5D6232427
          33567397B6B7F0323742657492A1A5B1C12639529194B4D4253A4346537295D1
          F1FFC4001E010100020203010101000000000000000000060705080103040209
          0AFFC40056110002010401020204040C100C0700000001020300040511061221
          0731134151610814229115323436527175A1B2B4D1F009172335375556627476
          81929495B1B3164445535463739396B5D3E11842466472D4D5FFDA000C030100
          02110311003F00DFC6318C5298C6314A6318C5298C6314A6318C5299D3B00F7F
          57BBDBBFE4F733AE440E65735B4DF09B5929B0369C92ABC8C89D6634CA34399B
          AD6ABA4C244218ECA21A2CB229A4D19115497979878A231D14DD44FCB2AA3C74
          C193CF35E5E5AE3EDA6BCBD9E3B6B5B74324D3CAC1238D079924FAC9D0006CB3
          10AA0920565F0380CCF28CC63F8FF1EC6DDE5F3595B98ED31F8EB289A6B9BAB8
          90E951117C82805E4918AC7146AD248E91A33097A63149DC4E72943E0F108140
          3F288867641D36F705CA023FCEA61FECF1660EB93BD63F99BC8694916D5FBDBD
          D17405567058CA86AB7EE61E5936463981BFA6AFC9F90B5C9481501049CAD1AE
          ABF10E4DE2513826C3D80B5DEAEE9DC6BC884C2FB6765AD2C513092515BDDA54
          9128987C46107C79533901318004C20A87710EE3DC43296C8F8E783B6B868B1F
          8BBCC8428C54DC34B1DA23807E9E24649A4656EE47A458D8FAC0DF6FD10E23FA
          1A7E24E5F1515F72AE67C7B8A5F4F0A4AB8982CEE73D716E5C6FD0DECF1DCE3E
          DA2993B0716D2DE47D5D416560A0BFD36CAA10FF00E01C87FF00ED301BFE0239
          FD67CFD78EBD5779B3C74948E346EDD9CD93526AB945ED1B6D3C79778A7ED3B8
          78DB359A92726B6418109E2169E869E66D515BC0670C9DA043B5535F3C04EA37
          A7F9DB4F70AD74A34DDAB5B62DDC5EB564ABC23A928922A7237F4C4148022D53
          B255D77660451956ED9B3968AAADDB4C46C5B872CD37330E27E2571FE5928B4B
          7696C723D24AD95E742B4DA00B7C5A452526E91B3D3B49080CDE8FA54B0A07C7
          2F820F8ABE06D9B6772B059F23E242458E4E478033CB158B4AFD108CB5A4D1A5
          CE3C4ADA55987A7B30EF1C46E84B2246D62381100F58E558F3E39CB6BE3FCFC2
          EB1D5ECA2FE8BE4A152B1CDD8A61B8C8B5858C76F1E328E651D1E55934D79674
          AC7BB70E557E53B666C41A79368F1590F2B1F595F5497979F28D1DF32A9FFA97
          FBFE40C8472FF844F00E1B9DBCE3F7C32F7B7F60C23BB38EB486582198AAB342
          D24F756FD5220203F42B2A9DA96EA056B46331E23F1DC25FCD8EB93793DC40C1
          6636B0472468E403E8CB49345B75047574860347641040D41E332F9F5497979F
          28D1DF32E9FF0077FCCBF77FBF60C7D525E5E7CA3477CCBA7FDDFF0032FDDFEF
          D8322FFF008B3F0DFF00D0393FF41B1FFF004BF3D1F76F17FA6E717FF3196FE8
          D6FF00FDBF7FF6FB0D6A0F199B6D79D5139195FB247BCBDBC82BED63CE912CC4
          42B01190920661E3ECE0D13230C8C791BBF29044E819FB77ED0E72F93511029F
          CA92E1B935CAD89D21A0A336ED798A5627B74083654166E8544583B7D638A5E6
          D93D95144E57048E670ED1DC82E8B7311676AA484711C341760F50B078B78E1C
          17966173D9CB3B9BCB3B6E3900BACA4390B758AE61B7656F472C6914B324AB23
          23468B1C8CE64D02AA597722C4F38C065EC6FEFE09A6861C62096ED2E62092C7
          130255D551E40E1882802B16EB1D240DAEE61E3330AF7A9672E1D3A59746F50B
          1E928713119B3A6D68CD9B80FB89A267F1EF5E1881EBEC2BBA594F8CE39E37D5
          25E5E7CA3477CCAA7FEA5CAFCFC2CBC360CCA2C793305240616167D2C010363A
          B221B47CC6C6C8F56FB08E9F1738BEC8F43953A3E62DA0D1F2EE37760EBED807
          5E607715A83C770EE01F1FB9F9332F9F5497979F28D1DF32A9FF00A97EEFF7EC
          19E531EA5DCB768E9172BDE2124D248E063B17D4CAD91AB9287BA9AC68F62C1E
          1483F08B776829F11C3395F858F86CCCAA6CB92A06600B3585910A090093D391
          27437B3A0C740E813AAE478B7C5C900C395009036D6D0686C8EE75764E86F674
          09EC740915A79C6462E25721D0E4BEA18FBE9A352859D6724F2B96B8A6EA9D76
          6D2C11A8B470B9982AAF758CC5F31908F916C9AE265DA91E799AAB39336174BC
          9DCD8CC3662C33F8AB0CCE3261716192B68AEED6600AF5C52A875DAB00CAC01D
          32B00CAC0820106AC7B3BBB7BFB5B7BDB590496F750A4D0B8D8EA49143025480
          410080411B07608A6318CC9D7AA98C6314A6318C5298C6314A6318C5298C6314
          A6318C5298C6314A6318C5298C6314AFCE9794630915233124E91651F16C5D3F
          7AF1C1CA9A0D9AB341470E1C2CA1840A9A48A499D450E6100290A6111000EF9F
          3B5E7A72DACFCCBE46DD36A4A3D79F420D9F3BAEEAD81580E9235ED7D1AF1C04
          2905A1BF899499298F3D3EA185458F2D20BB705018B462837DCBF5057EF62F84
          3CAC7D1CE5566F51D09B53C83A6E7326BA263D2A69313A4A9440E9A80539BC2A
          104A7208F888629800C1F39BCD78F1DB2F751C788C344EC96D7026BDB8507426
          68D963855B476550FA46E93B52594E8B28AFD5EFD0CCE0785BDBAE7DE215EDBC
          57398C53E3F8F621E455636115DC725EE42788329E99AE425A4225521D238A54
          042CCE0B18C66B757EBD5339AF8EDBEAFBC66DC748DD1AE24566361A6CBB678A
          B42B851BB2B0C29D42126EAD30040382F0F3F1C2B47BC20A673A1E548F9A0A4F
          DA35708F0A633D369753D8DD5BDE5AC8F0DC5B4A93C32212AE8F1B0656523D60
          8FB558ACEE171BC8F0F93C1662CE0BFC5E5EC6E31F7F67711AC90DC5ADD42F0C
          D13A30D1564761ED1BF3DF7AD42F38F66D73746D2A56DBA8AAAAB5BD8FA4F585
          CA185C0148E92656089712246AF53218E545F333383B37C801CC283B41644C3E
          220E432CE31D1D607D3BA4354A0F965DC1ABD5F9EAFB655C18E730316FB06E92
          0D114CE7EE2641AA5240D1028089114902B72784889485E4ECA03C42BF7CAF32
          CFE4A550B2DF5FC975228F2579C2C8E07B831EDAF56BD95FC5C7C2178947C13C
          6EF14387C2ED2DBF1EE699DC5DACAE76F25ADADFCD1DBBBF73A66842161BEC76
          3D54C63190DAA6E9972FCE2F78A7117FD0B5AFF64EFF0029A32E5F9C5EF14E22
          FF00A16B4FEC9DFE5E1E18FD62F8BDFC5DC77FCC92A7DC53EB7F9A7DCDB3FC6D
          6A9A318C651F501A6318C52B42BD233FC42DFBF1BB2FFD4DA2E5ADE552748BFF
          0010B7EFC6ECBFF5368B96B79FAD7E08FEC59C37EE52FF007B2D6DEF07FAD3C1
          FF00024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C6318A5318
          C6294C6318A5318C6294C6318A547FE55EB391DCDC6DDE7AAA1D60425B606AAB
          E54E2973000912939CAC4A47479D4037A8C883D7087962F7288A5E300390440C
          5F9B03D64F235E3B8E906AE18BF60E5764F993B4546CED9BC6AA99072D5D3754
          A455070DD64CE8AC8AA42A89284310E5298A201F51E30018A2510EE0601010F8
          C043B087FDD98FCEB4DD34EC7AEAF769E5CE97AEB995D617378B4EEDC828940C
          E1CD0ADAF5631E52E00D1120AA6A9D99C1FD2330E8855420EC0BBF74ECE8C549
          352B0A3FC68E2F7795C7D9E6EC6379E4C48992EA18D4B39B4959584CAA364881
          D4FA40013D0E5CE9236D7E917E87778D181E11CB3907875C96EE0C6DAF397B1B
          9C1642EA4586DD73D64B24031D34AE422BE5209635B4672AA6E2D96DD7AA5B98
          96B3B78C63355FCBCEBF6D410C03290411B04104107C8823B107DA298C65C774
          9FE9AF6AE5AECD81DABB1A01F45F1C28B30DE5645F48B214DB6D29A877C9A88D
          2E141D1008FE045E3732772946E459B24CD1735F6EB252CF85CC5E630582C872
          1C9DAE331D0B4B34F22876504A4316C75CD330042471A9EA763DC68803640A80
          789DE24F18F0A3876639972BC84365618CB5964862678C5CE42F0A37C571F630
          B329B8BBBA97A638A35EDB62CE5635665F7561A96574C6AED0B539E4956D3B29
          A6ABD7E946CE1033670CD4D913B67BCB18F72D9500550771B113B1D1CF115801
          64DCB558A7290C1E0278996ADD55755DA2136F406CC4A25DAB48B053E1EBE498
          41013B08D9E82712291E21DA891448C4CE235660EA37CE852090ED209B3057D1
          CE412AA9CA1BC53C05DE0B9EF22C63DADC2476F78C2D99E27066B6645304CA74
          4324B190FD4A4EC923ED7F1A5E35E7F27CBFC56E79CB32903C57BC9B936573B3
          22AB145394BB92F02C474498944CAA9DB617434354C63195EFA09FFCCCBFEEDF
          F2555DE8DFEC1FF9A7F27BC7CF4CB97E717BC5388BFE85AD7FB277FF00FEB2A1
          6B359B05CA7A2EAF55887F3D609B769B18B898D41474F1E3958DF5A44D3200F8
          484280A8B2AA09516E89145D751345339CB7D7CE7D0D755F863AAEBB011EE2C1
          29A592A429626B18928EDC2D0F094C7B56959166D5148CE1C9593B74D5F2FE4D
          20F211647AF5429536C712DFFE13E132D79C0BC5D92DB1F752A3E02CA242B0C8
          4492C375F199638BE4FEA8E90C6D232AEC81AD8DB0DD8DC3ECAEE6E3BCCCC56F
          3386C7DB22908DA668E6333AA76F94CB1A962A3BEB5D8922B3EF8C6328036F38
          241865047620C6FB07D87E4D575E8E4FB07FE6B7E4F78F9E98C6302DE7274219
          493D8011BEC9F67D2D3D1BFD83FF0034FBBDDEF1F38AD0AF48CFF10D7EFC6F4B
          FE4FFA1946FF00F9F972D6F2BA7A64EB0B5EB7E3C385EDD16EE19E5E6E72D718
          F8C904146AFD08671130308C1576D1729166E77DE835A41B915294C762E9A2DD
          8015000B161001F50E7EB7F839677361E19F0FB6BC864B7B84C442CF0CAA5244
          1296953A958065251D4E88046F4456DFF0D865B7E2F848A6468E45B188B23021
          97AF6CBB520104AB03A206BD74C631966549A98C6314A6318C5298C6314A6318
          C5298C6314A6318C5298C6314A6318C5298C6314AE9DFD5DC7D5DBD63F0F6CAE
          2E41F51BD2DA8EDB33AD895E9BD91351265236CC48808C460235E18A64DE42B8
          919171FBF641B14DE4E41BB462E5A3658CA3172F137EDDDB46F632B8F645610F
          74125043FD41CC616C072BBDBE5D9E3A54EBB9776EB23972BA83DD45975E65EA
          AB2A71F84EA28731CC3F08888E6B9FC223C4FCFF0087388C1A71DF8BC57B9ABA
          BA47BBB9852E043059240CCB1C320319695AE14167560AA8405DB750AE7C44E5
          792E2F698F6C5324575773CBAB865EB6856DC44DFA9A9F921D9A45D31DE829D0
          D9D8F27931AA3813BCE59FDAF5DEA7DA1C7AB6492AE5CBD2D1A5EB12D4378F9C
          980E2E96A14991B231BE0376F0B3AA4D5663840CA18ECCEB1C550AFD3F0CE241
          D8112DA722761DC7C4E4FAF1B26EC03BFA841916FEAA22221DC440640BD843B7
          71EE22132F19A1F90F13F9364EE5EEAE8E3C4D212CE6DF1F6F688CC744931DB2
          471F513B24F4ECECF7F3353BE1FF00A223F0B1E15898B098AF12E7B9C7DBC622
          B68F338BC56667B7455E98D22BBC8DA5C5D7446A02C71B4CD1228D2A6BB57F1C
          78E3EF087574AC658F71D476EF202623542AE5837F235AA2EBB70E13382A828F
          AB318E26A7648A81C8503347D715625E904E94845B841414434DDC47E69E85DB
          8BC66A2A35557D53270D0E56F55A42F1F111F04E21E25B0F78EAA9E0CE11E42C
          4304415F4499A46AA9B14D55D8B670D59BC51B6653247F109CB869C9DD1CB365
          8E8AA3B0E05B8A898F84C283C5C59BA4847FEC2ED57590503FCA4D4317E1CB23
          C2FF001BF9762392E0B16B1E2E5C66472965637B02E3EDE19E58AEA78E02E6F2
          245B96922EB2F1FA4959037D32904835F726F85278D3E2DF26C5DCF891CC2F39
          4A35E450476976B1416368B7322472B5858DAA41676523020B35BC09D7D2A24E
          B000AD15F29795BA7F8E9111EC36134736998B324B9A369314C98C8BE7B1E81C
          1371212249170DA3984491731102ACF56F2CF16058B1CD1E8B37BE6D5C1F546B
          8D5F6A9B1FFF001F47FBBFE6BFBDFDC7D51F7AA3B95D7E51AA92CA9D44D9EBEA
          A366A438F704103AF32ECC927F1105CBA70B887FF51638FC395CD927F163C77E
          6763CEB3B89C5A626DAC30F76F8F816E315657D3B880AABCB2CD7914CDB79031
          554E84552ABA66059A07CBBC40CDDB67EFECACD6D22B7B298DBA092CE0B891FD
          19019D9E6473B2C0B00BA0ABA1A3EBB9BFAA35C6AFB54D8FFE028FF77FCD7F7B
          FDBF1FA9F546B8D5F6A9B1FF00C051FEEFF9AFEF7FB7E3F5532632B6FD3F7C41
          FF003B82F57FE9DC3FAB5FFB4F77E7DF719FD313927D9D87F56D8FBBFD47B855
          FA6A0EA47C6535A59C42FA997D488CD384589AD0D226B478A6C654FE148F38B4
          315A4835620AF8087729B37A8A026F2EEBCDDAA6B2E9DBBA6749C244508622A8
          AC429C825F09C8621CA0202530770314C5101010F50808087A8731299B09E39B
          A70F74169678ED63B874EB55EBF70E17507C4A2AB2D548951554E6F84EA1CC27
          30FC26111CDABF837F8A39FE76D9FC4E7E2C7B9C6C36D756F716765059752CEE
          F1CB14D0DBAA42DDD559196356FA60C5BE4EAD8F0D395E473E3256B905B726D1
          61962921812025656646474882A103A54A90A081B0C48D6BD95E6A7D6324E567
          AFF5F52DEBB707151774EAAF08BAEB283EE9D559562651438FC26398447E11CF
          1BDA6B537C9AD0FB7C1FF44603BFE51F47FAF392C4007D438EC1DC07E2F73F2E
          6CC1C2E2092CD8BC796624B1F89DB9249D1EE4C7B3E437ED3EAF3AB34D9DA124
          9B6B7249D92618C9249077F4BED02B8D3DA67537C9AD13E69407EAFCF2D8EA9D
          6514E917F1D40A6B17AD8E0A3776CEB108DDCA0A07B874574589154CE1F01886
          2887C79C81D83B88FC7EEFE4C00007A830B85C3AB065C5E3D4A905596CEDC152
          344104460823A46883BDD059DA0208B6B7047704431EC11AEE0F4FB857400028
          001400003DC000EC19D718CC900000000001A0076000F2007A80AF4D318C6734
          A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A631
          8C52BB4BFF0010B7F34A7E61B317776FB33B77E13CFF00E95779B445FF00885B
          F9A53F30D98BBBB7D99DBBF09E7FF4ABBCD2BF862FD43C27F8466BF031B54978
          CDF5360BFDADFF00E0DA57AC6318CD13AA129921F895EF99D1BF8C9AC7E904F2
          3C6487E257BE6746FE326B1FA413C94708FAF1E2DFC60C47E3D0565B03FAF788
          FBA565F8C47522FAA17BE99FFE02D47F36472BB72C4BAA17BE99FF00E02D47F3
          6472BB733FE2EFEC97CCFEEEDF7F7A6B21CCBEBA339F742E3F0CD318C6571519
          A66C0B8D3EF79D1DF8A5D77FD5187CC7EE6C0B8D3EF79D1DF8A5D77FD5187CDC
          AF81EFEBDF2FFB9B63F8C49575F833F5666FF835AFF7AF5CDD8C6337DAAFDA63
          18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314AEDAC1DD15403DD14CFDBEFF847B7FB7318FB2239
          E44EC4BE45482076CFE32E76862F5BA8020745D349B7CDDC24601EC2064D44CC
          51F57C1F973677F18087ABFE3F1FAB2B73955C71E13D9ADBF455B8AE513AB6EB
          3A8A6E1DBB637686ABC95912404AD48F9C42CB26F9B3D3A7E4C1BAD28D62C8E1
          402148EDD2BE453F27AE7F08AF0E6F79E60B0D716193C5E3A6C25D5CBB0CB5CA
          D9DACD0DEA42ADABA60C892A3C11F4AB00AE19BE5750556AE3C47E353F20B0B2
          782EAD2D9EC259598DE4A2085D271186FD54860AEA635E90400413DF60039B3C
          65CCFD2B9D353ED9777FD25D23F66B1F4AE74D4FB65DDFF49748FD9ACD37FD22
          F907EE9782FF00C4F65F9FAC7CFF003D33FE00644FF95B8F7F5B41EEF77BFEF1
          F655336495E1D46BC95E50E906B1E81DCAE9DF625F9D32008895A450AB2920B8
          8000F623660CDCB850DEB002246111000EF9609F4AE74D4FB65DDFF49748FD9A
          C9D3C48D07C49A1AF256CD0D6088D856049008D7F6C35B632DD2F12D9DF753D1
          E29C60A2CA0C5E024632A09C6B278F1227935955904C842CCBC3FF0001B36FCB
          F033DC723E2525BD8E4AD2FE78F1F9A82FEEE48ACE78E768E1B7847533C8102E
          C90ABD5D449034735C7BC3EBEFA338F964CA619A3B6B986E644B5BE8EE666582
          4490AA45180496202EC9001277BEC2AA73AA5C73C67C9E074E103A6DE535E559
          D315443B9174507734C15314DEE789374D564CC4EFDCA004308014E511AE0CD6
          672934F71E368541A3BDFCE616023601639622E921606B537906E1F8A6559BB4
          9B74BA0D8C49014122A91AF4AEDA3A511455068672DDBAA95660F173A6A771ED
          C9777DBE0FE12E91FB321FF00FBD999F16FC0DCCDD73ACD65AD390F1782D7317
          4D908A1CAE621C75E4467D19124866036AB2F5847462193A490A76A3DBCBF81D
          ECF9EBEBD8725898A1BE94DCA25EDEA5ACEA64D17568DC770AE4F4B0276BA274
          762A99B19733F4AE74D4FB65DDFF0049748FD9AC7D2B9D353ED9777FD25D23F6
          6B2B4FD22F907EE9782FFC4F65F9FAC7CFF3C63FC00C89FF002B71EFEB683DDE
          EF7FDE3ECAA66CD88F1F635EC368BD3B112481DAC8466B1A2307CD95289546EE
          DA55A290708285100103A4B2674CE02002062887C195E1A2B8B1D3E0D7B8A714
          FD9517B5ACEC5C15FC4D667360D7660A772C4A2E4AE53AEC4B58952608D013F3
          95117684832279203AEDC4A5ED96CABAEDD93655C385D26AD5B2465555D65089
          A28A29104EA2AAA8A0948421085318E731808520098440004736AFE0E5E195EF
          074E419AC96630D7FF004463B7B58570F7C97D0431DBB3CB2BCF70A162576665
          0A80B74852588D8156CF86DC5EE302991BCB9BCB1B9F8D88A28C594EB711A2C4
          59D9A4994050C4B01D237A00927C857938C8E8EB973C6564E156ABEF3D622B22
          61229E46E306E530307BA5059BBD55138947EB4E0450DE130094DE1300943C7F
          A70F8C1F2E7ADBE7544FFEA73611B9971246646E4D8156525595B2B621958100
          820CFD8827441F5FDA35609CCE2012A7298F520E8A9BDB7041F5823D27623D95
          24FB87710F8BDDFCB81001F50E46CFA70F8C1F2E7ADBE7544FFEA73C969CB7E3
          34838499B7DE5AC4575CE09A455AE306D8863987B149E55C3E4520318DD8A428
          A802730814A02610012732E25232A2726C0B3310AAAB95B12CCC74005027D924
          9035AD935C8CCE218855CA63D9988000BCB72492740002424924E801522B19DA
          45649C249AE82A9AC8AA42A89AA91CAA26A10E50310E439044A6298A206298A2
          20251EE1DC04073BB924565750CA432B00CACA410C08D8208EC411DC11592041
          1B0760F7047911EDA6318CE694C6318A5318C6294C6318A5318C6294C6318A53
          18C6294C6318A5318C6294C6318A576D5112A4A983DD2A6710FBE05110FF0086
          6397775CE77606DCD8B6DB23E70FE525ADD3A7328E1532BE6CCDB482ED236390
          1376F0338B8F41B47B248A052A4D5B24400FADCD8CAFDFC8ADEBFF00E129DC3E
          3FAC3662EEEDF6676EFC279FFD2AEF34C7E1857571162B86DB4734A904F79959
          66895D95249208EC842EEA0E99A312CA137DD43B6B5BAA57C659645B4C244AEE
          B1C93DEBBA2B10ACD1A5B042C07625448FADF71B3AF335EB18C63343FD23FD9B
          FF0038FE5F70F9AA82EA6F69F9CD325A7072EB3D4AE506A85611EAED92B158DB
          D4E6DB26A9936F270D3FDD9AED1EA402245D241C19AC8A0450A209BE64D57209
          5448862C4BC90FC4AF7CCE8DFC64D63F482792EE0377736DCDB8A4D04F34522F
          20C4F4BA3BAB006F61561D8ECA9525483D88EC411E799E3D2C91E7B0EE923AB0
          C9D9E995883A371186EFDFCC13DBC8ECFBEA5C7557BA4F4C6FF85A7397CE3E87
          6A94989751B160AFEF324A4EBB91712929E4400A1E76E5BA11AC4E7318DD908E
          4813F27E35BC75819625D50BDF4CFF00F016A3F9B2395DB99FF192EEEAE7C4CE
          62F35C4B2B2666E614EB918948A02238A31B2748888AAA00D2803B0EC4E439AC
          D2CBCA734D248EE56FA58C75313D2919E94503D41540000F5014C6319597A47F
          B37FE71FCBEE1F3545BA9BDA7E735E647C8BF897ECA562DE398E928D76DDFC7B
          F64B28D9E327AD1522ED5DB5708988AA0E1BAC99154564CC53A6A14A72980C00
          397B3CF4DB56F90E11E95924E45662EB6E975FAD713B4315109064FE8CF6CEFA
          347C9109E06AEA61BB15962220911441A99A1C866CE1648D435972FCE2F78A71
          17FD0B5A7F64EFF2FAF0AF257D6DC0BC5F482EEE224FF07EC1BA5246550D25E9
          824651B014B412C91B11DCAB11BF55589C46E6E22E3BCD024D228FA1D6DAD31E
          C5EE3D13687A8B46ECAC47A8FAAA9A318C650DE924FB37FE737E5F70F9AABBEA
          6F69F9CD318C604920EE1DC11E44330D7DFF0070F9A9D4C3C98FCE6B483D2BAE
          B3F6AE393F8A9C7EBBF428F7E99AC4019C282AA8D20C216B936DD80287EEA190
          68EE6DF24D087398AD9A790688F81BB74124ECBFB7C3F17FCF2A8FA46080686B
          F88FCAE4B7F5368D96B99FADDE0CDC4F75E1870E9AE2579A5387850C921EA765
          899A3452C7B9E944551B3BD01DFB76DBFE192C93716C2492BB3B9B1881662492
          1768A367BF650079EFB5318C659F528A6318C5298C6314A6318C5298C6314A63
          18C5298C6314A6318C5298C6314A6318C52BB4BFF10B7F34A7E61B317776FB33
          B77E13CFFE95779B445FF885BF9A53F30D98BCBB8085D2DE0202021689F01010
          EC20212CEC040407D6021F086695FC317EA1E13FC2335F818EFF00BD525E337D
          4D82FF006B7FF83695EAF8C63344EA84A6487E257BE6746FE326B1FA413C8F19
          223892023C99D1BD8047F849AC8FA83BFA81FA6223F7803B88FC401DFEF4A384
          7D78F16FE30623F1E82B2D81FD7BC47DD2B2FC623A915D50BDF4CFFF00016A3F
          9B2395DB9627D50804394AF44404006895210EE1EE876922F70F8C3B808770FF
          0028043DD01CAECCCFF8BBFB25F33FBBB7BFDE9AC8732FAE8CE7DD0B8FC334C6
          3195C54669972FCE2F78A7117FD0B5A7F64EFF0029A32E639C4530705388DDC0
          43C2CF5A147B947D461D4F21D807E21F50FA847BFA87E21CBC3C31FAC5F17BF8
          BB8EFF0098A54FB8A7D6FF0034FB9B67F8DAD533E318CA3EA034C6318A56853A
          45FF00887BFF00E3725BFA9B46CB5CCAA4E919DFDA1AFE3D87B0EDD97001EDEA
          110A6D1447B0FB9EAEE1DC3D5DBB87C6196B79FAD7E08FEC59C37EE52FF7B2D6
          DEF07FAD4C1FF024FC26A6318CB56A574C6318A5318C6294C6318A5318C6294C
          6318A5318C6294C6318A5318C6294C6318A57430018A628FB860101FBC21D872
          92791FD2E6D96BD8D62BB69BB5D4D9C45B655F4F3FAD5C17978D3C34A4A383BB
          91245C845C4CE11EC7B87CB2EE5B3770D581E3D3541990EE53453506ED543780
          873FFD9218DFEA808FFCB32FFC9CE6BEF1D81B4EDC8D6B61DAE8D4A83B04AC2D
          62169D37235A0346C5BD598A32328F221662FE41F49F9B03E70478E56419A8B8
          B46844D24C04FAF3F088C9787D61C73191F3AC4DE659A7BD90E220C74BF17BC8
          E58D14DCCA2E4B2AC70F4346B22B0903BB47FA9315EA5AF3C44BBE396D8DB55E
          41673DEFA59DFE251DB37A29D5D147A57594B28540AC81D5BA831643D07A76BC
          8FF528B925FCA4D41F39AD5FB0D8FA945C92FE526A0F9CD6AFD86C859F4C3EFF
          00F973DC5EAF73F84DBAFABFDF78FA61F7FF00CB9EE2F57B9FC26DD7D5FEFBCD
          33FA39E05FEE33977F5E5BFF00D2FCF67DDAA5BE3FC03F68F33EAFF1F8FF007B
          FBDFB7F7FDB534FEA51724BF949A83E735ABF61B26270FFA704DE9DD8B19B536
          C59EBB332D58F385AB15DAA1A49DC6A526E9B2ACC25A525251844ACB1D9375D6
          F338F463412076A24F4EF47CD4A8AB4D1F4C3EFF00F973DC5EAF73F84DBAFABF
          DF79393827CC9DC4C375D435C5EEED3F7BA65F6442BE74ED724EA76521A59D22
          A8C44846CBC81DCCA010CFCA8B276C967676476AE945C112386E929938F0E33D
          E05AF33E3E22E25C86DAF1F256B1E3EE721918EF6D2DEFDE545B49A6823F424A
          ACE558312E11B4C63602B3BC6B21C0466B1E1311928676B9856DA5B9B959E18A
          E199442EF1A95240935DC8600FCA2A6AC3B9B9C163F259FC35EA99628CAD6C08
          58A0805D39D23C34158219376E1EB141D386293A7514F235CBE7EA26F508F7E2
          ED1742D5C220545B2C85707D4A2E497F293507CE6B57EC3648CEA55CB4D9F43B
          C4469BD67637F4C689D6D9D8AD13D06B99A4F3F732AEDEA4C621AC81132BA8A6
          8C9AB04DEACE235745D3E51F91BA8AA68355137553FF004C3EFF00F972DC3FD2
          65D7F5DE667C61CEF82839DE622C8717CE5FE5E19963CB5E62EFD2C6D67BC48E
          30FD3149E93AA4403D1CAEA9107915890E4FA43EDE6790E0DF47AF12EB137F73
          7B1BAA5E4F6B70B6F0C932850C42B16EA65D74BB0440CEAC7449EA3353EA5172
          4BF949A83E735ABF61B1F528B925FCA4D41F39AD5FB0D90B3E987DFF00F2E7B8
          BD5EE7F09B75F57FBEF1F4C3EFFF00973DC5EAF73F84DBAFABFDF79577D1CF02
          FF00719CBBFAF2DFFE97E7B3EED457E3FC03F68F33EAFF001F8FF7BFBDFB7F7F
          DB561BAF3A4B6D175668E1D9B79A3C65492748AB2A5A7BC9C999E7AD933F8D56
          6CCB295F8462C54745282059055677E682A0B8060E8520415B66E42F18EA3BDF
          4BA7A88EB8D65083089754B956C819E056A4E059AB1F18AF991DC23E7CCFD18E
          1DC5BA6AA394CEA3276B1915D176441CA59C5D79CC5E47EB9B2C75899EDABBD8
          9366E9155E415CACB316A82956853FEEEC1DB19B7AF4A891CA227445DB03347E
          DC4C0B35748AE44CE5D5450ED6D6F748A8DD18A476ECED95A83B234494301D44
          9B4DC6359241339BC24F11C893A294C6F017B98047C25F73368BC071E13729C2
          F2BC0F1DE3B7D646EE0861CF5BE5E7F8D4D7B653ACB1C3E86E636015226F49B1
          1AC2F1C8CB26D8F4B2DA7C00F11CAD8E5F1F8CC6DC402548D32315E4A6592682
          40EB1F4CA8DF2429EBFA511B0621813D8AE7F1D749BE4726E16234B46A674D80
          E604575276D6D95553EFF58651B852562A461F8485595294407B2860F58F8FF5
          27B92DFCA0D47F392D9FB0B9A37EE1DBBF7F57F70CEB9246F82EF858CC585AE5
          90124845C93E94120E87523368790D9DE8F7EFDEB247C2BE2658B7A1BB1B3BE9
          174DD2BDF7A1B5275EAEE49D6F66B38FF527B92DFCA0D47F392D9FB0B9E533E9
          33C8C55D229BDB4EA668D0C70070E519BB63B5524BFCA324D8D4B6C55CE01FE0
          A6770814C3EA15481EBCD177AFB8FABEF0FC78C27C177C2C575636B96902B062
          8F9293A580236AC5514E8EB44060744F7F2D17C2CE26A41305DB0041D35D368E
          B5D8E94763AEFEBEE75E75C03C6AD035FE376AD8AD7306F56975D272EE5A7E79
          C200D169D9E90F240F24059956709B244883768C593422CB0B762C9B11770E9C
          82EE97E7EC077F847BFDDF7302201EB1CBF3158BB1C2E3ACB138CB78ED71F8FB
          68AD6D2DE3D958A18542228662598E87CA662599B64B127753FB5B582CADA1B4
          B68C456F6F1A450C6BB2123450AABB2493D8772764F727BF72C631990AF45318
          C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C629
          5DA5FF00885BF9A53F30D98BBBB7D99DBBF09E7FF4ABBCDA22FF00C42DFCD29F
          986CC5DDDBECCEDDF84F3FFA55DE695FC317EA1E13FC2335F818DAA4BC66FA9B
          05FED6FF00F06D2BD6318C6689D5094C90FC4AF7CCE8DFC64D63F482791E3243
          F12BDF33A37F19358FD209E4A3847D78F16FE30623F1E82B2D81FD7BC47DD2B2
          FC623A917D50BDF4CFFF00016A3F9B2395DB9625D50BDF4CFF00F016A3F9B239
          5DB99FF177F64BE67F776FBFBD3590E65F5D19CFBA171F86698C632B8A8CD336
          05C69F7BCE8EFC52EBBFEA8C3E63F73605C69F7BCE8EFC52EBBFEA8C3E6E57C0
          F7F5EF97FDCDB1FC624ABAFC19FAB337FC1AD7FBD7AE6EC6319BED57ED318C62
          94C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6
          318A5318C6294C6318A57697FE216F87F7253F30DF1662EEEDF6676EFC279FFD
          2AEF368C72788872FBA27218A23EE7BA0201F7BDDCCB2726F887B9F58ED5B891
          8502D568A7CBCFCACCD62CD5882939F8E71112AF9676D5ABF5631BBC3464AB00
          5FCC1E33922B65965DB28E9915CB059BBA5750BE16B80CC6570BC56FB1B8FBAB
          EB7C75DE492F5AD6179DA0F8D4769E85DD2357658D8C0E3AC80AADD2A4866506
          9EF1771F7B7963899ED6DA6B88EDA7B959CC485CC7E9D6011B385EE1498D8756
          B40E86F64030B719C8DED3DB73E4B7637CC8B37EACC7B4F6DCF92DD8DF322CDF
          AB3344FE80673F69F27FD06E7FE9D507F43EFBFD0EEBFDC4BEEFDEFBC571CE48
          7E257BE6746FE326B1FA413CE3EF69EDB9F25BB1BE6459BF5664E7E0771336E4
          FEF1A6EC0B452AC74EA3D064D3B1BB94B3C4BE81565A41A22B1E1A3A119C924D
          5DC90A92028AEF1EB744F1CD1A35709B874578AB36AE663E1EF14E497DCD78C4
          76F85C9318F378C9E466B39D638A086F21925965768C2A471A02CCEC4003CFD4
          0E738DE27273E7714B1585CB745FDACAEC6191552349E367776202AA2AF72C48
          D0EFBAFC4EA85EFA67FF0080B51FCD91CAEDCBACEA69C5CD9D6AD830FB935F55
          E5EE710EEB4C6BB648CAEB0712F37112112F1F28CE44629A156907718FD8BF49
          0328C1A382C7AD1ABAAFCC924ED038D4CFB4F6DCF92DD8DF322CDFAB333FE33F
          14E456BE24729924C3645A1BCC9CF796B3C7693C90CF6F704491C914888CAE3A
          5C2BF493D0E191B4CA457BF9BE27251727CB33595C949EEE49E17585DE392394
          F5ABA32AE981D80DA274C0A9D106B8E719C8DED3DB73E4B7637CC8B37EACC7B4
          F6DCF92DD8DF322CDFAB32AFFA019CFDA7C97F42B8F77FABF78F9EA29F43EFBF
          D0EEBFDC4BEEFDEFBC571CE6C0B8D221F4BCE8E0F84752EBBEDF92A30F997BD7
          DC5CDF9B26CB1D5A80D5B746AA3F749A0E25E76B931055F8940C3E259ECB4CC9
          B26EC9AA0DD105171481551EBAF2628306AEDD9D26EA6B075ED4D0A15129D486
          AB99CB7A855E02B4838397C075D1838A691892C6209D4F0195235038945453C2
          26EC27376EE3B97F049E3D9AC7DE72AC9DFE36F2CECA7B5B2B5827BA82481679
          D669649122F48ABE90C6BD25CAEFA0B286D123776783F8FBDB6933175716D341
          04B15BC5149346F1AC8EAEECE10B81D5D235D44761B02BDC718C66EF55E34C63
          18A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5
          318C6294C6318A5318C6294CCA1F46CEACFCC8E6ADABA95456F8B2D22659F192
          84E2C1AA0B054083AE9E3E49292DA0D4AA4BA8C0803349F91AAC380A2EFEB045
          258DDBBAE7CD5E6605BD8DD7D9E75ADFC543CFD35BD33A9C6D914E8A9EBDA900
          83A008D820F9576C6AAC9212012047A24796DC6F40FB476D1AE52E8DDEC8D793
          3BDF99145D11CED97A0BAD67BE05E6BAD657681A044D150ADEEA2AD18EAB1172
          3251A056D291F6CF3E42A0AB23914731F62B2D35E1D5671CE1EA8B5A7ED3EA51
          CA3AA7B217D1FD3A61E729E97192F5474676C102B52A1D7B4AF207D17B2EFA63
          B6B71CBE946C98D8AB112BF924C7C20D9359A87EE4B9F32A5C35E02CBF31FA1D
          F25F6C6AE60F15E41F0CF97F69DCF405618164E7E6A8AB694D3C7DAF54895DA7
          67BE93089AD43DE6053660A48B89DA231878C211C4E2871923D3FF0098EF39DD
          D7A7A61720EC6E88E7664871F9DD1B7189132A42A6CFD6DA0F9154B9D9939122
          15BA63748F8887BFA6D9A8790608DAD28D2F84CCCE52F42C7180A0C69DD9083D
          0BB209D104EBD5AF2F6577BC517539545D2A9461D2074B7C9208F5F71B1BF68F
          3DD5B1F283AB9752FE56F51EDC1D39BA4C54F5354DFF001FD7BBC5DF366ECB67
          54919C9392D6B2D1753D893407BAAD235384ABD7EF128DEA71112C2AD67B4CC3
          A124D393B560E1CC643CE6D3EF7D90DB2E18F2F58EDE87D0327CCA829ED3AD38
          85250886AA4216DF12BDC6215DCD2D6C72D2C2C28658E6F4955F35AD329BAED3
          E71B4BB29558C9CA91EC00211AFA93FB1E8D8DB339276DE7CF4DAE474971BF93
          F62997976B1549D4E586A1073D7A7C89CB64B1D2F66D38EA586912B7139575AC
          301310F3F5CB14D4B49ACF256BB14F1CB4CF61F63D9D587951CC4BB721786DCD
          26B1F62DDBC6B891944367C6C6444649CC3180B686BDB7D5EFC9D6409527F648
          2B0AB1A688B1D79BB44AC4C549555FA4EDD47FA5E4FED5111FBA8566D852A142
          EBD5AD0D823FEE6BAC84E806358FE485EB0574FB057677EB04F63EAF303CEAA5
          F6F7557F6467A3F973AC3837B217D0115C8CDC214B1A2545B5374F4BC4C986C0
          999380AC79CDAE3A59CD6E33CF64E19FA2B7A42450F33224559D79249521CD62
          FC8BE6BF5BBE0CF4C9DEDC85E6123A669BC848ADFBA6AA9A85D57EBDABADD5F5
          75D59D0926D702C9C5D464A5628CFCD2A8362345A45449DA29F88CDCA64C4C23
          14BAA4FF00EF4AF4E5FE6F891FDAD6C6CB52F6545FF54BDBFF001E5A57F4D496
          7C989089091D453B0EAD376FE51BDD727A4B423D1C7F2BA3ABE48D9DB2FDED76
          D7AF677E75C3725C87EBDBC94E24F0277FF04227495A55DB3C7A35B7903276C8
          ED430089F65B9B54A37603051374998A519471ABEDDB8A88C524AB22AC022A1C
          1531CB9547C29EAA5EC8BFA83CE6D8AEF1714E3F5D2574A0D74BB09098A569DA
          612286D2EEC6C617CD57B4CAC5A32BE72E6A736453D1A771E6E0D8875FC05728
          0A9AA7E883FF0054D704BF11509FA4E5B338DEC41FBFB71F535EC1DFF74D0FEA
          F73FF9AB7EE71E863062D28F95DCF65F5007B6C7BFD7BAF9529D329F4511E820
          8DA027BB81A3ED1AFB5F31A96DC98EA93D43B8E5D4FBA55708ED535AEA19B6FF
          00D49C1E5795D5F468F559976B6DADA7B36C340DE68D62D0C0EE108C8D51E413
          8690A304E168D65E4BCEE2D651254873D9375F0E706FDE9FDC1661BE78DF315E
          83D86E378EBEA2A8F6CD5A8FB5C70D7AC50B747D248045C980B6072A38846064
          DD07EE88948A10BF5AA9B2873ADEB96D43F6479D2A7615A574E269A2DF866BB8
          B03C30368B648C272F364A536ABB7AB8A6DD24A19B3E6323267153B3460ED05D
          4EDE3001B0DF65B164868AE9914B817B20DD198B4F2A75A37858E32C995E3E08
          9A46D19493708B71382CA3562D924C1DB84C8649BACF18A4A988776801FB0008
          B28501403DBA7B6BB0F203FB7CFEDD3A1435B80A34C14B76EC4F50077EAF2F31
          F7BCEBC6BFEFFEBF9BDB8E9C16DF5C0E8BD2765AE6D8E1CEB5D8FBDA56DACF50
          C29D4DD3613CBCA4F1A1222E73716ED9439EBEA40AA8358B4148D4963AC9A6A0
          AC0B10B539C18EAA5EC8DFA8E21B39C713DC681BC25A815A7A17B34D53F4F524
          D18A5EC96752B40D82DB2F126922BC2D3E745618F05C1A79B240E452172DFCA6
          B7BA5A4149D6FA5A70662261B2ACE451E1CE9474BB45D33A2E1B04A6B2859441
          1708AA52A88B84D0789157454294E92A074CE5031443332DEC32BD70DD44C3E0
          F49F153FF2BC8AFCB9CE9B718EB70587CAF95BD10A0F6FE5FB75F40AF44A7A23
          3D047492BE7B751ED3EDEDFDBED983D417AD97303536D8E3FF004D5E1AEAAA96
          D6EA3971A0EAD67BE271FB4633B56D7DB6ED7458AB24ED3AA104C25E36AEF25E
          3DB2AF2E563B4CF4BA9AF6935255B2AE9B4A94259C56E2F6DBEA89D793A495BB
          535DFA96EBDD39C80E38ECE9F240C9CDEBC8BA84548C3489D3F4ABFAAC35BE80
          C2AF19077F8F83692123051B72ACCC405B19474BA31932E4F1B27310BC19C3A7
          F1DA87D966723E33782E48BB15F2FF00C8761ABDED8845A00486C8A9A36FD62D
          D8B87606210F37AB5C1ABD5DF0AC88491A518C5B013AEFDB32716FFECABAED40
          AF74AE97AA5A5DC705BF606EFD4F1BAC63975133492D3D0126F2CB60938F6C05
          3AFE6F1F4B8DB0327EFC0126CDBD32D19ACE0ABC9B36EEB8DB1577EA20A9200E
          DAEDAF31F9F7F9AB9D2868D3D1A90EA09623B9EAEE4A9DF60BEAF75681F4D6DB
          A2EFCD4DADB76EB1982CFEBDDAF49ADDFE9B2C04F22A3CAFDA629ACBC699DB63
          18CA319045BBA2B7928E5C41CC73F49CB17442386EA90BC9594FBD02AAF6FA87
          482E1044DDD074DE69CEBAB45959A4F133A4B0D4AEBB4AF972A0AA521C007CDD
          C5127AB8E199FB785568AA0A904487288DC1677A9D807DA01F9C57998698AFB0
          91BFB4754C6319CD714C6318A5318C6294C6318A5318C6294C6318A5318C6294
          C6318A5318C6294C6318A53282FA6F743B4FA7C4F735A6C393C3B6C3985535EA
          E2D4DA60285ED79E59EDE9E79F796F6D7B97D167846EA29F9B0A35AF17A37C7E
          701E79E06B7E7DBD603DFDCEFF0097BE7CB4BA6B700F869CF2E4BF3420B985CA
          13718E235CDA5C4B51E4C2FF00AAE85F45B2560BFDD59CCB0173B4593D6B25E8
          B6B1AC5CF918804DC37F3CF1BB1326AA201D6E4064F93B3F2BA4EF5AF2DFCFED
          F56ABB6304ABFCA2AA3A49D2F56FE576EDE7D8F7FEDADDDF47DE95C9F4A2D1DB
          3F4B8EF30DFA4D93B516D966B09F5917581624AB542B3543410C37D1FEC40922
          F6AF79F0C88C9B20303DF35161D90F385A0E71C7D8E36B7E2CF53987EA03A9B9
          12785D7B5AD85B2AF558E31069A48ACEBACF64D12E1525EA317B452DA442A305
          5C7D7377215F036B93ACDE118475717F2EB1149E52157373843C63E087B1D2E7
          4EB4E276FC77C8CD6B76DE7A6B643FBE38B7EBEBAA2D6D6EF757192A1275E673
          5AD593280F20C23E9D12F1466B1559241D48AE670A820A364D3A83E9FF00D2CB
          A34F21B887A7F717293A9F4271FF007C5CDB5C95BF6A177BDF8E34F714F5A176
          25BAB75F494AE5EA29CDAA37D33538782B114B2CB18CE492E578D3C2C1CB5297
          E4EB683A07C91B1F2B406B5E475F2BD5E7E6457600C43B894E99BD1922324B76
          07B81F4BE7AF6FCF5A0CE45FB1F8E56DF3903BD772E92EB05BFF004052F907B3
          6E9B26EDAF21A1EFB19190A7BB4D3D96770CDCD44DF54081B2444624F53868B6
          D290114A122DA3545E3C78A81D53D90F499E911A03A5B51AEE1AF2EB35B9F6BE
          D8711A6D91BAACACE3631CCB31823393C656AAD031AF2551ABD65ABD7AF651DB
          25A727E5E5665D19CCBCE3D6EC211944E61BD93B6B1ADD5A7FA41680AE5A65A7
          75BC1E9C79ABA1EC09C8315DDCF55E15F697A6C4598CBB26DE837526FA0D249F
          A4F5BB033032CE0CA376DE6A704879D39EDEC78C9D39F8F5B039ABD35F96DCA0
          A3EC4E3D57D6D9B6FAFDB2EF068C8CFD22A80591B53EAF5B3595575A291EF2B9
          0C83BB1B985B0C558E26C31F1F211473321708914E3B066223D95D127ABB8D80
          7B0F5EBF2EBB6EB920B2206974243A51D0347A4A8009041D0F3EFF00F7ABBAE5
          2F4652F257AA4F1CFA958F23CD4B1D005D4850D301A842C416CF6ADB6D8ED203
          ED89ED9D06305E9D1B0798FD834CFA33CD3CE7FF0068797F3746547550E9FC5E
          A63C4C97E2E1B6DFB4A84ADE69574FA390A206C6143E83DEB879E8DFA1A1B951
          015F48F9C027E79E9F4FCD3C1E306AE7C5E12E5EB94BD422E7D477D8C4EC9DB3
          B54192BB9B5B6FED55A476C4BC7326F16C6D966AA5F75CD8A2EE6DE29A88368F
          5EC94EB8569D4E20CD16917F4549D8461D846C50338E6904F839D29BA2CEF7E2
          8E98DB7C91EA9507A37785DABB2123B0B543ADF7C6BAAAF4B966F649B8C6B1CA
          57AE712BD9E305C44318E920465D63B8383D05D33037551007529240404300C4
          96D6FF0090EF47DC0D7C846003331531B845013AB5AD107B01DB5AF307D9DEB7
          BFC28E36A1C2CE2468CE3239BE257E4347D0D9D2CF7E5E0494B4AC4566EDDB9F
          4A295E3CFD90909E505DF93F341B0C9813C1E2F3B309FC25AE3E8F9D1B5AF4B1
          B5F25AECCF92C97205BF247E80D54DBA1A993D6C854CB4895BFC909927E96D1D
          884B1964C6F028788A842832F45F94FDF62F7C9B4CF37B25BD51575B97DD2738
          ECEEC334B6B55F5551F53BB974A45936915AAC7D9F5DA3AD6023A3355A190993
          C0899D1244D1AAB149C082A2D0ED4BE40633F3E78E14DE8ADCE3E191FA5072AF
          6AEC4D9DB1A75435C346ABB1AB5799C4E5195B29D0D53A9DA996BB85ADC5CED4
          F74FA766EBE853ED75C78FC1CD6E4DF3478E88F1892245803AE81FA99007CAEE
          37A1D86BBF97AF7FDB458CB2FD390650588E9EC7A483DCEFB773BF203CBD55B1
          1EAC1D21746755AD735084BE59A6B55ED8D5EE259C6AFDC55989653AF60DB4F8
          3209EAE59AB6F1DC5A76CA9C9AB1D1EFFD1849B82938E956083C899B628B9996
          92D51D41F63016EBF6C9D7363EA05D48778732759EA655246A3A9E61A5D1A207
          856EAB5582B85B5DEB6D6C67552AACA047B1693D054E868E7CF63912B663648B
          5916AF109EDEC91B93E3C6DE955BA2323647CC2E1C8C92AFF1CAB204544AB2AC
          AF42F2536210C9104AA9DAB9D575ABBC52AA8095149D4A312AC26058882D9B1E
          89F0579E963D62B4DF1BB693D76C6BDCDEE216AA7A72CA13CCD06B6CDA5AAAB5
          B96BCD566E00405246AFB66B578D2718B9056F2EBC83950FD8CE943A1CBF475E
          8AEF7AD9D9006FCB63C8F979FB86EB98C4822255FA40EAE95D0D9D74ECA9F31E
          CF9FDBBAFA0F210D1B1F068D76219B3878965129C2C5C7C7B545AB08B8E6CD0A
          C593362C5B82283766C9B11241B3440A92292299114C08429402963A33746B27
          48B67C88685E469B903EDFAE75538150DA883557D0A7B5925B113F00143676C7
          F4EFA6FE8F84DE2F143FA37D13DBC2FF00CFBBB3A31F6647F643D34FF9DE55FF
          00E7B8C99B8BCFB0417235DD3C8FFF002037F93D75D44148D747E4C9BD8D7D89
          07CFED907D55487D547A1A71F7A99D86AFB7D2BDD9B8E5C9CA532611709BBE89
          0ECE702622E25E95F4236BCD50F275B756079585C573D567A1EDB56B0C40B806
          EBCA4946328D8E655E9AEFD8C2C9EC0DB34DD8FD46BA86EF5E72D7B5E9D142B5
          AEEC45B946A2EE29A2ED954E0A5EED76DA9B2AC51F55932B36A49CAF5390ACBE
          74448011B424AF65C358F80101F5860A293B23B9D6FB9D1D6B5B1E47CBD62825
          9140018F6F2EC090091BD123B79796FCBD5DEBF361E1E26BB1115010318C2160
          A0E398C3C2C345346F1F17131318D92651D191AC1A2693564C18334116ACDA36
          49341B374934514C8990A50FD2C633EEBAE98C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314A6318C5298C6314A6318C5299F36CE885D32B8B5D
          4AB953CFBADF27A26E92B19AAA6D9CE544B4DB8BCA8AA8BFB3EC6BFB09533E55
          A37702F923B78966082670202272A862888A83DBE92791378EFC16E24F132CF7
          FB9F1CB45D37535A36979B0EC19AAC84B03BB48B39090956C325E91937C90F91
          919590764F374D0FDD5DABDC44BE1297E193A9949D6977B07BEF7AF5797ABF3F
          5F6248515C0D8660BA23D441D9FBDB1BAA1EEAF7C22D13D3F7D8FBF2D74071D9
          859A375D96FBA66EA0DAD763736896F4E59392DA3529353D28E91455F3631231
          A7916FE4FC28881C4047C63DA917A6DEABF635562E14E9299E795C6062F962F5
          ADE476D47BCD8BCA18374DDCA1B36E8DAA00AC5EBE7C953DA0A9AFD1AA2A5086
          214AAA6A1577BDE4557823BF1DEBA1B507267575934AEF8A1C2ECCD596F3C2A9
          65A5587CF06225CF5D9E8CB3C219D798BA64E8463A7E1A2E510F26E53FDF2C92
          F1F8D3F110D5EFF50B3A487DA2FA6FFD5B5FED2FF7EFF7B3E4A1EA047490001A
          6074347FF28F57979F7FBFBAFB594042AC5C12FD44A91DFB0001DFDAF2F7D65F
          3D9365EF5458763F47CD8FABEC4C65349C96B794B5D0AD291E44B1CF35A9ECDA
          6646BD36552612465819A95B2B579E524D14DF8A5F5EEC80E3C61966FD677AF1
          F047E91EDF1C7FE356EAAF721B7572275CD8F4D45C56B7465E5EB757ACEC48E5
          EAF72B3596DA2C1080485AD5A4661AC341C6BF919D909E751645631BC3F9FC9B
          4BB3DCFD2D7801C85A5E9ED79B8F8C946BB537405352D7DA6E11DBEB64625AFE
          968348A6295720DDC158A2E402348D21225104DDBB747F0B140DE3F1818C6F0B
          44F4A0E9C1C68B3475D74BF0E748D4EE70CE1279076F7B57FA32B5403E40C432
          0FEBF62BCB9B2CC40C824621448FA1DEB2765113F65BB1CFE2147DB68A80C003
          E7B1A1AEDECF5EBEDD72248FA630C1C98CB1001001D9046FD7EAEFAAC815DF86
          3B2386DEC5776934DBF5F7F51D8DBFB927ABB7F49D4269A1D8D8AA55EB0DCB56
          D3E95093ED1511599493CAD52595B978B744424618F6B3C44B35672CC5F3443D
          57A7E6A7F63253DC39D132FCD7BA4046F291F566495DC2C5DEC8E5443386F602
          DA279360456328AF92A9B430D7490E704E1532B6314C5514FDF475C47795BF78
          F1A57949AD2574EF2075E416D2D6538FA224A5A9D6307A314F9F40C8212B0EE5
          6060ED939F28C245B20ED0F038297CAA45F194C5EE51803F50AFA487DA31A73F
          D5B5FED2E71E8C8604749D285D3027CB5DC7BFB76F9A8260558317059FAF6846
          8F651A3BF576FECF55660FD92921AD3911CD3E928D6BB2CA5834EEF3D5F43420
          E7619574C959BD6BB376C57138D96895E45A95EB4524EAF368BC62ABE6657481
          9644EE9A82A43A41C4DCB9E2C50FD8ED7565E0F6F6D24E65ED1C6AD9C52AD349
          6E06153BA4FD6E39959E36A3BCE22BD6456ACCBD1921074CB4D62D753B4C5B78
          DB4C63C95730AF649E4228F9396D70EF8E3B74E49ADC9C4ED55B0F8DB5ED9DB3
          F524354697A0A322184ACA3AD1F45A5AAC9D555E3814EC51E58AAC57D48364E5
          059D9256401B46A8F0CD976A82CA0CB6E4EF0AB8ADCCF88A9C2728748D337346
          51A424A56A0DEDADDF1CD5F7D32D9B34965A39C46BE8F7491645BB2669BC4456
          3375C59B451448CA3644C4F15ADF58DFCF7D0DA5D4571363EE45BDD8898B7C5E
          E3D1A4A609081D22408EA5D41250901802355D105FDBCCD2450C825F8AB35BDC
          AA90DD1232AC8118F9070ACA48DED7637DFB56407D92FDA2FF00CD6EA27C10E9
          99A29E423EB53668C6C4B9269CAC5A835D89BCA71B4743B9BB0B48E9C70585A3
          EBEA5276F9370DA1259542B1709351B474A2AB0B2357FF00589D13D60F88FB43
          881CF5E79EE6D05B9AE9AEF60566A1A76EFA42219409AA32FAD2796DC152AC5A
          DBC2E8FD2ECCEC9F48A36492AF08273AE4A4676240C2C101488E77AB0BD3DF86
          55EE4243F2C2338FF4C4F9195F8F8F8B86DB8E959D93B6473189D7C96AA8D451
          732732F1B08B2D7A825576EB1DA9D74E3C806053CEBBB81E50E46F1778FDCB9D
          7E86ACE49EABAC6DFD7CD2C51D6D6B57B5A2ED560DACB10D6458C74D363B176C
          9D20F9AB29793689AA9382776CFDD20703A6B1CA3ED3116EA24E989523448035
          AD6FDA411EFF00577EF5DCB304E80176141076013B6F3D79E8797AFCBCEB147E
          CB0B6B54F75EBEE90DBB69AE81C52B6B6BEDF7B3AB4EC4E554C6AEDD2278A967
          8B3AA64BB94562309144AB94A1DC8A95427840C5F0869EF5A75C2E959B876251
          353EB7E5F542D3B0F655B6BB43A356DAD276D347360B6DB255A41D7A19BBB93A
          0318E6CB49CABE6ACD25DFBC68CD23AC0A397282253A81CCBB23A5DF00F706BB
          D35A9B67718B5FDD75DF1EA1EC15FD2D559A52C6BC7EBC84B4AF0EE27A2E04E4
          9D4DD959C8295F840322EDCBA2B74A31A20D3CDD04813CF43D7BD1AFA616A8BE
          D3367EBBE1B6A8AA5FB5E5A606EB49B3C616CA1215DB55624DACCC04DB1F38B0
          AE879E45CA326AF5B8AC8AA979644BE512397B947EBA5C316057E56B60EFD400
          EDAFE5FBDDAB82E8C8AA4382A1B446B4492BADEFDC3D556698C633B2BA698C63
          14A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6
          318C5298C6314A08F60111F803BFFDD9547B37939C8FD9DC96B571DF8BEA5260
          4B408C70F2C56AB620778574EA3423939711505AC991A3369252CCA01068DA11
          EBF5A45372ED5768B130834B5A53FC03F6F77C06FF0080E52F70A0C0AF3DB974
          A381F12E594D8C9A626FF0BCDC9B4514FB077F5F84134DB87ABD5DBC3F076CA9
          3C4FBDC91BDE11C7AC7297B878791F226B5C85E63A5F8BDE7C52D6CAE2E8C10D
          C005A112C889D6E9A72A3A410A5B714E4D35C99F058FB7BA9EC932593315CCD6
          CE229CC315BCB37A34974593AD914315D3748D6F5D8FBDEA7E746D39BD25C937
          978ADC037DBFC7C643E50C46AE91819574E1DCAC4264938D49F9964DDC3CB43B
          B2C9A4CDFB341FA2AB6067E68605CC4F4DD63BE7A966DEA7426C2A1D0754CC54
          E7CEFF00D1920BF9847797F45CABC877A0A337B7B6AF912A4FE3DD223E345331
          C8982A97721C871917C989ED2129C7FE5AB0D5EBD18F718C8B512DA69D599C5B
          5981B079E28926A5A5662DD170FE40AE10926E2E9E28E5423A4241B1952B845D
          264859C51ACF5037FA3A84EF48EC1D7307AB9556C3F43B1761691AA3F6BE4EDF
          3A9CD03F3A9499678622D36493704F04838501AAA915114840A82552E4EF7925
          9F29E3DC62E794734E49690718BEBB96EF833D99BDB8B987903DA433644CCCD1
          491DADAF4DA5DC9B321B845247533EE21773E4A1CB637172E5B39938A3C4CF3B
          CDC7CC1E9E5953266047BAF4859196187504EFBEB32AA92365C9B1FE4DEF5BA6
          83E31B8D86FDB4021B50F1D56874D8A7E70F6BA8DCE6CEC909A062555549D3C8
          F8B204CC847957500EE5160895C8895454338C380FCA4BF6FD8AD935BDAC947A
          37CD712F1E9B8519478441DCC64B16410222F23C155132C84649C348A0ED56C5
          411F22B3148EDC8B1545978E9D50AE489DA71CB545CE659B34256C24B5EC4916
          0DDF19A47378B4D857D5946CC9B91DC928C8493B6772D5B249BA7A29B104D349
          771E028FA471936D6BE53A88EC1575A4E965F5F6E580924221C963E521D15679
          B40C3DB5F9D56132C235F22AB79186B3B440CA362A6B11E01D23A82A97BE472F
          E20E42C7C61C5E3D73EF1616C67C2F17BBC1CD73109AF6FB358DBDBA39196DC1
          05E4B4B83616F34C8BD092388F6BD5A3E9BCE43710733B5B65C894B0B77B0C4C
          D8F7913AEE2E3216B7130B9788302C6194DB46F200551D82920369B92DBF29F9
          99B53756F4D79A4E275428CB52D92CB1A8B0B0B4954241F4641D8A46BED0537C
          7994D9B8927E78E32EA82DE8D66919602828990A1927F837CAD9EE4D536E07B9
          C1C5C1DDA832CD98CD160C8ED1887CC655174B45BC41A483B7CF18392A8C2459
          3D68ABD764F28C88ED25C8578666CEB175727C9053937CC82F1B97A92161FA33
          D883366B3010CE8CC7DB02C42C8B5DF384958DF4A8BAF18106580B1E0224F383
          017DCE5BE05EC3A7EB9E27F25AED14DE4DA5FEA6DA4662CEFA55E24E1AC9BD18
          292FA06422CA46EDCCCD13BF2BA68AB679E7AECD28BBA7477EA3574D59308F70
          DE779F8F97D94B92CCE7CD84CDCFE7CA2658A1C2DE5B612495ECA2C0928585C5
          92206BB1D48AB1A686C1D363F0B9EBF19A81AE6F7226DA46E4925DADE749B196
          1C7BB1B75C71E927D25B81BB8EEA154003B120FE654B9AD603F355694353A888
          D0AF1B216D384B635ACA08D9A46222E4DB41C33C56E00AF9E2E741C3F8197916
          8E456609C6B945B11BA7E6CC9D36BDA28F88A5307B825010EDEE7AC3BFAB326C
          EACFACD8F16693130B6B1F6ED8ADD92B7B7B101153C471190AF21890E9AE8CDA
          D1458359505EB95B922B74255550BE70A09C9E709AE927A91D65706BB075E51E
          F2CC001ADB2A95FB0A040111F244998A6B21E487BFD70192071E4CC537D714C4
          1037D700E4BFC01E597D98B8E518EC965A0C9CF72D65CA2D7D14D1486DA3CD2C
          AD7762FE889F46D67711A2BC4C03A197E528EA3596F0FF002D3DEBE56DEEAF23
          BB92436F9588A48927A15C80733DB90A494304C80346C0105F6546C6FDEB18C6
          6CB55974C6318A5318C6294C6318A5318C6294C6318A5318C6294C6318A5318C
          6294C6318A5318C6294C6318A5318C6294C6318A5741EC601F884043FE5951DB
          0F8D7C9CD3FC9BB96FFE3144542E2C763347E8CCD76CB208B2347389A3C73D9B
          2BB49DCA57D374D559B8D426A39E474C11EA475178E74C8504CCB3FB72C644F9
          670FC772F82C23BDB8BFB1B8C5DF4791C7643193ADB5EDA5D468F1F54523C532
          1578E47492392374753DD7601189CB61EDB2F1DBACF25CC125A5C2DD5ADCDA4A
          229E0995597A9199245219599595919483DC76AA8FD53C1FDB511A439329DE25
          EBCAEE2E42B3153CCD172A291312E50792D33E091936ED3C00EE665E61D79F83
          06CED8B149BB133770E8456293D3F566A1EA61A769107AEA8D21ABE3EAB5F348
          0C6B578E2224164FD2B2CFA69E8AAEDC451DC2C0A3E917270011EE44CC54C9EA
          297B5D0674F500FDD37FB7B64397C1AE3B6ED8A971995E4B87B9C563E7C6A5E6
          332CF6D75796F737AD91B8F8F4DE899A669AF1DA77D742F5150142A205C3AF0D
          C6C66D1AD6EF2B65259DB4968B35A5EB4334F14B39BA945C3FA32642F3B191B5
          D2A4E86805502AFE678B1B7B6872CB516D6DCB1947B051EA5AB6263ED8836508
          F215FDC9B43CE04946B1AFCA22772B479ADB3AA4CB170EDB99B9A1D9B641CAA4
          7C991B67F7BBB873673F2678FF00B7B4556EA75CAF55A521DBDF5A459232B28B
          28B8BB01DFBC914E39A20DC924E6560E525625416C9A8F0C641922B015B76590
          B3EC7AFB8FABEF0FC799193C28E2D35ADF433ADECD7390CEDB7219B2734D1C99
          34BFB57B568961BB30964800B54431E8FC97934416047A9B8B62DE2B84713492
          DC6422C9BDD3C8AD722E61689A3E898A12231E8557A347E4B368824115D9C61E
          346C8D55C88E4DEC7B5A5149D67645825242A0B337E474EE45B4E59E5EC82772
          D8A429D81A3D17C831729BAF0195780A19A82AD4A55D48835AE0FF0025EB3A3B
          935AD9AC5573CFB62DBB5EAD5B221626650B040D5EC3332728B26E14F269C591
          72290AAB76F26666E17453916CBA297EE25717A38CF25D783DC5AEED2C2D1A6C
          AC71E38F26303C7751ABB2F2C4963C9A48C606EA5092910680E8017A8C9F281E
          99787E2A5860859AE956DCE58A1595031FA32AEB78AC7D19D8E97222035D3A1D
          45FBEEBC2DBC23AD3FE240EA787A75189B65A6BEAF324AD88C345B57EF6EB069
          C6C93C5BE88BCC425116F352EC576AB39596EE2C5F1C8E005115083CF3C41A05
          FB5771E75E50B65A4D50B6D71A4B3376D9A3D4641268C549F94730CCCCF1B899
          BACAB4875D8B6505B9D440A64BC09AAA8144E692D8C9262B81F1FC266AD7398B
          B76B3BBB5C0271D58A131C76D2D8C73C73C6F3C491A992E51E3D098B82559810
          7B6B236B82C7595F457F6B19866871CB8B0A855627B65912543222A8EA955934
          AE48EC5BB1EDA6318C99D66698C6314A6318C5298C6314A6318C5298C6314A63
          18C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5
          298C6314A6318C5298C6314A6318C5298C6314A6318C5298C6314A6318C5298C
          6314A6318C5298C6314A6318C5298C6314AFFFD9}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo1: TfrxMemoView
        Align = baWidth
        Left = 143.622140000000000000
        Width = 738.520162000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Desenvolvido por: Elvis Sousa Brand'#227'o')
        ParentFont = False
      end
      object Date: TfrxMemoView
        Align = baRight
        Left = 882.142302000000000000
        Width = 98.267780000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Align = baWidth
        Left = 143.622140000000000000
        Top = 102.047310000000000000
        Width = 836.787942000000000000
        Height = 30.236240000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        HAlign = haCenter
        Memo.UTF8W = (
          'RELAT'#211'RIO SCOUT ATLETA')
        ParentFont = False
      end
      object Line1: TfrxLineView
        Top = 151.181200000000000000
        Width = 982.677800000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object Memo21: TfrxMemoView
        Align = baWidth
        Top = 173.858380000000000000
        Width = 980.410082000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          'ESTAT'#205'STICA GERAL DO ATLETA')
        ParentFont = False
      end
      object RelAtletaNome_Atleta: TfrxMemoView
        Left = 26.456710000000000000
        Top = 264.567100000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Memo.UTF8W = (
          '[RelCompAtleta."Nome_Atleta"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaTotalPassesCertos_Scout: TfrxMemoView
        Left = 257.008040000000000000
        Top = 264.567100000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalPassesCertos"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaTotalPassesErrados_Scout: TfrxMemoView
        Left = 385.512060000000000000
        Top = 264.567100000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalPassesErrados"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaTotalChutes_Scout1: TfrxMemoView
        Left = 525.354670000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalChutes"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaTotalChutesCertos_Scout: TfrxMemoView
        Left = 600.945270000000000000
        Top = 264.567100000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalChutesCertos"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaTotalChutesErrados_Scout: TfrxMemoView
        Left = 729.449290000000000000
        Top = 264.567100000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalChutesErrados"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletap100PassesCertos_Scout: TfrxMemoView
        Left = 317.480520000000000000
        Top = 264.567100000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."p100PassesCertos"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletap100PassesErrados_Scout: TfrxMemoView
        Left = 449.764070000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."p100PassesErrados"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletap100ChutesCertos_Scout: TfrxMemoView
        Left = 661.417750000000000000
        Top = 264.567100000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."p100ChutesCertos"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletap100ChutesErrados_Scout: TfrxMemoView
        Left = 797.480830000000000000
        Top = 264.567100000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = clBtnFace
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."p100ChutesErrados"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaAssistencias_Scout: TfrxMemoView
        Left = 873.071430000000000000
        Top = 264.567100000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."Assistencias"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelAtletaGols_Scout: TfrxMemoView
        Left = 918.425790000000000000
        Top = 264.567100000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."Gols"]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Left = 26.456710000000000000
        Top = 222.992270000000000000
        Width = 158.740260000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'Nome do Atleta')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Left = 185.196970000000000000
        Top = 222.992270000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'T. de Passes')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        Left = 257.008040000000000000
        Top = 222.992270000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'P. Certos')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Left = 385.512060000000000000
        Top = 222.992270000000000000
        Width = 64.252010000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'P. Errados')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Left = 525.354670000000000000
        Top = 222.992270000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'T. de Chutes')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo12: TfrxMemoView
        Left = 600.945270000000000000
        Top = 222.992270000000000000
        Width = 60.472480000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'C. Certos')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Left = 729.449290000000000000
        Top = 222.992270000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'C. Errados')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Left = 317.480520000000000000
        Top = 222.992270000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          '%P. Certos')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 449.764070000000000000
        Top = 222.992270000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          '%P. Errados')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 661.417750000000000000
        Top = 222.992270000000000000
        Width = 68.031540000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          '%C. Certos')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Left = 797.480830000000000000
        Top = 222.992270000000000000
        Width = 75.590600000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          '%C. Errados')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Left = 873.071430000000000000
        Top = 222.992270000000000000
        Width = 45.354360000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'Assist.')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 918.425790000000000000
        Top = 222.992270000000000000
        Width = 34.015770000000000000
        Height = 18.897650000000000000
        DataSet = frxDBRelAtleta
        DataSetName = 'RelAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Fill.BackColor = 14211288
        HAlign = haCenter
        Memo.UTF8W = (
          'Gols')
        ParentFont = False
        VAlign = vaCenter
      end
      object RelCompAtletaTotalPasses: TfrxMemoView
        Left = 185.196970000000000000
        Top = 264.567100000000000000
        Width = 71.811070000000000000
        Height = 18.897650000000000000
        DataField = 'TotalPasses'
        DataSet = frxDBDataset1
        DataSetName = 'RelCompAtleta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8W = (
          '[RelCompAtleta."TotalPasses"]')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
