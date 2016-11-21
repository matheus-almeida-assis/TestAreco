inherited frmProdutos: TfrmProdutos
  Caption = 'Cadastro de Produtos'
  ClientHeight = 310
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    Height = 310
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 28
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
      object lblCodBarras: TLabel [1]
        Left = 11
        Top = 25
        Width = 88
        Height = 19
        Caption = 'Cod. Barras:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblGrupo: TLabel [2]
        Left = 15
        Top = 79
        Width = 50
        Height = 19
        Caption = 'Grupo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblFabricante: TLabel [3]
        Left = 15
        Top = 106
        Width = 78
        Height = 19
        Caption = 'Fabricante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl1: TLabel [4]
        Left = 15
        Top = 135
        Width = 85
        Height = 19
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblUsuario: TLabel [5]
        Left = 3
        Top = 251
        Width = 71
        Height = 19
        Caption = 'lblUsuario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblPreco: TLabel [6]
        Left = 15
        Top = 160
        Width = 45
        Height = 19
        Caption = 'Pre'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited pnl1: TPanel
        Height = 282
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
        Width = 210
        Height = 21
        DataField = 'TDESCRICAO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
      object edtCodigoBarras: TDBEdit
        Left = 105
        Top = 29
        Width = 195
        Height = 21
        DataField = 'TCODIGOBARRAS'
        DataSource = dsPrincipal
        TabOrder = 2
      end
      object cbbGrupo: TDBLookupComboBox
        Left = 90
        Top = 83
        Width = 210
        Height = 21
        DataField = 'NGRUPO'
        DataSource = dsPrincipal
        ListField = 'TDESCRICAO'
        ListSource = dsGrupo
        TabOrder = 3
      end
      object cbbFabricante: TDBLookupComboBox
        Left = 99
        Top = 110
        Width = 201
        Height = 21
        DataField = 'NGRUPO'
        DataSource = dsPrincipal
        ListField = 'TDESCRICAO'
        ListSource = dsFabricante
        TabOrder = 4
      end
      object cbbFornecedor: TDBLookupComboBox
        Left = 106
        Top = 139
        Width = 194
        Height = 21
        DataField = 'NGRUPO'
        DataSource = dsPrincipal
        ListField = 'TDESCRICAO'
        ListSource = dsFornecedor
        TabOrder = 5
      end
      object grpEstoque: TGroupBox
        Left = 306
        Top = 25
        Width = 162
        Height = 176
        Caption = 'Estoque'
        TabOrder = 6
        object lblAtual: TLabel
          Left = 3
          Top = 65
          Width = 43
          Height = 19
          Caption = 'Atual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 3
          Top = 90
          Width = 31
          Height = 19
          Caption = 'Min:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 3
          Top = 115
          Width = 34
          Height = 19
          Caption = 'Max:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 3
          Top = 140
          Width = 28
          Height = 19
          Caption = 'UN:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object chkLMOVIMENTAESTOQUE: TDBCheckBox
          Left = 3
          Top = 40
          Width = 162
          Height = 17
          Caption = 'Movimenta Estoque'
          DataField = 'LMOVIMENTAESTOQUE'
          DataSource = dsPrincipal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object chkLATIVO: TDBCheckBox
          Left = 3
          Top = 17
          Width = 97
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
        object mskdEstoque: TMaskEdit
          Left = 49
          Top = 63
          Width = 109
          Height = 21
          EditMask = '0.00;1'
          MaxLength = 4
          TabOrder = 2
          Text = ' .  '
        end
        object mskdEstoqueMin: TMaskEdit
          Left = 49
          Top = 90
          Width = 109
          Height = 21
          EditMask = '0.00;1'
          MaxLength = 4
          TabOrder = 3
          Text = ' .  '
        end
        object mskdEstoqueMax: TMaskEdit
          Left = 49
          Top = 117
          Width = 110
          Height = 21
          EditMask = '0.00;1'
          MaxLength = 4
          TabOrder = 4
          Text = ' .  '
        end
        object cbbUnidade: TDBLookupComboBox
          Left = 48
          Top = 144
          Width = 111
          Height = 21
          DataField = 'NUNIDADE'
          DataSource = dsPrincipal
          ListField = 'TSIGLA'
          ListSource = dsUnidade
          TabOrder = 5
        end
      end
      object mskdPreco: TMaskEdit
        Left = 106
        Top = 167
        Width = 192
        Height = 21
        EditMask = 'R$0.00;1'
        MaxLength = 6
        TabOrder = 7
        Text = 'R$ .  '
      end
    end
    inherited tsConsulta: TTabSheet
      inherited grdConsulta: TDBGrid
        Height = 282
        Columns = <
          item
            Expanded = False
            FieldName = 'IDPRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TCODIGOBARRAS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TDESCRICAO'
            Width = 600
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NGRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFABRICANTE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFORNECEDOR'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LMOVIMENTAESTOQUE'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FESTOQUE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUNIDADE'
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FESTOQUEMIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FESTOQUEMAX'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUSUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPRECO'
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    Active = True
    BeforePost = qryPrincipalBeforePost
    SQL.Strings = (
      'SELECT IDPRODUTO,'
      '       TCODIGOBARRAS'
      '      ,TDESCRICAO'
      '      ,NGRUPO'
      '      ,NFABRICANTE'
      '      ,NFORNECEDOR'
      '      ,LATIVO'
      '      ,LMOVIMENTAESTOQUE'
      '      ,FESTOQUE'
      '      ,NUNIDADE'
      '      ,FESTOQUEMIN'
      '      ,FESTOQUEMAX'
      '      ,DATACADASTRO'
      '      ,NUSUARIO,'
      '       FPRECO'
      '  FROM testeAreco.dbo.TAB007')
    Left = 276
    Top = 240
    object qryPrincipalIDPRODUTO: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldPrincipalTCODIGOBARRAS: TStringField
      DisplayLabel = 'Codigo de Barras'
      FieldName = 'TCODIGOBARRAS'
      Origin = 'TCODIGOBARRAS'
    end
    object fldPrincipalTDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 200
    end
    object qryPrincipalNGRUPO: TIntegerField
      DisplayLabel = 'CHGrupo'
      FieldName = 'NGRUPO'
      Origin = 'NGRUPO'
      Required = True
    end
    object qryPrincipalNFABRICANTE: TIntegerField
      DisplayLabel = 'CHFabricante'
      FieldName = 'NFABRICANTE'
      Origin = 'NFABRICANTE'
      Required = True
    end
    object qryPrincipalNFORNECEDOR: TIntegerField
      DisplayLabel = 'CHFornecedor'
      FieldName = 'NFORNECEDOR'
      Origin = 'NFORNECEDOR'
      Required = True
    end
    object qryPrincipalLATIVO: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'LATIVO'
      Origin = 'LATIVO'
      Required = True
    end
    object qryPrincipalLMOVIMENTAESTOQUE: TIntegerField
      DisplayLabel = 'Movimenta Estoque'
      FieldName = 'LMOVIMENTAESTOQUE'
      Origin = 'LMOVIMENTAESTOQUE'
      Required = True
    end
    object qryPrincipalFESTOQUE: TFloatField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'FESTOQUE'
      Origin = 'FESTOQUE'
      Required = True
    end
    object qryPrincipalNUNIDADE: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'NUNIDADE'
      Origin = 'NUNIDADE'
      Required = True
    end
    object qryPrincipalFESTOQUEMIN: TFloatField
      DisplayLabel = 'Estoque Min'
      FieldName = 'FESTOQUEMIN'
      Origin = 'FESTOQUEMIN'
    end
    object qryPrincipalFESTOQUEMAX: TFloatField
      DisplayLabel = 'Estoque Max'
      FieldName = 'FESTOQUEMAX'
      Origin = 'FESTOQUEMAX'
    end
    object qryPrincipalDATACADASTRO: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DATACADASTRO'
      Origin = 'DATACADASTRO'
      Required = True
    end
    object qryPrincipalNUSUARIO: TIntegerField
      DisplayLabel = 'Usuario'
      FieldName = 'NUSUARIO'
      Origin = 'NUSUARIO'
      Required = True
    end
    object qryPrincipalFPRECO: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'FPRECO'
      Origin = 'FPRECO'
      Required = True
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 428
    Top = 288
  end
  object qryGrupo: TFDQuery
    Active = True
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT IDGRUPO,'
      '       TDESCRICAO'
      '  FROM testeAreco.dbo.TAB006')
    Left = 364
    Top = 240
    object qryGrupoIDGRUPO: TFDAutoIncField
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldGrupoTDESCRICAO: TStringField
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsGrupo: TDataSource
    DataSet = qryGrupo
    Left = 316
    Top = 240
  end
  object qryFabricante: TFDQuery
    Active = True
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT IDFABRICANTE,'
      '       TDESCRICAO'
      ' FROM testeAreco.dbo.TAB005')
    Left = 428
    Top = 240
    object qryFabricanteIDFABRICANTE: TFDAutoIncField
      FieldName = 'IDFABRICANTE'
      Origin = 'IDFABRICANTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldFabricanteTDESCRICAO: TStringField
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsFabricante: TDataSource
    DataSet = qryFabricante
    Left = 308
    Top = 296
  end
  object qryFornecedor: TFDQuery
    Active = True
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT IDFORNECEDOR,'
      '       TDESCRICAO'
      ' FROM testeAreco.dbo.TAB004'
      '')
    Left = 252
    Top = 296
    object qryFornecedorIDFORNECEDOR: TFDAutoIncField
      FieldName = 'IDFORNECEDOR'
      Origin = 'IDFORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldFornecedorTDESCRICAO: TStringField
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 100
    end
  end
  object dsFornecedor: TDataSource
    DataSet = qryFornecedor
    Left = 364
    Top = 288
  end
  object qryUnidade: TFDQuery
    Connection = ModuloDados.conTeste
    SQL.Strings = (
      'SELECT IDUNIDADE,'
      '       TSIGLA'
      '  FROM testeAreco.dbo.TAB002'
      '')
    Left = 196
    Top = 240
    object qryUnidadeIDUNIDADE: TFDAutoIncField
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldUnidadeTSIGLA: TStringField
      FieldName = 'TSIGLA'
      Origin = 'TSIGLA'
      Required = True
      Size = 2
    end
  end
  object dsUnidade: TDataSource
    DataSet = qryUnidade
    Left = 140
    Top = 240
  end
  object qryUsuario: TFDQuery
    SQL.Strings = (
      'SELECT *'
      'FROM   TESTEARECO.DBO.TAB001'
      'WHERE  TAB001.IDUSUARIO :idusario  ')
    Left = 12
    Top = 232
    ParamData = <
      item
        Name = 'IDUSARIO'
        ParamType = ptInput
      end>
  end
end
