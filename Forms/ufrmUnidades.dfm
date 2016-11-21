inherited frmUnidades: TfrmUnidades
  Caption = 'Cadastro de Unidades'
  ClientHeight = 219
  ExplicitHeight = 248
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    Height = 219
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 40
      ExplicitWidth = 567
      ExplicitHeight = 191
      object lblDescricao: TLabel [0]
        Left = 43
        Top = 75
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
      object lblSigla: TLabel [1]
        Left = 43
        Top = 100
        Width = 40
        Height = 19
        Caption = 'Sigla:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited pnl1: TPanel
        Left = 376
        Width = 191
        Height = 191
        ExplicitLeft = 376
        ExplicitWidth = 191
        ExplicitHeight = 348
        inherited btnNovo: TBitBtn
          Left = 5
          Top = 100
          ExplicitLeft = 5
          ExplicitTop = 100
        end
        inherited dbnvgr1: TDBNavigator
          Left = 8
          Top = 69
          Width = 176
          Hints.Strings = ()
          ExplicitLeft = 8
          ExplicitTop = 69
          ExplicitWidth = 176
        end
        inherited btnBuscar: TBitBtn
          Left = 8
          Top = 12
          Width = 177
          ExplicitLeft = 8
          ExplicitTop = 12
          ExplicitWidth = 177
        end
        inherited btnAlterar: TBitBtn
          Left = 5
          Top = 131
          ExplicitLeft = 5
          ExplicitTop = 131
        end
        inherited btnExcluir: TBitBtn
          Left = 5
          Top = 162
          ExplicitLeft = 5
          ExplicitTop = 162
        end
        inherited btnGravar: TBitBtn
          Left = 98
          Top = 98
          ExplicitLeft = 98
          ExplicitTop = 98
        end
        inherited btnCancelar: TBitBtn
          Left = 98
          Top = 131
          ExplicitLeft = 98
          ExplicitTop = 131
        end
        inherited btnSair: TBitBtn
          Left = 98
          Top = 162
          ExplicitLeft = 98
          ExplicitTop = 162
        end
      end
      object edtTDESCRICAO: TDBEdit
        Left = 122
        Top = 77
        Width = 121
        Height = 21
        DataField = 'TDESCRICAO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
      object edtTSIGLA: TDBEdit
        Left = 122
        Top = 104
        Width = 121
        Height = 21
        DataField = 'TSIGLA'
        DataSource = dsPrincipal
        TabOrder = 2
      end
    end
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 567
      inherited grdConsulta: TDBGrid
        Height = 191
        Columns = <
          item
            Expanded = False
            FieldName = 'IDUNIDADE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TDESCRICAO'
            Width = 483
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TSIGLA'
            Width = 52
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    Active = True
    BeforePost = qryPrincipalBeforePost
    SQL.Strings = (
      'SELECT IDUNIDADE,'
      '       TDESCRICAO,'
      '       TSIGLA'
      '  FROM testeAreco.dbo.TAB002')
    Top = 72
    object qryPrincipalIDUNIDADE: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDUNIDADE'
      Origin = 'IDUNIDADE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldPrincipalTDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TDESCRICAO'
      Origin = 'TDESCRICAO'
      Required = True
      Size = 50
    end
    object fldPrincipalTSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'TSIGLA'
      Origin = 'TSIGLA'
      Required = True
      Size = 2
    end
  end
  inherited dsPrincipal: TDataSource
    Left = 108
    Top = 80
  end
end
