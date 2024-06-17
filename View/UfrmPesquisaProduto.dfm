inherited frmPesquisaProduto: TfrmPesquisaProduto
  HelpType = htKeyword
  Caption = 'Pesquisa de Produtos'
  ClientHeight = 426
  StyleElements = [seFont, seClient, seBorder]
  ExplicitHeight = 465
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 70
    StyleElements = [seFont, seClient, seBorder]
    ExplicitHeight = 70
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblNome: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblInicio: TLabel
      Left = 392
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 392
    end
    inherited lblFim: TLabel
      Left = 515
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 515
    end
    inherited btnPesquisar: TSpeedButton
      Top = 10
      ExplicitTop = 10
    end
    inherited btnImprimir: TSpeedButton
      Left = 732
      Top = 10
      Visible = True
      ExplicitLeft = 732
      ExplicitTop = 10
    end
    inherited BSelecionar: TSpeedButton
      Top = 10
      ExplicitTop = 10
    end
    inherited cbChavePesquisa: TComboBox
      Font.Height = -13
      Font.Style = []
      ParentFont = False
      StyleElements = [seFont, seClient, seBorder]
      Items.Strings = (
        'C'#211'DIGO'
        'DESCRI'#199#195'O'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS'
        'FORNECEDOR')
    end
    inherited edtNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited edtInicio: TMaskEdit
      Left = 392
      Width = 114
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 392
      ExplicitWidth = 114
    end
    inherited edtFim: TMaskEdit
      Left = 515
      Width = 105
      StyleElements = [seFont, seClient, seBorder]
      ExplicitLeft = 515
      ExplicitWidth = 105
    end
  end
  inherited DBGrid1: TDBGrid
    Top = 70
    Height = 291
    Font.Height = -16
    Font.Style = [fsBold]
    ParentFont = False
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Categoria'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Title.Caption = 'Custo R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Title.Caption = 'Venda R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Caption = 'Estoque'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Title.Caption = 'Estoque M'#237'n.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Title.Caption = 'Un.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'Dt. Cadastro'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Top = 361
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 361
  end
  inherited qryPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID, '
      '       A.DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       B.NOME            '
      'FROM PRODUTO A'
      '   LEFT JOIN CATEGORIAS B ON A.ID_CATEGORIA = B.ID')
    object qryPesquisaPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryPesquisaPadraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesquisaPadraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesquisaPadraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesquisaPadraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPesquisaPadraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryPesquisaPadraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryPesquisaPadraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 250
    end
  end
  inherited frxReport: TfrxReport
    ReportOptions.CreateDate = 44281.757615891200000000
    ReportOptions.LastChange = 44284.875803958330000000
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
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
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929133858267700000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE PRODUTOS')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 521.575140000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 11.338590000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR CUSTO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR VENDA')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTOQUE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frxDB
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID_PRODUTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_PRODUTO"]')
          ParentFont = False
        end
        object frxDBDataset1PRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."PRODUTO_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1VL_CUSTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'VL_CUSTO'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VL_CUSTO"]')
          ParentFont = False
        end
        object frxDBDataset1VL_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'VL_VENDA'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VL_VENDA"]')
          ParentFont = False
        end
        object frxDBDataset1ESTOQUE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 585.827150000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'ESTOQUE'
          DataSet = frxDB
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ESTOQUE"]')
          ParentFont = False
        end
      end
    end
  end
  inherited frxDB: TfrxDBDataset
    Left = 752
    Top = 104
  end
end
