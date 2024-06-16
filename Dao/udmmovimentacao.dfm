object dmMovimentacao: TdmMovimentacao
  Height = 204
  Width = 324
  object qryMovimentacao: TFDQuery
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
    Left = 40
    Top = 24
  end
end
