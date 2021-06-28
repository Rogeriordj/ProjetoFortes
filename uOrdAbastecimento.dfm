object frmOrdAbastecimento: TfrmOrdAbastecimento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordens de Abastecimento'
  ClientHeight = 417
  ClientWidth = 501
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 501
    Height = 201
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 13
      Width = 133
      Height = 13
      Caption = 'Data do Abastecimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 147
      Top = 13
      Width = 90
      Height = 13
      Caption = 'Placa do Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 58
      Width = 139
      Height = 13
      Caption = 'Ponto de Abastecimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 135
      Top = 101
      Width = 39
      Height = 13
      Caption = 'Bomba'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 271
      Top = 99
      Width = 114
      Height = 13
      Caption = 'Tipo de Combust'#237'vel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 99
      Width = 42
      Height = 13
      Caption = 'Tanque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 145
      Width = 51
      Height = 13
      Caption = 'Litragem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 111
      Top = 145
      Width = 80
      Height = 13
      Caption = 'Valor por Litro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 214
      Top = 146
      Width = 61
      Height = 13
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 318
      Top = 145
      Width = 48
      Height = 13
      Caption = 'Imposto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DT_ABASTECIMENTO'
      DataSource = dsOrdem
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 147
      Top = 32
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PLACA'
      DataSource = dsOrdem
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 74
      Width = 408
      Height = 21
      DataField = 'PTO_ABASTECIMENTO'
      DataSource = dsOrdem
      KeyField = 'ID'
      ListField = 'NOME'
      ListSource = dsPonto
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 164
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'LITRAGEM'
      DataSource = dsOrdem
      TabOrder = 5
      OnExit = DBEdit4Exit
    end
    object DBEdit4: TDBEdit
      Left = 111
      Top = 164
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VLR_LITRO'
      DataSource = dsOrdem
      TabOrder = 6
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 214
      Top = 164
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VLR_TOTAL'
      DataSource = dsOrdem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit6: TDBEdit
      Left = 318
      Top = 164
      Width = 89
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IMPOSTO'
      DataSource = dsOrdem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 116
      Width = 115
      Height = 21
      DataField = 'TANQUE'
      DataSource = dsOrdem
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsTanque
      TabOrder = 3
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 135
      Top = 116
      Width = 123
      Height = 21
      DataField = 'BOMBA'
      DataSource = dsOrdem
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dsBomba
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 271
      Top = 116
      Width = 121
      Height = 21
      Color = clWhite
      DataField = 'COMBUSTIVEL'
      DataSource = dsOrdem
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 376
    Width = 501
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnAlterar: TSpeedButton
      Left = 255
      Top = 5
      Width = 76
      Height = 32
      Caption = '&Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 173
      Top = 5
      Width = 76
      Height = 32
      Caption = '&Excluir'
      OnClick = btnExcluirClick
    end
    object btnGravar: TSpeedButton
      Left = 418
      Top = 5
      Width = 76
      Height = 32
      Caption = '&Gravar'
      OnClick = btnGravarClick
    end
    object btnIncluir: TSpeedButton
      Left = 92
      Top = 5
      Width = 76
      Height = 32
      Caption = '&Incluir'
      OnClick = btnIncluirClick
    end
    object btnCancelar: TSpeedButton
      Left = 336
      Top = 5
      Width = 76
      Height = 32
      Caption = '&Cancelar'
      OnClick = btnCancelarClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 201
    Width = 501
    Height = 175
    Align = alClient
    DataSource = dsOrdem
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dsOrdem: TDataSource
    DataSet = qryOrdem
    Left = 304
    Top = 248
  end
  object qryOrdem: TFDQuery
    Connection = dmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PtoAbastecimento_ID'
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT oa.*  FROM "OrdAbastecimento" oa')
    Left = 376
    Top = 249
    object qryOrdemID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object qryOrdemPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 8
    end
    object qryOrdemDT_ABASTECIMENTO: TDateField
      FieldName = 'DT_ABASTECIMENTO'
      Origin = 'DT_ABASTECIMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object qryOrdemPTO_ABASTECIMENTO: TIntegerField
      FieldName = 'PTO_ABASTECIMENTO'
      Origin = 'PTO_ABASTECIMENTO'
      OnChange = qryOrdemPTO_ABASTECIMENTOChange
    end
    object qryOrdemCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
    object qryOrdemLITRAGEM: TCurrencyField
      FieldName = 'LITRAGEM'
      Origin = 'LITRAGEM'
      DisplayFormat = '###0.000'
      currency = False
    end
    object qryOrdemVLR_LITRO: TCurrencyField
      FieldName = 'VLR_LITRO'
      Origin = 'VLR_LITRO'
    end
    object qryOrdemVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = 'VLR_TOTAL'
      currency = True
    end
    object qryOrdemIMPOSTO: TCurrencyField
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
    end
    object qryOrdemTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
      OnChange = qryOrdemTANQUEChange
    end
    object qryOrdemBOMBA: TIntegerField
      FieldName = 'BOMBA'
      Origin = 'BOMBA'
    end
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dmConexao.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO "OrdAbastecimento"'
      '(PLACA, DT_ABASTECIMENTO, PTO_ABASTECIMENTO, TANQUE, '
      '  BOMBA, COMBUSTIVEL, LITRAGEM, VLR_LITRO, '
      '  VLR_TOTAL, IMPOSTO)'
      
        'VALUES (:NEW_PLACA, :NEW_DT_ABASTECIMENTO, :NEW_PTO_ABASTECIMENT' +
        'O, :NEW_TANQUE, '
      '  :NEW_BOMBA, :NEW_COMBUSTIVEL, :NEW_LITRAGEM, :NEW_VLR_LITRO, '
      '  :NEW_VLR_TOTAL, :NEW_IMPOSTO)'
      
        'RETURNING PLACA, DT_ABASTECIMENTO, PTO_ABASTECIMENTO, TANQUE, BO' +
        'MBA, COMBUSTIVEL, LITRAGEM, VLR_LITRO, VLR_TOTAL, IMPOSTO')
    ModifySQL.Strings = (
      'UPDATE "OrdAbastecimento"'
      
        'SET PLACA = :NEW_PLACA, DT_ABASTECIMENTO = :NEW_DT_ABASTECIMENTO' +
        ', '
      
        '  PTO_ABASTECIMENTO = :NEW_PTO_ABASTECIMENTO, TANQUE = :NEW_TANQ' +
        'UE, '
      
        '  BOMBA = :NEW_BOMBA, COMBUSTIVEL = :NEW_COMBUSTIVEL, LITRAGEM =' +
        ' :NEW_LITRAGEM, '
      '  VLR_LITRO = :NEW_VLR_LITRO, VLR_TOTAL = :NEW_VLR_TOTAL, '
      '  IMPOSTO = :NEW_IMPOSTO'
      'WHERE ID = :OLD_ID'
      
        'RETURNING PLACA, DT_ABASTECIMENTO, PTO_ABASTECIMENTO, TANQUE, BO' +
        'MBA, COMBUSTIVEL, LITRAGEM, VLR_LITRO, VLR_TOTAL, IMPOSTO')
    DeleteSQL.Strings = (
      'DELETE FROM "OrdAbastecimento"'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, PLACA, DT_ABASTECIMENTO, PTO_ABASTECIMENTO, TANQUE, B' +
        'OMBA, '
      '  COMBUSTIVEL, LITRAGEM, VLR_LITRO, VLR_TOTAL, IMPOSTO'
      'FROM "OrdAbastecimento"'
      'WHERE ID = :OLD_ID')
    Left = 448
    Top = 217
  end
  object qryTanque: TFDQuery
    MasterSource = dsOrdem
    Connection = dmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PtoAbastecimento_ID'
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      'SELECT *  FROM "Tanques" ')
    Left = 376
    Top = 305
    object qryTanqueID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanqueDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
    object qryTanqueTP_COMBUSTIVEL: TStringField
      FieldName = 'TP_COMBUSTIVEL'
      Origin = 'TP_COMBUSTIVEL'
    end
    object qryTanquePTO_ABASTECIMENTO: TIntegerField
      FieldName = 'PTO_ABASTECIMENTO'
      Origin = 'PTO_ABASTECIMENTO'
    end
  end
  object dsTanque: TDataSource
    DataSet = qryTanque
    Left = 304
    Top = 304
  end
  object qryBomba: TFDQuery
    MasterSource = dsOrdem
    Connection = dmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PtoAbastecimento_ID'
    UpdateOptions.AutoCommitUpdates = True
    SQL.Strings = (
      ''
      '')
    Left = 120
    Top = 249
    object qryBombaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombaTANQUE: TIntegerField
      FieldName = 'TANQUE'
      Origin = 'TANQUE'
    end
    object qryBombaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
    end
  end
  object dsBomba: TDataSource
    DataSet = qryBomba
    Left = 48
    Top = 248
  end
  object dsPonto: TDataSource
    DataSet = qryPonto
    Left = 48
    Top = 304
  end
  object qryPonto: TFDQuery
    MasterSource = dsOrdem
    Connection = dmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PtoAbastecimento_ID'
    UpdateOptions.AutoCommitUpdates = True
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'SELECT * FROM "PtoAbastecimento"'
      '')
    Left = 120
    Top = 305
    object qryPontoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPontoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 120
    end
    object qryPontoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 120
    end
    object qryPontoCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
    end
    object qryPontoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object qryPontoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 80
    end
    object qryPontoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object qryPontoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qryPontoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object qryPontoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
  end
end
