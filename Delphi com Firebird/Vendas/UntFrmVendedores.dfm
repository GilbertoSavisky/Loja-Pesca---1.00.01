object frmVendedores: TfrmVendedores
  Left = 506
  Top = 170
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 690
  ClientWidth = 1185
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 20
  object lblCodVendedor: TLabel
    Left = 269
    Top = 157
    Width = 169
    Height = 20
    Caption = 'C'#243'digo do Vendedor:'
  end
  object lblNomeVendedor: TLabel
    Left = 269
    Top = 245
    Width = 159
    Height = 20
    Caption = 'Nome do Vendedor:'
  end
  object DBGridVendedores: TDBGrid
    Left = 237
    Top = 341
    Width = 721
    Height = 136
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object btInserir: TBitBtn
    Left = 661
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = btInserirClick
  end
  object btAlterar: TBitBtn
    Left = 765
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = btAlterarClick
  end
  object btExcluir: TBitBtn
    Left = 869
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btExcluirClick
  end
  object btGravar: TBitBtn
    Left = 661
    Top = 541
    Width = 90
    Height = 35
    Caption = 'Gravar'
    Enabled = False
    TabOrder = 4
    OnClick = btGravarClick
  end
  object btCancelar: TBitBtn
    Left = 765
    Top = 541
    Width = 90
    Height = 35
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 5
    OnClick = btCancelarClick
  end
  object btSair: TBitBtn
    Left = 869
    Top = 541
    Width = 90
    Height = 35
    Caption = 'Sair'
    TabOrder = 6
    OnClick = btSairClick
  end
  object btPrimeiro: TBitBtn
    Left = 237
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Primeiro'
    TabOrder = 7
    OnClick = btPrimeiroClick
  end
  object btAnterior: TBitBtn
    Left = 333
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Anterior'
    TabOrder = 8
    OnClick = btAnteriorClick
  end
  object btProximo: TBitBtn
    Left = 429
    Top = 493
    Width = 90
    Height = 35
    Caption = 'Pr'#243'ximo'
    TabOrder = 9
    OnClick = btProximoClick
  end
  object btUltimo: TBitBtn
    Left = 525
    Top = 493
    Width = 90
    Height = 35
    Caption = #218'ltimo'
    TabOrder = 10
    OnClick = btUltimoClick
  end
  object edCodigo: TDBEdit
    Left = 445
    Top = 149
    Width = 121
    Height = 28
    Color = clMoneyGreen
    DataField = 'CDVENDEDOR'
    Enabled = False
    TabOrder = 11
  end
  object edNome: TDBEdit
    Left = 437
    Top = 237
    Width = 513
    Height = 28
    DataField = 'DCVENDEDOR'
    TabOrder = 12
  end
end
