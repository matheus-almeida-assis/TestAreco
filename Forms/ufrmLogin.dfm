object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login'
  ClientHeight = 152
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblLogin: TLabel
    Left = 14
    Top = 40
    Width = 60
    Height = 19
    Caption = 'Usuario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 14
    Top = 65
    Width = 49
    Height = 19
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtLogin: TEdit
    Left = 80
    Top = 40
    Width = 185
    Height = 21
    TabOrder = 0
    OnExit = edtLoginExit
  end
  object edtSenha: TEdit
    Left = 80
    Top = 67
    Width = 185
    Height = 21
    PasswordChar = '*'
    ReadOnly = True
    TabOrder = 1
    OnChange = edtSenhaChange
  end
  object btnEntrar: TBitBtn
    Left = 174
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Enabled = False
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      1800000000000006000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF1C5E001C5900FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F
      7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FF1D5E00387F19216101FF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FC3C3C37F
      7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF1B5D0030781667B0594F9E3C206101FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3
      C3C37F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF1B60002E7D1D56B96034A83F49B25348A9481F6102FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3
      C3C3C3C3C37F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      1C61022F832355C9713DBD5A39BB5637B9534CC16645B4531F6203FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3
      C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1D6203
      3189275CD77E4DD16F4DD2704BD26F4CD06E47CC6853CF7247BC5B206304FF00
      FFFF00FFFF00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
      C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FFFF00FFFF00FF1C6406328D2A
      63E38B5DDD855FDF8B61E19083EDA964E2915ADD8456D97A5ADA7E4AC4612163
      05FF00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3
      C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FFFF00FF478A3474EFA5
      66E29970E5A672E9AF9EEEC451843B9EE1B472EBAD68E29960DF8C5EE0864BC9
      65216405FF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FC3
      C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FF28640BA3DEB1
      84F1C47CEDC1AEF8D93F7528003D00306912AEECCA7EEFBF71E5A968E2985FE2
      8A4BCC66216305FF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C37F7F7F7F7F7F7F
      7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FF276208
      ACE3BFBBFEE63F7528004000FF00FFFF00FF306913B2EECF85F2C877E8B16BE2
      9D5EE28A46CB6325660AFF00FF7F7F7FC3C3C3C3C3C37F7F7F7F7F7FFF00FFFF
      00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FF
      2864093A7020024400FF00FFFF00FFFF00FFFF00FF306912B4EED087F3CB78E7
      B264E39985ECA638751EFF00FFFF00FF7F7F7F7F7F7F7F7F7FFF00FFFF00FFFF
      00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C3C3C3C3C3C3C37F7F7FFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF306912B4EED185F4
      CC99F2C63E7826105100FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FF7F7F7FC3C3C3C3C3C3C3C3C37F7F7F7F7F7FFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF306912BBEA
      CE3F7A28084D00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF7F7F7FC3C3C37F7F7F7F7F7FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1552003E75
      2224630FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FF7F7F7F7F7F7F7F7F7FFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    NumGlyphs = 2
    TabOrder = 2
    OnClick = btnEntrarClick
  end
  object btnSair: TBitBtn
    Left = 93
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Sair'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF854200824000773A006D350069330069
      34006934006934006934006A34006A34005A2B00FF00FFFF00FFFF00FFAB5400
      CB6500C56100BC5D00B55900AF5700AD5600AE5600AE5600AE5600AE5600B359
      00954A005A2C00FF00FFFF00FFC76300E97300DD6D00D66A00D06700C86300C1
      6000BF5F00BE5E00BF5E00BF5E00C46100B359006A3400FF00FFFF00FFD16800
      ED7602E27102DC6E02D56900D98C3FDA9A5AD6985BCF8C4BC27020BA5C00BF5E
      00AE56006A3400FF00FFFF00FFD66A00F68211EE7B0BE67505DE6E00EFC79FFE
      FEFEFEFEFEFEFEFEFEFEFED19357BF5E00AE5600693400FF00FFFF00FFD66A00
      F89330F48519F07C0BE87402E17307DD7714D77718D2761DE5B98DFEFEFEBF5E
      00AE5600693400FF00FFFF00FFD66A00F9A756F48E29F38111F17C07F7CA9EE4
      7100DE6E00D76A00D27214FEFEFEC66200B157006A3400FF00FFFF00FFD66A00
      F9B36FF49435F38417F9C999FEFEFEEE7600E67200DE6E00E69F5BFEFEFECF66
      00B85B00733900FF00FFFF00FFD66A00FABA7BF5993FFBDBBBFEFEFEFEFEFEFC
      ECDCFBE1C7F9E0C7FEFEFEEEBD8CD96B00C26000824000FF00FFFF00FFD66A00
      FABF85F69F4BFBD8B7FEFEFEFEFEFEFBDEC3F9CA9CF9C99AF2A458E57100E370
      00CD6500904700FF00FFFF00FFD66A00FBC794F7AB61F5973BFACDA1FEFEFEF3
      861BF38417F37E0BF27902EE7600EB7500D76A009E4E00FF00FFFF00FFD66A00
      FBC998F9C490F8B777F7AF69FAD2AAF59C44F49333F38417F27C08F37902F579
      00E27000AB5400FF00FFFF00FFD76A00FBB978FBCA9AFBCC9EFBC794FABE83F9
      B16AF89E46F78D24F6800BF67B02FB7C00EA7400B55A00FF00FFFF00FFFF00FF
      DA7717DE8630DE8833DE8833DD842CDC7F24DA7717D8700BD76C04D66B02D76B
      00C96300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    ModalResult = 8
    TabOrder = 3
  end
  object qryLogin: TFDQuery
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT *'
      'FROM   TESTEARECO.DBO.TAB001'
      'WHERE  TAB001.TLOGIN = :LOGIN  '
      'and tab001.lativo =1')
    Top = 64
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
      end>
    object qryLoginIDUSUARIO: TFDAutoIncField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldLoginTNOMECOMPLETO: TStringField
      FieldName = 'TNOMECOMPLETO'
      Origin = 'TNOMECOMPLETO'
      Required = True
      Size = 100
    end
    object qryLoginLATIVO: TBooleanField
      FieldName = 'LATIVO'
      Origin = 'LATIVO'
      Required = True
    end
    object qryLoginDDATACADASTRO: TDateField
      FieldName = 'DDATACADASTRO'
      Origin = 'DDATACADASTRO'
      Required = True
    end
    object fldLoginTLOGIN: TStringField
      FieldName = 'TLOGIN'
      Origin = 'TLOGIN'
      Required = True
      Size = 50
    end
    object fldLoginTSENHA: TStringField
      FieldName = 'TSENHA'
      Origin = 'TSENHA'
      Required = True
      Size = 100
    end
  end
end
