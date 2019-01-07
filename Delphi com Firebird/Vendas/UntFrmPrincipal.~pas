unit UntFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Fornecedores1: TMenuItem;
    Clientes1: TMenuItem;
    Vendedores1: TMenuItem;
    Produtos1: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    Vendas2: TMenuItem;
    procedure Fornecedores1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Vendas2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses UntFrmFornecedores, UntFrmClientes, UntFrmProdutos, UntFrmVendedores,
  UfrmVendas;

{$R *.dfm}

procedure TFrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
  FrmFornecedores.Show;
end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
    Close;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
    frmClientes.Show;
end;

procedure TFrmPrincipal.Vendedores1Click(Sender: TObject);
begin
    frmVendedores.Show;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
begin
    frmProdutos.Show;
end;


procedure TFrmPrincipal.Vendas2Click(Sender: TObject);
begin
    frmVendas.Show;
end;

end.
