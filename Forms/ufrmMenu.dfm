object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'TesteAreco'
  ClientHeight = 241
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object mmuPrincipal: TMainMenu
    Left = 272
    Top = 112
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Fornecedores2: TMenuItem
        Caption = 'F&ornecedores'
        OnClick = Fornecedores2Click
      end
      object Fabricantes1: TMenuItem
        Caption = 'F&abricantes'
        OnClick = Fabricantes1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Produtos1: TMenuItem
        Caption = '&Produtos'
        OnClick = Produtos1Click
      end
    end
    object Configuraes1: TMenuItem
      Caption = 'Con&figura'#231#245'es'
      object Usuarios1: TMenuItem
        Caption = '&Usuarios'
        OnClick = Usuarios1Click
      end
      object Estados1: TMenuItem
        Caption = '&Estados'
        OnClick = Estados1Click
      end
      object CadastrosdeProdutos1: TMenuItem
        Caption = 'Cadastros de Produtos'
        object Grupos1: TMenuItem
          Caption = '&Grupos'
          OnClick = Grupos1Click
        end
        object Unidades1: TMenuItem
          Caption = '&Unidades'
          OnClick = Unidades1Click
        end
      end
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      object Finalizar1: TMenuItem
        Caption = '&Finalizar'
        OnClick = Finalizar1Click
      end
      object rocardeUsuario1: TMenuItem
        Caption = '&Trocar de Usuario'
        OnClick = rocardeUsuario1Click
      end
    end
  end
end
