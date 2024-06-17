inherited frmProduto: TfrmProduto
  Align = alClient
  Caption = 'Cadastro de Produto'
  ClientHeight = 375
  Font.Height = -12
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 414
  TextHeight = 14
  object Label1: TLabel [0]
    Left = 160
    Top = 88
    Width = 78
    Height = 13
    Caption = 'ID do Produto'
    FocusControl = edtIDProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 160
    Top = 136
    Width = 117
    Height = 14
    Caption = 'Descri'#231#227'o do Produto'
    FocusControl = edtProdutoDescricao
  end
  object Label3: TLabel [2]
    Left = 160
    Top = 184
    Width = 80
    Height = 14
    Caption = 'Valor de Custo'
    FocusControl = edtValorCusto
  end
  object Label4: TLabel [3]
    Left = 280
    Top = 184
    Width = 84
    Height = 14
    Caption = 'Valor de Venda'
    FocusControl = edtValorVenda
  end
  object Label5: TLabel [4]
    Left = 398
    Top = 184
    Width = 45
    Height = 14
    Caption = 'Estoque'
    FocusControl = edtEstoque
  end
  object Label6: TLabel [5]
    Left = 514
    Top = 181
    Width = 86
    Height = 14
    Caption = 'Estoque M'#237'nimo'
    FocusControl = edtEstoqueMinimo
  end
  object Label7: TLabel [6]
    Left = 624
    Top = 184
    Width = 44
    Height = 14
    Caption = 'Unidade'
  end
  object Label8: TLabel [7]
    Left = 246
    Top = 88
    Width = 51
    Height = 13
    Caption = 'Cadastro'
    FocusControl = edtCadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 160
    Top = 237
    Width = 67
    Height = 14
    Caption = 'ID Categoria'
    FocusControl = edtIDCategoria
  end
  object Label10: TLabel [9]
    Left = 280
    Top = 234
    Width = 106
    Height = 14
    Caption = 'Descri'#231#227'o Categoria'
    FocusControl = edtCategoria
  end
  inherited imFundo: TImage
    Height = 251
    ExplicitLeft = 0
    ExplicitTop = 68
    ExplicitWidth = 827
    ExplicitHeight = 251
  end
  object BCategoria: TSpeedButton [11]
    Left = 253
    Top = 255
    Width = 23
    Height = 25
    Caption = '...'
    OnClick = BCategoriaClick
  end
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited BNovo: TSpeedButton
      Flat = True
    end
    inherited BDeletar: TSpeedButton
      Flat = True
    end
    inherited BEditar: TSpeedButton
      Flat = True
    end
    inherited BGravar: TSpeedButton
      Flat = True
    end
    inherited BCancelar: TSpeedButton
      Flat = True
    end
    inherited BPesquisar: TSpeedButton
      Flat = True
    end
    inherited BSair: TSpeedButton
      Flat = True
    end
  end
  inherited Panel2: TPanel
    Top = 318
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 295
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object edtIDProduto: TDBEdit [14]
    Left = 160
    Top = 104
    Width = 67
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'ID'
    DataSource = dsPadrao
    TabOrder = 2
  end
  object edtProdutoDescricao: TDBEdit [15]
    Left = 160
    Top = 152
    Width = 519
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = dsPadrao
    TabOrder = 3
  end
  object edtValorCusto: TDBEdit [16]
    Left = 160
    Top = 203
    Width = 100
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'VL_CUSTO'
    DataSource = dsPadrao
    TabOrder = 4
  end
  object edtValorVenda: TDBEdit [17]
    Left = 280
    Top = 200
    Width = 100
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'VL_VENDA'
    DataSource = dsPadrao
    TabOrder = 5
  end
  object edtEstoque: TDBEdit [18]
    Left = 398
    Top = 200
    Width = 99
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'ESTOQUE'
    DataSource = dsPadrao
    TabOrder = 6
  end
  object edtEstoqueMinimo: TDBEdit [19]
    Left = 514
    Top = 200
    Width = 92
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'ESTOQUE_MIN'
    DataSource = dsPadrao
    TabOrder = 7
  end
  object edtCadastro: TDBEdit [20]
    Left = 246
    Top = 104
    Width = 134
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    DataField = 'CADASTRO'
    DataSource = dsPadrao
    Enabled = False
    TabOrder = 11
  end
  object edtIDCategoria: TDBEdit [21]
    Left = 158
    Top = 253
    Width = 89
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    Color = clInfoBk
    DataField = 'ID_CATEGORIA'
    DataSource = dsPadrao
    TabOrder = 9
  end
  object edtCategoria: TDBEdit [22]
    Left = 282
    Top = 254
    Width = 415
    Height = 28
    AutoSize = False
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    CharCase = ecUpperCase
    Color = clInfoBk
    DataField = 'NOME'
    DataSource = dsCategoria
    ReadOnly = True
    TabOrder = 10
  end
  object cbUnidade: TDBComboBox [23]
    Left = 624
    Top = 203
    Width = 55
    Height = 22
    Style = csDropDownList
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BevelWidth = 2
    DataField = 'UNIDADE'
    DataSource = dsPadrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT'
      'UN')
    TabOrder = 8
  end
  inherited qryPadrao: TFDQuery
    AfterScroll = qryPadraoAfterScroll
    SQL.Strings = (
      'SELECT A.ID, '
      '       A.DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       A.ID_CATEGORIA, '
      '       C.NOME                  '
      'FROM PRODUTO A'
      'LEFT JOIN CATEGORIAS C ON A.ID_CATEGORIA=C.ID'
      '')
    Left = 408
    Top = 72
    object qryPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPadraoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      OnChange = qryPadraoID_CATEGORIAChange
    end
    object qryPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 250
    end
  end
  inherited dsPadrao: TDataSource
    Left = 480
    Top = 72
  end
  object QryCategoria: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT A.ID, '
      '       A.NOME   '
      'FROM CATEGORIAS A'
      'WHERE A.ID = :ID'
      '')
    Left = 552
    Top = 72
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCategoriaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 250
    end
  end
  object dsCategoria: TDataSource
    DataSet = QryCategoria
    Left = 632
    Top = 72
  end
end
