inherited frmEstados: TfrmEstados
  Caption = 'Cadastro de Estados'
  ClientHeight = 220
  ExplicitHeight = 249
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TPageControl
    Height = 220
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 28
      ExplicitWidth = 567
      ExplicitHeight = 192
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
      inherited pnl1: TPanel
        Left = 376
        Width = 191
        Height = 192
        ExplicitLeft = 376
        ExplicitWidth = 191
        ExplicitHeight = 192
        inherited btnNovo: TBitBtn
          Left = 98
          ExplicitLeft = 98
        end
        inherited dbnvgr1: TDBNavigator
          Left = 8
          Width = 172
          Hints.Strings = ()
          ExplicitLeft = 8
          ExplicitWidth = 172
        end
        inherited btnBuscar: TBitBtn
          Left = 8
          Width = 177
          ExplicitLeft = 8
          ExplicitWidth = 177
        end
        inherited btnAlterar: TBitBtn
          Left = 98
          ExplicitLeft = 98
        end
        inherited btnExcluir: TBitBtn
          Left = 98
          ExplicitLeft = 98
        end
        inherited btnGravar: TBitBtn
          Left = 5
          Top = 96
          ExplicitLeft = 5
          ExplicitTop = 96
        end
        inherited btnCancelar: TBitBtn
          Left = 5
          Top = 127
          ExplicitLeft = 5
          ExplicitTop = 127
        end
        inherited btnSair: TBitBtn
          Left = 5
          Top = 158
          ExplicitLeft = 5
          ExplicitTop = 158
        end
      end
      object edtTDESCRICAO: TDBEdit
        Left = 122
        Top = 77
        Width = 121
        Height = 21
        DataField = 'TNOME'
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
      inherited grdConsulta: TDBGrid
        Height = 192
        Columns = <
          item
            Expanded = False
            FieldName = 'IDESTADO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TNOME'
            Width = 482
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TSIGLA'
            Width = 60
            Visible = True
          end>
      end
    end
  end
  inherited qryPrincipal: TFDQuery
    BeforePost = qryPrincipalBeforePost
    SQL.Strings = (
      'SELECT IDESTADO,'
      '       TNOME,'
      '       TSIGLA'
      '  FROM testeAreco.dbo.TAB003')
    Left = 308
    Top = 72
    object qryPrincipalIDESTADO: TFDAutoIncField
      DisplayLabel = 'Chave'
      FieldName = 'IDESTADO'
      Origin = 'IDESTADO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fldPrincipalTNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'TNOME'
      Origin = 'TNOME'
      Required = True
      Size = 50
    end
    object fldPrincipalTSIGLA: TStringField
      DisplayLabel = 'UF'
      FieldName = 'TSIGLA'
      Origin = 'TSIGLA'
      Required = True
      Size = 2
    end
  end
end
