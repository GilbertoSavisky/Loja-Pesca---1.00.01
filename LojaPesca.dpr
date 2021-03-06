program LojaPesca;

uses
  Forms,
  Windows,
  untSistemaVendas in 'untSistemaVendas.pas' {frmSistemaVendas},
  untControlador in 'untControlador.pas',
  untVendasCaixa in 'untVendasCaixa.pas' {frmVendasCaixa},
  UntFrmClientes in 'Delphi com Firebird\Vendas\UntFrmClientes.pas' {frmClientes},
  UntDM in 'Delphi com Firebird\Vendas\UntDM.pas' {DM: TDataModule},
  untTratarBotoes in 'Delphi com Firebird\Vendas\untTratarBotoes.pas',
  UntFrmFornecedores in 'Delphi com Firebird\Vendas\UntFrmFornecedores.pas' {FrmFornecedores},
  UntFrmProdutos in 'Delphi com Firebird\Vendas\UntFrmProdutos.pas' {frmProdutos},
  untVendasItens in 'untVendasItens.pas',
  UfrmVendas in 'Delphi com Firebird\Vendas\UfrmVendas.pas' {frmVendas},
  UntPesquisa in 'Delphi com Firebird\Vendas\UntPesquisa.pas' {frmPesquisa},
  UntFrmVendedores in 'Delphi com Firebird\Vendas\UntFrmVendedores.pas' {frmVendedores};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmSistemaVendas, frmSistemaVendas);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
