program Vendas;

uses
  Forms,
  UntFrmPrincipal in 'UntFrmPrincipal.pas' {FrmPrincipal},
  UntDM in 'UntDM.pas' {DM: TDataModule},
  UntFrmFornecedores in 'UntFrmFornecedores.pas' {FrmFornecedores},
  UntFrmClientes in 'UntFrmClientes.pas' {frmClientes},
  UntFrmVendedores in 'UntFrmVendedores.pas' {frmVendedores},
  UntFrmProdutos in 'UntFrmProdutos.pas' {frmProdutos},
  untTratarBotoes in 'untTratarBotoes.pas',
  UfrmVendas in 'UfrmVendas.pas' {frmVendas},
  UntPesquisa in 'UntPesquisa.pas' {frmPesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmFornecedores, FrmFornecedores);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmVendedores, frmVendedores);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.Run;
end.
