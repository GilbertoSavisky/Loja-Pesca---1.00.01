object frmVendas: TfrmVendas
  Left = 233
  Top = 158
  Caption = 'Registro de Vendas'
  ClientHeight = 883
  ClientWidth = 1442
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Microsoft Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 20
  object lblVendas: TLabel
    Left = 632
    Top = 88
    Width = 115
    Height = 37
    Caption = 'Vendas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 16
    Top = 72
    Width = 73
    Height = 20
    Caption = 'Pesquisa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel3: TPanel
    Left = 512
    Top = 448
    Width = 785
    Height = 209
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 632
    Top = 128
    Width = 657
    Height = 289
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 1
    object lblNrVenda: TLabel
      Left = 40
      Top = 24
      Width = 115
      Height = 20
      Caption = 'Nro da Venda:'
    end
    object lblDtVenda: TLabel
      Left = 32
      Top = 72
      Width = 126
      Height = 20
      Caption = 'Data da Venda:'
    end
    object lblCodCliente: TLabel
      Left = 32
      Top = 120
      Width = 128
      Height = 20
      Caption = 'C'#243'd. do Cliente:'
    end
    object lblCodVendedor: TLabel
      Left = 8
      Top = 160
      Width = 150
      Height = 20
      Caption = 'C'#243'd. do Vendedor:'
    end
    object DBText1: TDBText
      Left = 176
      Top = 120
      Width = 65
      Height = 17
      DataField = 'CDCLIENTE'
    end
    object DBText2: TDBText
      Left = 176
      Top = 160
      Width = 65
      Height = 17
      DataField = 'CDVENDEDOR'
    end
    object btPrimeiro: TBitBtn
      Left = 32
      Top = 224
      Width = 90
      Height = 35
      Caption = 'Primeiro'
      TabOrder = 0
      OnClick = btPrimeiroClick
    end
    object btAnterior: TBitBtn
      Left = 128
      Top = 224
      Width = 90
      Height = 35
      Caption = 'Anterior'
      TabOrder = 1
      OnClick = btAnteriorClick
    end
    object btProximo: TBitBtn
      Left = 224
      Top = 224
      Width = 90
      Height = 35
      Caption = 'Pr'#243'ximo'
      TabOrder = 2
      OnClick = btProximoClick
    end
    object btUltimo: TBitBtn
      Left = 320
      Top = 224
      Width = 90
      Height = 35
      Caption = #218'ltimo'
      TabOrder = 3
      OnClick = btUltimoClick
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 248
      Top = 112
      Width = 145
      Height = 28
      DataField = 'CDCLIENTE'
      KeyField = 'CDCLIENTE'
      ListField = 'DCCLIENTE'
      TabOrder = 4
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 248
      Top = 152
      Width = 145
      Height = 28
      DataField = 'CDVENDEDOR'
      KeyField = 'CDVENDEDOR'
      ListField = 'DCVENDEDOR'
      TabOrder = 5
    end
    object edNrVenda: TDBEdit
      Left = 176
      Top = 16
      Width = 121
      Height = 28
      DataField = 'NRVENDA'
      TabOrder = 6
    end
    object edDtVEnda: TDBEdit
      Left = 176
      Top = 64
      Width = 121
      Height = 28
      DataField = 'DTVENDA'
      TabOrder = 7
    end
    object dataTime: TDateTimePicker
      Left = 512
      Top = 16
      Width = 129
      Height = 28
      Date = 41220.732457002310000000
      Time = 41220.732457002310000000
      TabOrder = 8
    end
    object btInserirVenda: TBitBtn
      Left = 456
      Top = 120
      Width = 90
      Height = 35
      Caption = 'Inserir'
      TabOrder = 9
      OnClick = btInserirVendaClick
    end
    object btAlterarVenda: TBitBtn
      Left = 552
      Top = 120
      Width = 90
      Height = 35
      Caption = 'Alterar'
      TabOrder = 10
      OnClick = btAlterarVendaClick
    end
    object btGravarVenda: TBitBtn
      Left = 552
      Top = 168
      Width = 90
      Height = 35
      Caption = 'Gravar'
      Enabled = False
      TabOrder = 11
      OnClick = btGravarVendaClick
    end
    object btExcluirVenda: TBitBtn
      Left = 456
      Top = 168
      Width = 90
      Height = 35
      Caption = 'Excluir'
      TabOrder = 12
      OnClick = btExcluirVendaClick
    end
    object btCancelarVenda: TBitBtn
      Left = 456
      Top = 216
      Width = 90
      Height = 35
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 13
      OnClick = btCancelarVendaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 528
    Top = 464
    Width = 753
    Height = 137
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -16
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object Panel2: TPanel
    Left = 880
    Top = 672
    Width = 249
    Height = 121
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    object lblTotalVenda: TLabel
      Left = 48
      Top = 24
      Width = 127
      Height = 20
      Caption = 'Total da Venda:'
    end
    object btCalcular: TBitBtn
      Left = 56
      Top = 56
      Width = 120
      Height = 35
      Caption = 'Calcular'
      TabOrder = 0
    end
  end
  object btSair: TBitBtn
    Left = 1136
    Top = 672
    Width = 153
    Height = 89
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btSairClick
  end
  object DBGrid2: TDBGrid
    Left = 16
    Top = 144
    Width = 457
    Height = 529
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -16
    TitleFont.Name = 'Microsoft Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'CDPRODUTO'
        Title.Caption = 'C'#243'digo'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DCPRODUTO'
        Title.Caption = 'Produto'
        Width = 255
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLPRODUTO'
        Title.Caption = 'Valor'
        Width = 100
        Visible = True
      end>
  end
  object edPesquisa: TEdit
    Left = 16
    Top = 104
    Width = 457
    Height = 28
    TabOrder = 6
    OnChange = edPesquisaChange
  end
  object btCancelar: TBitBtn
    Left = 648
    Top = 792
    Width = 90
    Height = 35
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 7
  end
  object btInserir: TBitBtn
    Left = 648
    Top = 696
    Width = 90
    Height = 35
    Caption = 'Inserir'
    TabOrder = 8
    OnClick = btInserirClick
  end
  object btAlterar: TBitBtn
    Left = 744
    Top = 696
    Width = 90
    Height = 35
    Caption = 'Alterar'
    TabOrder = 9
  end
  object btGravar: TBitBtn
    Left = 744
    Top = 744
    Width = 90
    Height = 35
    Caption = 'Gravar'
    Enabled = False
    TabOrder = 10
    OnClick = btGravarClick
  end
  object btExcluir: TBitBtn
    Left = 648
    Top = 744
    Width = 90
    Height = 35
    Caption = 'Excluir'
    TabOrder = 11
  end
end
