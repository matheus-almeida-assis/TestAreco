inherited frmGrupo: TfrmGrupo
  Caption = 'Cadastro de Grupos'
  ClientHeight = 218
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    Height = 218
    ExplicitWidth = 575
    inherited tsCadastro: TTabSheet
      ExplicitLeft = -12
      ExplicitTop = -8
      ExplicitWidth = 567
      ExplicitHeight = 190
      object lblDescricao: TLabel [0]
        Left = 11
        Top = 66
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
      inherited pnl1: TPanel
        Left = 368
        Width = 199
        Height = 190
        ExplicitLeft = 368
        ExplicitWidth = 199
        ExplicitHeight = 331
        inherited btnNovo: TBitBtn
          Left = 106
          ExplicitLeft = 106
        end
        inherited dbnvgr1: TDBNavigator
          Left = 16
          Width = 172
          Hints.Strings = ()
          ExplicitLeft = 16
          ExplicitWidth = 172
        end
        inherited btnBuscar: TBitBtn
          Left = 8
          Width = 185
          ExplicitLeft = 8
          ExplicitWidth = 185
        end
        inherited btnAlterar: TBitBtn
          Left = 106
          ExplicitLeft = 106
        end
        inherited btnExcluir: TBitBtn
          Left = 106
          ExplicitLeft = 106
        end
        inherited btnGravar: TBitBtn
          Left = 10
          Top = 96
          ExplicitLeft = 10
          ExplicitTop = 96
        end
        inherited btnCancelar: TBitBtn
          Left = 10
          Top = 127
          ExplicitLeft = 10
          ExplicitTop = 127
        end
        inherited btnSair: TBitBtn
          Left = 10
          Top = 158
          ExplicitLeft = 10
          ExplicitTop = 158
        end
      end
      object edtTDESCRICAO: TDBEdit
        Left = 90
        Top = 68
        Width = 263
        Height = 21
        DataField = 'TDESCRICAO'
        DataSource = dsPrincipal
        TabOrder = 1
      end
    end
    inherited tsConsulta: TTabSheet
      ExplicitWidth = 567
      inherited grdConsulta: TDBGrid
        Height = 190
        Columns = <
          item
            Expanded = False
            FieldName = 'IDGRUPO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TDESCRICAO'
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    SQL.Strings = (
      'SELECT IDGRUPO,'
      '       TDESCRICAO'
      '  FROM testeAreco.dbo.TAB006')
    Left = 260
    Top = 48
    object qryPrincipalIDGRUPO: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDGRUPO'
      Origin = 'IDGRUPO'
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
  end
  inherited dsPrincipal: TDataSource
    Left = 204
    Top = 48
  end
end
