object frmBuscar: TfrmBuscar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Buscar'
  ClientHeight = 344
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 692
    object edtCampoTexto: TEdit
      Left = 16
      Top = 11
      Width = 369
      Height = 21
      TabOrder = 0
    end
    object cbbCampos: TComboBox
      Left = 399
      Top = 11
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'Selecionar...'
    end
    object btnBuscar: TBitBtn
      Left = 550
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Buscar'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888800000888880000080F000888880F00080F000888880F0008000000080000
        000800F000000F00000800F000800F00000800F000800F000008800000000000
        0088880F00080F000888880000080000088888800088800088888880F08880F0
        888888800088800088888888888888888888}
      TabOrder = 2
      OnClick = btnBuscarClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 49
    Width = 632
    Height = 295
    Align = alClient
    TabOrder = 1
    ExplicitTop = 56
    ExplicitWidth = 682
    ExplicitHeight = 176
    object grdPesquisa: TDBGrid
      Left = 1
      Top = 1
      Width = 630
      Height = 293
      Align = alClient
      DataSource = dsPesquisa
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = grdPesquisaDblClick
    end
  end
  object dsPesquisa: TDataSource
    DataSet = qryPesquisa
    Left = 232
    Top = 153
  end
  object qryPesquisa: TFDQuery
    Connection = ModuloDados.conTeste
    Left = 296
    Top = 153
  end
end
