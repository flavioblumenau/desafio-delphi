object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'ERP EXEMPLO'
  ClientHeight = 331
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object imFundo: TImage
    Left = 0
    Top = 67
    Width = 367
    Height = 207
    Align = alClient
    ExplicitTop = 59
  end
  object Label1: TLabel
    Left = 48
    Top = 96
    Width = 69
    Height = 25
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 165
    Width = 54
    Height = 25
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 67
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object BLogar: TSpeedButton
      Left = 66
      Top = 10
      Width = 92
      Height = 45
      Caption = 'Login'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000DD000000DD0000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF9E3CBBFC593
        79B6755597502A7C380E7E3A10833E158A471F9A5D3AC6A18CF8F4F2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE9C6937AA352299E491E9E49
        1E8F42177C380E7C380E7C380E7C380E7C380E7C380E7C380E7E3A109A5D3AE9
        DBD3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCF9F8CDA18BA250279E491E9E491E9E491E8F42
        177C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7D
        390FA36A4AF8F3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6EEEAB3704F9E491E9E491E9E491E9E491E8F42177C38
        0E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C380E7C
        380E7C380E88441CEADDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEDFD7A95D379E491E9E491E9E491E9E491E8F4217874413A261
        1EBC7E29D59A34EFB63FE6AD2BE0A72CD09529B677218F4D157C380E7C380E7C
        380E7C380E7C380E813C12DAC2B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6EEEAA95D379E491E9E491E9E491E9E491E914518BC7E29F9C143FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC2AD09529813D107C
        380E7C380E7C380E7C380E813C12EADDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCF9F8B3704F9E491E9E491E9E491E9E491EA45A1FE4AA3AFCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC2CA3
        631B7C380E7C380E7C380E7C380E88441CF8F3F0FFFFFFFFFFFFFFFFFFFFFFFF
        CDA18B9E491E9E491E9E491E9E491EBC782AF9C143FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC2AC78A267C380E7C380E7C380E7C380EA36A4AFFFFFFFFFFFFFFFFFFF5EDE9
        A250279E491E9E491E9E491EB06025FAC143FCC444FCC444FCC444FCC444FCC4
        44FCC74DFCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC2AA3631B7C380E7C380E7C380E7D390FE9DBD3FFFFFFFFFFFFC6937A
        9E491E9E491E9E491EA04B1FEAAD3DFCC444FCC444FCC444FCC444FCC444FEE3
        A7FEF5DEFCC953FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC2C813D107C380E7C380E7C380E9A5D3AFFFFFFFCFAF9A35229
        9E491E9E491E9E491ECD8731FCC444FCC444FCC444FCC444FCC444FEE3A7FFFF
        FFFFFFFFFEF5DEFCC953E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC29D095297C380E7C380E7C380E7E3A10F8F4F2E3CBBF9E491E
        9E491E9E491EA65421FAC243FCC444FCC444FCC444FCC444FEE3A7FFFFFFFFFF
        FFFFFFFFFFFFFFFEF4DDE7B646E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC29E5AC2A8F4D157C380E7C380E7C380EC6A18CC593799E491E
        9E491E9E491EBA6D29FCC444FCC444FCC444FCC444FEE3A7FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE5E3DEE7B545E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC29E5AC29B677217C380E7C380E7C380E9A5D3AB675559E491E
        9E491E9E491ECD8631FCC444FCC444FCC444FEE3A7FFFFFFFFFFFFFFFFFFFFF9
        EDFEEEC8FFFFFFFFFFFFE0E0E0E5E3DEE7B545E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC29E5AC29D095297C380E7C380E7C380E8A471FAC633F9E491E
        9E491E9E491EE09F39FCC444FCC444FCC546FEEDC7FFFFFFFFFFFFFFF9EDFCCD
        61FCC547FEECC2FFFFFFE0E0E0E0E0E0E5E3DEE7B545E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC29E5AC29E0A72C7C380E7C380E7C380E833E15A352299E491E
        9E491E9E491EF3B840FCC444FCC444FCC444FCC548FEEEC9FFF9EDFCCD61FCC4
        44FCC444FCC547FEECC3E0E0E0E0E0E0E0E0E0E5E3DEE7B545E5AC29E5AC29E5
        AC29E5AC29E5AC29E5AC29E6AD2B7C380E7C380E7C380E7E3A10A352299E491E
        9E491E9E491EF3B840FCC444FCC444FCC444FCC444FCC649FCCC5DFCC444FCC4
        44FCC444FCC444FCC547E7E1D4E0E0E0E0E0E0E0E0E0E5E3DEE7B544E5AC29E5
        AC29E5AC29E5AC29E5AC29E6AD2B7C380E7C380E7C380E7C380EAC633F9E491E
        9E491E9E491EE09F39FCC444FCC444FCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E6AF31E7E2D5E0E0E0E0E0E0E0E0E0E5E3DEE7B544E5
        AC29E5AC29E5AC29E5AC29E0A72C7C380E7C380E7C380E964F28B675559E491E
        9E491E9E491ECD8631FCC444FCC444FCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E6AF31E7E2D5E0E0E0E0E0E0E0E0E0E5E3DEE7
        B544E5AC29E5AC29E5AC29D095297C380E7C380E8E4116B67555C593799E491E
        9E491E9E491EBA6D29FCC444FCC444FCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E6AF31E7E2D5E0E0E0E0E0E0E0E0E0E5
        E3DEE5AE2FE5AC29E5AC29B677217C380E8E41169E491EC59379E3CBBF9E491E
        9E491E9E491EA65421FAC243FCC444FCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E6AF31E7E2D5E0E0E0E0E0E0E9
        D4A4E5AC29E5AC29E5AC2A8F4D158E41169E491E9E491EE3CBBFFCFAF9A35229
        9E491E9E491E9E491ECD8731FCC444FCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E6AF31E7E2D5EAD5A6E5
        AC29E5AC29E5AC29D095298E41169E491E9E491EA35229FCFAF9FFFFFFC6937A
        9E491E9E491E9E491EA04B1FEAAD3DFCC444FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC29E5AC2C9246179E491E9E491E9E491EC6937AFFFFFFFFFFFFF5EDE9
        A250279E491E9E491E9E491EB06025FAC243FCC444FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC29E5AC2AAF69219E491E9E491E9E491EA25027F5EDE9FFFFFFFFFFFFFFFFFF
        CDA18B9E491E9E491E9E491E9E491EC57C2EFAC243FCC444FCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E5
        AC2AD2902C9E491E9E491E9E491E9E491ECDA18BFFFFFFFFFFFFFFFFFFFFFFFF
        FCF9F8B3704F9E491E9E491E9E491E9E491EB06025EBAD3DFCC444FCC444FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC29E5AC29E6AC2DBA
        6E269E491E9E491E9E491E9E491EB3704FFCF9F8FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6EEEAA95D379E491E9E491E9E491E9E491EA04B1FCD8731FAC243FCC4
        44FCC444FCC444FCC444E5AC29E5AC29E5AC29E5AC29E5AC2AD9992DA14D1F9E
        491E9E491E9E491E9E491EA95D37F6EEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEEDFD7A95D379E491E9E491E9E491E9E491E9E491EA65421BA6D
        29CD8631E09F39F3B840E6AD2BE3A82ED9992DC78029AB5C229E491E9E491E9E
        491E9E491E9E491EA95D37EEDFD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF6EEEAB3704F9E491E9E491E9E491E9E491E9E491E9E49
        1E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E
        491E9E491EB3704FF6EEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCF9F8CDA18BA250279E491E9E491E9E491E9E49
        1E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491EA2
        5027CDA18BFCF9F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EDE9C6937AA352299E491E9E49
        1E9E491E9E491E9E491E9E491E9E491E9E491E9E491E9E491EA35229C6937AF5
        EDE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF9E3CBBFC593
        79B67555AC633FA35229A35229AC633FB67555C59379E3CBBFFCFAF9FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = BLogarClick
    end
    object BCancelar: TSpeedButton
      Left = 164
      Top = 10
      Width = 108
      Height = 45
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFECECFBD8D8F8CCCCF5CDCDF6D7D7F7ECECFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3F8ABABEE8080
        E77373E57373E57373E57373E57373E57373E58080E7ABABEEE3E3F8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFB9C9CE97373E57373E57373
        E57373E57373E57373E57373E57373E57373E57373E57373E57373E59C9CE9ED
        EDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF47878E47373E57373E57373E56B6D
        E65A5FEB4F56ED4851EF4851EF4F56ED5A5FEB6B6DE67373E57373E57373E578
        78E4CFCFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC6C6F47373E47373E57373E56769E74750EF3643
        F33643F43643F43643F43643F43643F43643F43643F34750EF6769E77373E573
        73E57373E4C6C6F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFF47373E47373E57272E5535AEC3643F33643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F3545AEC72
        72E57373E57373E4CFCFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEDEDFB7878E47373E57272E54C54EE3643F43643F43643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643F44C
        54EE7272E57373E57878E4EDEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9C9CE97373E57373E5545AEC3643F43643F43643F43643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643F436
        43F4545AEC7373E57373E59C9CE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3E3F87373E57373E56769E73643F33643F43643F43643F44853EF797F
        E43643F43643F43643F43643F43643F43643F4797FE44853EF3643F43643F436
        43F43643F36769E77373E57373E5E3E3F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFACACEE7373E57373E54750EF3643F43643F43643F44853EFC4C3D4DCD8
        CF8388E23643F43643F43643F43643F48388E2DCD8CFC4C3D44853EF3643F436
        43F43643F44750EF7373E57373E5ABABEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080E77373E56B6DE63643F33643F43643F43643F4797FE4DCD8CFDCD8
        CFDCD8CF8388E23643F43643F48388E2DCD8CFDCD8CFDCD8CF797FE43643F436
        43F43643F43643F36B6DE67373E58080E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        ECECFB7373E57373E55A5FEB3643F43643F43643F43643F43643F48388E2DCD8
        CFDCD8CFDCD8CF8388E28388E2DCD8CFDCD8CFDCD8CF8388E23643F43643F436
        43F43643F43643F45A5FEB7373E57373E5ECECFBFFFFFFFFFFFFFFFFFFFFFFFF
        D7D7F77373E57373E54F56ED3643F43643F43643F43643F43643F43643F48388
        E2DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CF8388E23643F43643F43643F436
        43F43643F43643F44F56ED7373E57373E5D8D8F8FFFFFFFFFFFFFFFFFFFFFFFF
        CCCCF67373E57373E54952EF3643F43643F43643F43643F43643F43643F43643
        F48388E2DCD8CFDCD8CFDCD8CFDCD8CF8388E23643F43643F43643F43643F436
        43F43643F43643F44851EF7373E57373E5CDCDF6FFFFFFFFFFFFFFFFFFFFFFFF
        CCCCF67373E57373E54952EF3643F43643F43643F43643F43643F43643F43643
        F48388E2DCD8CFDCD8CFDCD8CFDCD8CF8388E23643F43643F43643F43643F436
        43F43643F43643F44851EF7373E57373E5CCCCF5FFFFFFFFFFFFFFFFFFFFFFFF
        D7D7F87373E57373E54F56ED3643F43643F43643F43643F43643F43643F48388
        E2DCD8CFDCD8CFDCD8CFDCD8CFDCD8CFDCD8CF8388E23643F43643F43643F436
        43F43643F43643F44F56ED7373E57373E5D7D7F7FFFFFFFFFFFFFFFFFFFFFFFF
        ECECFB7373E57373E55A5FEB3643F43643F43643F43643F43643F48388E2DCD8
        CFDCD8CFDCD8CF8388E28388E2DCD8CFDCD8CFDCD8CF8388E23643F43643F436
        43F43643F43643F45A5FEB7373E57373E5ECECFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8080E77373E56B6DE63643F33643F43643F43643F4797FE4DCD8CFDCD8
        CFDCD8CF8388E23643F43643F48388E2DCD8CFDCD8CFDCD8CF797FE43643F436
        43F43643F43643F36B6DE67373E58080E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFABABEE7373E57373E54750EF3643F43643F43643F44853EFC4C3D4DCD8
        CF8388E23643F43643F43643F43643F48388E2DCD8CFC4C3D44853EF3643F436
        43F43643F44750EF7373E57373E5ABABEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3E3F87373E57373E56669E73643F33643F43643F43643F44853EF797F
        E43643F43643F43643F43643F43643F43643F4797FE44853EF3643F43643F436
        43F43643F36769E77373E57373E5E3E3F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9C9CE97373E57373E5545AEC3643F43643F43643F43643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643F436
        43F4535AEC7373E57373E59C9CE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFEDEDFB7979E57373E57272E54C54EE3643F43643F43643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F43643F44C
        54EE7272E57373E57878E4EDEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFF47373E57373E57272E5545AEC3643F33643F43643
        F43643F43643F43643F43643F43643F43643F43643F43643F43643F3545AEC72
        72E57373E57373E4CFCFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC6C6F47373E57373E57373E56669E74750EF3643
        F33643F43643F43643F43643F43643F43643F43643F34750EF6769E77373E573
        73E57373E4C6C6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFF47878E47373E57373E57373E56B6D
        E65A5FEB4F56ED4952EF4952EF4F56ED5A5FEB6B6DE67373E57373E57373E578
        78E4CFCFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDFB9C9CEB7373E57373E57373
        E57373E57373E57373E57373E57373E57373E57373E57373E57373E59C9CE9ED
        EDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3F9ACACEE8080
        E77373E57373E57373E57373E57373E57373E58080E7ABABEEE3E3F8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFECECFBD7D7F7CCCCF6CCCCF6D7D7F8ECECFBFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      OnClick = BCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 274
    Width = 367
    Height = 57
    Align = alBottom
    Color = 16112578
    ParentBackground = False
    TabOrder = 1
  end
  object EUsuario: TEdit
    Left = 48
    Top = 126
    Width = 266
    Height = 35
    AutoSize = False
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BevelWidth = 2
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnKeyUp = EUsuarioKeyUp
  end
  object ESenha: TEdit
    Left = 48
    Top = 196
    Width = 266
    Height = 37
    AutoSize = False
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BevelWidth = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
  end
  object qryPadrao: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      '')
    Left = 536
    Top = 8
  end
end
