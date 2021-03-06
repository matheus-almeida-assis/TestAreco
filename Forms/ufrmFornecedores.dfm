inherited frmFornecedores: TfrmFornecedores
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 314
  ExplicitHeight = 343
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    Height = 314
    ExplicitHeight = 314
    inherited tsCadastro: TTabSheet
      object lblNomeCompleto: TLabel [0]
        Left = 11
        Top = 54
        Width = 73
        Height = 19
        Caption = 'Descri'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblLogradouro: TLabel [1]
        Left = 11
        Top = 79
        Width = 88
        Height = 19
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCidade: TLabel [2]
        Left = 11
        Top = 104
        Width = 54
        Height = 19
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblUF: TLabel [3]
        Left = 349
        Top = 112
        Width = 25
        Height = 19
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel [4]
        Left = 11
        Top = 135
        Width = 43
        Height = 19
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel [5]
        Left = 191
        Top = 137
        Width = 21
        Height = 19
        Caption = 'IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTelefone: TLabel [6]
        Left = 11
        Top = 160
        Width = 67
        Height = 19
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel [7]
        Left = 179
        Top = 162
        Width = 30
        Height = 19
        Caption = 'Fax:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblCep: TLabel [8]
        Left = 340
        Top = 87
        Width = 34
        Height = 19
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblContato: TLabel [9]
        Left = 11
        Top = 193
        Width = 61
        Height = 19
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblEmail: TLabel [10]
        Left = 12
        Top = 218
        Width = 51
        Height = 19
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited pnl1: TPanel
        Height = 286
        ExplicitHeight = 286
        inherited dbnvgr1: TDBNavigator
          Hints.Strings = ()
        end
        inherited btnSair: TBitBtn
          Top = 251
          ExplicitTop = 251
        end
      end
      object edtTDescricao: TDBEdit
        Left = 90
        Top = 56
        Width = 239
        Height = 21
        DataField = 'TDESCRICAO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
      object edtTLOGRADOURO: TDBEdit
        Left = 105
        Top = 83
        Width = 224
        Height = 21
        DataField = 'TLOGRADOURO'
        DataSource = dsPrincipal
        TabOrder = 2
      end
      object edtCidade: TDBEdit
        Left = 71
        Top = 110
        Width = 258
        Height = 21
        DataField = 'TCIDADE'
        DataSource = dsPrincipal
        TabOrder = 3
      end
      object cbbEstado: TDBLookupComboBox
        Left = 380
        Top = 110
        Width = 90
        Height = 21
        DataField = 'NESTADO'
        DataSource = dsPrincipal
        ListField = 'TSIGLA'
        ListSource = dsEstados
        TabOrder = 4
      end
      object mskdCNPJ: TMaskEdit
        Left = 71
        Top = 137
        Width = 114
        Height = 21
        EditMask = '00.000.000/0000-00;1;_'
        MaxLength = 18
        TabOrder = 5
        Text = '  .   .   /    -  '
      end
      object mskdIE: TMaskEdit
        Left = 215
        Top = 137
        Width = 114
        Height = 21
        EditMask = '999999999-0!;1;_'
        MaxLength = 11
        TabOrder = 6
        Text = '         - '
      end
      object mskdTelefone: TMaskEdit
        Left = 84
        Top = 164
        Width = 89
        Height = 21
        EditMask = '!\(99\)0000-0000;1;_'
        MaxLength = 13
        TabOrder = 7
        Text = '(  )    -    '
      end
      object mskdFax: TMaskEdit
        Left = 215
        Top = 164
        Width = 114
        Height = 21
        EditMask = '!\(99\)0000-0000;1;_'
        MaxLength = 13
        TabOrder = 8
        Text = '(  )    -    '
      end
      object mskdCep: TMaskEdit
        Left = 380
        Top = 85
        Width = 90
        Height = 21
        EditMask = '00000\-9999;1;_'
        MaxLength = 10
        TabOrder = 9
        Text = '     -    '
      end
      object edtTCONTATO: TDBEdit
        Left = 84
        Top = 191
        Width = 245
        Height = 21
        DataField = 'TCONTATO'
        DataSource = dsPrincipal
        TabOrder = 10
      end
      object edtTEMAIL: TDBEdit
        Left = 84
        Top = 218
        Width = 245
        Height = 21
        DataField = 'TEMAIL'
        DataSource = dsPrincipal
        TabOrder = 11
      end
    end
    inherited tsConsulta: TTabSheet
      inherited grdConsulta: TDBGrid
        Height = 286
        Columns = <
          item
            Expanded = False
            FieldName = 'IDFORNECEDOR'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TDESCRICAO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TLOGRADOURO'
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NESTADO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCNPJ'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TTELEFONE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TFAX'
            Width = 1000
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCIDADE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TCONTATO'
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TEMAIL'
            Width = 600
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    Active = True
    BeforePost = qryPrincipalBeforePost
    SQL.Strings = (
      'SELECT IDFORNECEDOR,'
      '       TDESCRICAO,'
      '       TLOGRADOURO,'
      '       NESTADO, '
      '       TCNPJ, '
      '       TIE,'
      '       TTELEFONE,'
      '       TFAX,'
      '       TCEP,'
      '       TCIDADE,'
      '       TCONTATO,'
      '       TEMAIL'
      '  FROM testeAreco.dbo.TAB004')
    Top = 24
    object qryPrincipalIDFORNECEDOR: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldPrincipalTDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 100
    end
    object fldPrincipalTLOGRADOURO: TStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'TLOGRADOURO'
      Origin = 'TLOGRADOURO'
      Required = True
      Size = 200
    end
    object qryPrincipalNESTADO: TIntegerField
      DisplayLabel = 'ChEstado'
      FieldName = 'NESTADO'
      Origin = 'NESTADO'
      Required = True
    end
    object fldPrincipalTCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'TCNPJ'
      Origin = 'TCNPJ'
      Required = True
    end
    object fldPrincipalTIE: TStringField
      DisplayLabel = 'IE'
      FieldName = 'TIE'
      Origin = 'TIE'
      Required = True
    end
    object fldPrincipalTTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TTELEFONE'
      Origin = 'TTELEFONE'
      Required = True
    end
    object fldPrincipalTFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'TFAX'
      Origin = 'TFAX'
    end
    object fldPrincipalTCEP: TStringField
      DisplayLabel = 'Cep'
      FieldName = 'TCEP'
      Origin = 'TCEP'
      Required = True
      Size = 10
    end
    object fldPrincipalTCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'TCIDADE'
      Origin = 'TCIDADE'
      Required = True
      Size = 50
    end
    object fldPrincipalTCONTATO: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'TCONTATO'
      Origin = 'TCONTATO'
      Required = True
      Size = 100
    end
    object fldPrincipalTEMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'TEMAIL'
      Origin = 'TEMAIL'
      Size = 200
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 268
    Top = 24
  end
  object qryEstados: TFDQuery
    Active = True
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT IDESTADO,'
      '             TSIGLA'
      '  FROM testeAreco.dbo.TAB003')
    Left = 408
    Top = 176
    object qryEstadosIDESTADO: TFDAutoIncField
      FieldName = 'IDESTADO'
      Origin = 'IDESTADO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldEstadosTSIGLA: TStringField
      FieldName = 'TSIGLA'
      Origin = 'TSIGLA'
      Required = True
      Size = 2
    end
  end
  object dsEstados: TDataSource
    DataSet = qryEstados
    Left = 348
    Top = 168
  end
end
