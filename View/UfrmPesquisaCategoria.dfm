inherited frmPesquisaCategoria: TfrmPesquisaCategoria
  Caption = 'Pesquisa de Categorias de Produtos'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 13
  inherited Panel1: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited Label1: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited lblNome: TLabel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited cbChavePesquisa: TComboBox
      Font.Height = -13
      Font.Style = []
      ParentFont = False
      StyleElements = [seFont, seClient, seBorder]
      Items.Strings = (
        'C'#211'DIGO'
        'NOME'
        'TODOS')
    end
    inherited edtNome: TEdit
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited DBGrid1: TDBGrid
    Font.Height = -16
    Font.Style = [fsBold]
    ParentFont = False
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Categoria'
        Width = 473
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited qryPesquisaPadrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '  ID,'
      '  NOME'
      'FROM Categorias'
      'ORDER BY ID')
    Left = 360
    Top = 176
    object qryPesquisaPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPesquisaPadraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 250
    end
  end
  inherited dsPesquisaPadrao: TDataSource
    Left = 520
    Top = 176
  end
  inherited frxReport: TfrxReport
    ReportOptions.CreateDate = 44281.757615891200000000
    ReportOptions.LastChange = 44284.746335312500000000
    Left = 648
    Datasets = <
      item
        DataSet = frxDB
        DataSetName = 'frxDBCategorias'
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
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 642.520080566406300000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USU'#193'RIOS DO SISTEMA')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
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
          Left = 468.661720000000000000
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
          Left = 559.370440000000000000
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 642.520100000000000000
        DataSet = frxDB
        DataSetName = 'frxDBCategorias'
        RowCount = 0
        object frxDBCategoriasID_Categoria: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_Categoria'
          DataSet = frxDB
          DataSetName = 'frxDBCategorias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCategorias."ID_Categoria"]')
          ParentFont = False
        end
        object frxDBCategoriasNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDB
          DataSetName = 'frxDBCategorias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCategorias."NOME"]')
          ParentFont = False
        end
        object frxDBCategoriasTIPO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 325.039580000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = frxDB
          DataSetName = 'frxDBCategorias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCategorias."TIPO"]')
          ParentFont = False
        end
        object frxDBCategoriasCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 154.960710566406300000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = frxDB
          DataSetName = 'frxDBCategorias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCategorias."CADASTRO"]')
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
        Top = 120.944960000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = -3.779530000000000000
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
          Left = 154.960730000000000000
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
            'NOME')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
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
            'TIPO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA DE CADASTRO')
          ParentFont = False
        end
      end
    end
  end
  inherited frxDB: TfrxDBDataset
    UserName = 'frxDBCategorias'
    Left = 736
    Top = 176
    FieldDefs = <
      item
        FieldName = 'ID_Categoria'
      end
      item
        FieldName = 'NOME'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'TIPO'
        FieldType = fftString
        Size = 30
      end
      item
        FieldName = 'CADASTRO'
        FieldType = fftDateTime
      end>
  end
end
