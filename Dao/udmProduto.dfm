object dmProduto: TdmProduto
  Height = 242
  Width = 195
  object qryProduto: TFDQuery
    Connection = DM.Conexao
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
      'JOIN CATEGORIAS C ON A.ID_CATEGORIA=C.ID'
      '')
    Left = 24
    Top = 16
  end
end
