inherited frmUsuarios: TfrmUsuarios
  Caption = 'Cadstro de Usuarios'
  ClientHeight = 313
  ClientWidth = 393
  ExplicitWidth = 399
  ExplicitHeight = 342
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Left = 300
    Height = 313
    ExplicitLeft = 482
    ExplicitHeight = 359
    inherited dbnvgr1: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnSair: TBitBtn
      Top = 251
      ExplicitTop = 251
    end
  end
  inherited pgcCadastro: TPageControl
    Width = 300
    Height = 313
    ActivePage = tsCadastro
    inherited tsCadastro: TTabSheet
      ExplicitLeft = -236
      ExplicitTop = -32
      ExplicitWidth = 591
      ExplicitHeight = 285
      object lblNomeCompleto: TLabel
        Left = 11
        Top = 69
        Width = 121
        Height = 19
        Caption = 'Nome Completo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLogin: TLabel
        Left = 11
        Top = 94
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
        Left = 11
        Top = 121
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
      object edtTNOMECOMPLETO: TDBEdit
        Left = 138
        Top = 69
        Width = 121
        Height = 21
        DataField = 'TNOMECOMPLETO'
        DataSource = dsPrincipal
        TabOrder = 0
      end
      object chkAtivo: TDBCheckBox
        Left = 204
        Top = 96
        Width = 55
        Height = 17
        Caption = 'Ativo'
        DataField = 'LATIVO'
        DataSource = dsPrincipal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtTLOGIN: TDBEdit
        Left = 77
        Top = 96
        Width = 121
        Height = 21
        DataField = 'TLOGIN'
        DataSource = dsPrincipal
        TabOrder = 2
      end
      object edtTSENHA: TDBEdit
        Left = 77
        Top = 123
        Width = 121
        Height = 21
        DataField = 'TSENHA'
        DataSource = dsPrincipal
        PasswordChar = '*'
        TabOrder = 3
      end
    end
    inherited tsConsulta: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 591
      ExplicitHeight = 402
      inherited grdConsulta: TDBGrid
        Width = 292
        Height = 285
        Columns = <
          item
            Expanded = False
            FieldName = 'IDUSUARIO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TNOMECOMPLETO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DDATACADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TLOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TSENHA'
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    BeforePost = qryPrincipalBeforePost
    AfterScroll = qryPrincipalAfterScroll
    SQL.Strings = (
      'SELECT IDUSUARIO,'
      '       TNOMECOMPLETO,'
      '       LATIVO,'
      '       DDATACADASTRO,'
      '       TLOGIN,'
      '       TSENHA'
      '  FROM testeAreco.dbo.TAB001')
    Left = 236
    Top = 160
    object qryPrincipalIDUSUARIO: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldPrincipalTNOMECOMPLETO: TStringField
      DisplayLabel = 'Nome Completo'
      FieldName = 'TNOMECOMPLETO'
      Origin = 'TNOMECOMPLETO'
      Required = True
      Size = 100
    end
    object qryPrincipalLATIVO: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'LATIVO'
      Origin = 'LATIVO'
      Required = True
    end
    object qryPrincipalDDATACADASTRO: TDateField
      DisplayLabel = 'Data de Cadastro'
      FieldName = 'DDATACADASTRO'
      Origin = 'DDATACADASTRO'
      Required = True
    end
    object fldPrincipalTLOGIN: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'TLOGIN'
      Origin = 'TLOGIN'
      Required = True
      Size = 50
    end
    object fldPrincipalTSENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'TSENHA'
      Origin = 'TSENHA'
      Required = True
      Size = 100
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 180
    Top = 160
  end
end
