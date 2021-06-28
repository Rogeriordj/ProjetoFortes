object frmPtoAbastecimento: TfrmPtoAbastecimento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ponto de Abastecimento'
  ClientHeight = 464
  ClientWidth = 660
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
    Top = 420
    Width = 660
    Height = 44
    Align = alBottom
    TabOrder = 0
    object btnGravar: TSpeedButton
      Left = 573
      Top = 6
      Width = 76
      Height = 32
      Caption = '&Gravar'
      OnClick = btnGravarClick
    end
    object btnIncluir: TSpeedButton
      Left = 247
      Top = 6
      Width = 76
      Height = 32
      Caption = '&Incluir'
      OnClick = btnIncluirClick
    end
    object btnAlterar: TSpeedButton
      Left = 412
      Top = 6
      Width = 76
      Height = 32
      Caption = '&Alterar'
      OnClick = btnAlterarClick
    end
    object btnExcluir: TSpeedButton
      Left = 329
      Top = 6
      Width = 76
      Height = 32
      Caption = '&Excluir'
      OnClick = btnExcluirClick
    end
    object btnCancelar: TSpeedButton
      Left = 493
      Top = 6
      Width = 76
      Height = 32
      Caption = '&Cancelar'
      OnClick = btnCancelarClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 660
    Height = 177
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 5
      Width = 137
      Height = 14
      Caption = 'Ponto de Abastecimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 45
      Width = 52
      Height = 14
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 407
      Top = 45
      Width = 30
      Height = 14
      Caption = 'Bairro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 87
      Width = 36
      Height = 14
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 240
      Top = 87
      Width = 37
      Height = 14
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 5
      Top = 128
      Width = 44
      Height = 14
      Caption = 'Contato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 300
      Top = 87
      Width = 21
      Height = 14
      Caption = 'CEP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 169
      Top = 128
      Width = 49
      Height = 14
      Caption = 'Telefone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 463
      Top = 5
      Width = 27
      Height = 14
      Caption = 'CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dbedtCgc: TDBEdit
      Left = 463
      Top = 20
      Width = 189
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbeNome: TDBEdit
      Left = 5
      Top = 20
      Width = 452
      Height = 23
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbeEndereco: TDBEdit
      Left = 5
      Top = 60
      Width = 396
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dbeBairro: TDBEdit
      Left = 407
      Top = 60
      Width = 242
      Height = 23
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dbeCidade: TDBEdit
      Left = 5
      Top = 102
      Width = 205
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object dbeGerente: TDBEdit
      Left = 5
      Top = 143
      Width = 145
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CONTATO'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object dbeCep: TDBEdit
      Left = 300
      Top = 102
      Width = 76
      Height = 23
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dbeTelefone: TDBEdit
      Left = 169
      Top = 143
      Width = 145
      Height = 23
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbEdtEstado: TDBEdit
      Left = 240
      Top = 102
      Width = 37
      Height = 23
      CharCase = ecUpperCase
      DataField = 'ESTADO'
      DataSource = dsPonto
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 177
    Width = 660
    Height = 243
    TabStop = False
    Align = alClient
    DataSource = dsPonto
    FixedColor = clWhite
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        ButtonStyle = cbsNone
        Expanded = False
        FieldName = 'NOME'
        Width = 237
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTATO'
        Width = 164
        Visible = True
      end>
  end
  object qryPonto: TFDQuery
    Connection = dmConexao.FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName, uvAutoCommitUpdates]
    UpdateOptions.GeneratorName = 'GEN_PtoAbastecimento_ID'
    UpdateOptions.AutoCommitUpdates = True
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'SELECT pt.* FROM "PtoAbastecimento" pt')
    Left = 240
    Top = 289
    object qryPontoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object qryPontoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
  end
  object dsPonto: TDataSource
    DataSet = qryPonto
    Left = 312
    Top = 289
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = dmConexao.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO "PtoAbastecimento"'
      '(NOME, ENDERECO, CONTATO, BAIRRO, CIDADE, '
      '  ESTADO, CEP, TELEFONE, CNPJ)'
      
        'VALUES (:NEW_NOME, :NEW_ENDERECO, :NEW_CONTATO, :NEW_BAIRRO, :NE' +
        'W_CIDADE, '
      '  :NEW_ESTADO, :NEW_CEP, :NEW_TELEFONE, :NEW_CNPJ)'
      
        'RETURNING NOME, ENDERECO, CONTATO, BAIRRO, CIDADE, ESTADO, CEP, ' +
        'TELEFONE, CNPJ')
    ModifySQL.Strings = (
      'UPDATE "PtoAbastecimento"'
      
        'SET NOME = :NEW_NOME, ENDERECO = :NEW_ENDERECO, CONTATO = :NEW_C' +
        'ONTATO, '
      
        '  BAIRRO = :NEW_BAIRRO, CIDADE = :NEW_CIDADE, ESTADO = :NEW_ESTA' +
        'DO, '
      '  CEP = :NEW_CEP, TELEFONE = :NEW_TELEFONE, CNPJ = :NEW_CNPJ'
      'WHERE ID = :OLD_ID'
      
        'RETURNING NOME, ENDERECO, CONTATO, BAIRRO, CIDADE, ESTADO, CEP, ' +
        'TELEFONE, CNPJ')
    DeleteSQL.Strings = (
      'DELETE FROM "PtoAbastecimento"'
      'WHERE ID = :OLD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ID, NOME, ENDERECO, CONTATO, BAIRRO, CIDADE, ESTADO, CEP,' +
        ' TELEFONE, '
      '  CNPJ'
      'FROM "PtoAbastecimento"'
      'WHERE ID = :OLD_ID')
    Left = 384
    Top = 289
  end
end
