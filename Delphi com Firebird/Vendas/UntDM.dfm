object DM: TDM
  OldCreateOrder = False
  Height = 337
  Width = 491
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\gilbe\Programa'#231#227'o\Sistemas\Delphi2018\Banco\VE' +
        'NDAS2018.GDB'
      'ConnectionDef=DBVENDAS')
    LoginPrompt = False
    Left = 72
    Top = 24
  end
  object dataSource_cadastro: TDataSource
    DataSet = fdqry_cadastro
    Left = 354
    Top = 200
  end
  object fdqry_cadastro: TFDQuery
    Connection = FDConnection1
    Transaction = trans_cadastro
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateObject = update_cadastro
    Left = 354
    Top = 136
    object fdtncfld_cadastropro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      GeneratorName = 'gen_id'
    end
    object strngfld_cadastropro_nome: TStringField
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Required = True
      Size = 100
    end
    object strngfld_cadastropro_barras: TStringField
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
      Required = True
    end
    object strngfld_cadastropro_ref: TStringField
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Required = True
    end
    object fltfld_cadastropro__custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro__custo'
      Origin = 'pro__custo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object fltfld_cadastropro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object fltfld_cadastropro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object intgrfld_cadastropro_estoque: TIntegerField
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      Required = True
    end
  end
  object update_cadastro: TFDUpdateSQL
    Connection = FDConnection1
    Left = 354
    Top = 72
  end
  object trans_cadastro: TFDTransaction
    Connection = FDConnection1
    Left = 354
    Top = 16
  end
end
