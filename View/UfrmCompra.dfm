inherited frmMovimentacao: TfrmMovimentacao
  Caption = 'Movimenta'#231#227'o de Produto'
  ClientHeight = 576
  ClientWidth = 884
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 900
  ExplicitHeight = 615
  TextHeight = 13
  inherited imFundo: TImage
    Top = 265
    Width = 884
    Height = 215
    ExplicitLeft = 0
    ExplicitTop = 226
    ExplicitWidth = 827
    ExplicitHeight = 253
  end
  inherited Panel1: TPanel
    Width = 884
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 884
    inherited BDeletar: TSpeedButton
      Visible = False
    end
    inherited BEditar: TSpeedButton
      Visible = False
    end
    inherited BPesquisar: TSpeedButton
      Visible = False
    end
    inherited BSair: TSpeedButton
      Left = 782
      ExplicitLeft = 782
    end
  end
  inherited Panel3: TPanel
    Width = 884
    Height = 198
    TabOrder = 1
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 61
    ExplicitWidth = 884
    ExplicitHeight = 198
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 24
      Top = 52
      Width = 63
      Height = 13
      Caption = 'ID PRODUTO'
    end
    object LbTotal: TLabel
      Left = 264
      Top = 163
      Width = 162
      Height = 19
      Caption = 'VALOR TOTAL: 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 324
      Top = 8
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
    end
    object Label5: TLabel
      Left = 164
      Top = 52
      Width = 49
      Height = 13
      Caption = 'PRODUTO'
    end
    object LbValorUnit: TLabel
      Left = 48
      Top = 163
      Width = 129
      Height = 19
      Caption = 'VALOR: R$ 0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 24
      Top = 98
      Width = 27
      Height = 13
      Caption = 'QTDE'
    end
    object Label6: TLabel
      Left = 164
      Top = 8
      Width = 88
      Height = 13
      Caption = 'TIPO MOVIMENTO'
    end
    object BProduto: TSpeedButton
      Left = 135
      Top = 67
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = BProdutoClick
    end
    object Bevel1: TBevel
      Left = 24
      Top = 146
      Width = 469
      Height = 46
    end
    object imFundo2: TImage
      Left = 536
      Top = 48
      Width = 105
      Height = 105
    end
    object EId: TEdit
      Left = 24
      Top = 24
      Width = 121
      Height = 27
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BevelWidth = 2
      TabOrder = 0
      Text = '0'
    end
    object CBTipo: TComboBox
      Left = 167
      Top = 24
      Width = 114
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvRaised
      TabOrder = 1
      Items.Strings = (
        'E'
        'S')
    end
    object cpData: TCalendarPicker
      Left = 319
      Top = 24
      Height = 32
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'select a date'
    end
    object EIdProduto: TEdit
      Left = 24
      Top = 68
      Width = 105
      Height = 27
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BevelWidth = 2
      TabOrder = 3
      OnExit = EIdProdutoExit
    end
    object ENomeProduto: TEdit
      Left = 164
      Top = 68
      Width = 277
      Height = 27
      AutoSize = False
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BevelWidth = 2
      TabOrder = 4
    end
    object EQuantidade: TNumberBox
      Left = 24
      Top = 117
      Width = 121
      Height = 27
      AutoSize = False
      TabOrder = 5
      OnChange = EQuantidadeChange
    end
  end
  inherited Panel4: TPanel
    Top = 480
    Width = 884
    Height = 39
    TabOrder = 2
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 480
    ExplicitWidth = 884
    ExplicitHeight = 39
  end
  inherited DBGrid1: TDBGrid
    Top = 265
    Width = 884
    Height = 215
    DataSource = dsPadrao
    FixedColor = 16744576
    GradientEndColor = clSilver
    Font.Height = -16
    ParentFont = False
    TitleFont.Color = clNavy
    TitleFont.Height = -16
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Width = 189
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Top = 519
    Width = 884
    TabOrder = 3
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 519
    ExplicitWidth = 884
    inherited DBNavigator1: TDBNavigator
      Left = 359
      Hints.Strings = ()
      ExplicitLeft = 359
    end
    inherited btnImprimir: TBitBtn
      Left = 11
      Width = 202
      Caption = 'Relat'#243'rio de Estoque'
      OnClick = btnImprimirClick
      ExplicitLeft = 11
      ExplicitWidth = 202
    end
  end
  inherited qryPadrao: TFDQuery
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvFetchGeneratorsPoint]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      'A.*, '
      'B.descricao'
      'FROM '
      'MOVIMENTO A'
      'LEFT JOIN PRODUTO B ON A.PRODUTO = B.ID '
      'ORDER BY ID DESC')
    Left = 176
    Top = 302
    object qryPadraoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPadraoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qryPadraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPadraoPRODUTO: TIntegerField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
    end
    object qryPadraoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qryPadraoVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = '0.00'
    end
    object qryPadraoVALOR_TOTAL: TSingleField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      DisplayFormat = '0.00'
    end
    object qryPadraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited dsPadrao: TDataSource
    Left = 256
    Top = 302
  end
  object qryProduto: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT *'
      'FROM PRODUTO'
      'where id = :pid'
      'ORDER BY ID')
    Left = 368
    Top = 304
    ParamData = <
      item
        Name = 'PID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object qryProdutoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object qryProdutoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object qryProdutoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
  end
  object dsproduto: TDataSource
    DataSet = qryProduto
    Left = 448
    Top = 304
  end
  object frxDB: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryRelatorio
    BCDToCurrency = False
    DataSetOptions = []
    Left = 656
    Top = 304
    FieldDefs = <
      item
        FieldName = 'ID'
      end
      item
        FieldName = 'DESCRICAO'
        FieldType = fftString
        Size = 100
      end
      item
        FieldName = 'VL_CUSTO'
      end
      item
        FieldName = 'VL_VENDA'
      end
      item
        FieldName = 'ESTOQUE'
      end
      item
        FieldName = 'ESTOQUE_MIN'
      end
      item
        FieldName = 'UNIDADE'
        FieldType = fftString
      end
      item
        FieldName = 'CADASTRO'
        FieldType = fftDateTime
      end
      item
        FieldName = 'ID_CATEGORIA'
      end>
  end
  object frxReport: TfrxReport
    Version = '2024.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44281.757615891200000000
    ReportOptions.LastChange = 45459.910573738420000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 656
    Top = 376
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
        Height = 86.929133860000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110717773437500000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE ESTOQUE')
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
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object frxDBDataset1PRODUTO_DESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 287.244280000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'DESCRICAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1VL_CUSTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 366.614410000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VL_CUSTO'
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
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'VL_VENDA'
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
          Width = 132.283567773437500000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'ESTOQUE'
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
  object dsRelatorio: TDataSource
    DataSet = QryRelatorio
    Left = 256
    Top = 382
  end
  object QryRelatorio: TFDQuery
    Connection = DM.Conexao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM '
      'produto  '
      'ORDER BY ID ')
    Left = 176
    Top = 382
    object QryRelatorioID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = False
      IdentityInsert = True
    end
    object QryRelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object QryRelatorioVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRelatorioVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRelatorioESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRelatorioESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object QryRelatorioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object QryRelatorioCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object QryRelatorioID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
  end
end
