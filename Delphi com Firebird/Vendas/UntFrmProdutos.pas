unit UntFrmProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, DB;

type
  TfrmProdutos = class(TForm)
    DBGridProdutos: TDBGrid;
    lbCodigo: TLabel;
    edCodigo: TDBEdit;
    lbProduto: TLabel;
    edNome: TDBEdit;
    lbValorProduto: TLabel;
    edValorProduto: TDBEdit;
    lbQtEstoque: TLabel;
    edQtdadeEstoque: TDBEdit;
    lbQtMinima: TLabel;
    edQtMinima: TDBEdit;
    lbFornecedor: TLabel;
    btPrimeiro: TBitBtn;
    btAnterior: TBitBtn;
    btProximo: TBitBtn;
    btUltimo: TBitBtn;
    lbSugCompra: TLabel;
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    btInserir: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    btSair: TSpeedButton;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses UntDM, untTratarBotoes, UntFrmClientes;

{$R *.dfm}

procedure TfrmProdutos.btPrimeiroClick(Sender: TObject);
begin
    //DM.sdProdutos.First;
end;

procedure TfrmProdutos.btAnteriorClick(Sender: TObject);
begin
    //DM.sdProdutos.Prior;
end;

procedure TfrmProdutos.btProximoClick(Sender: TObject);
begin
    //DM.sdProdutos.Next;
end;

procedure TfrmProdutos.btUltimoClick(Sender: TObject);
begin
    //DM.sdProdutos.Last;
end;

procedure TfrmProdutos.btInserirClick(Sender: TObject);
var
    prox : integer;
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdProdutos.Last;
    //prox := DM.sdProdutos.fieldbyname('cdproduto').AsInteger +1;
    //DM.sdProdutos.Append;
    //DM.sdProdutos.FieldByName('cdproduto').AsInteger := prox;
    edNome.SetFocus;
    
end;

procedure TfrmProdutos.btGravarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
   // if DM.sdProdutos.State in [dsEdit, dsInsert] then
     //   dm.sdProdutos.Post;
end;

procedure TfrmProdutos.btExcluirClick(Sender: TObject);
begin
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    if MessageBox(0, 'Deseja realmente excluir?', 'Excluindo...',mb_YesNo) = idYes
    then
        //DM.sdProdutos.Delete;
end;

procedure TfrmProdutos.btCancelarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdProdutos.Cancel;
end;

procedure TfrmProdutos.btAlterarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdProdutos.Edit;
end;

procedure TfrmProdutos.btSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    frmProdutos:= nil;
    Action:=caFree;
end;

procedure TfrmProdutos.FormActivate(Sender: TObject);
begin
    WindowState := wsMaximized;
end;

end.procedure TfrmProdutos.btAlterarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
end;


