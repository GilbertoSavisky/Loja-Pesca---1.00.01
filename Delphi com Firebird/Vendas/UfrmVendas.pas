unit UfrmVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, ComCtrls,
  Mask, DB;

type
  TfrmVendas = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    lblVendas: TLabel;
    lblNrVenda: TLabel;
    lblDtVenda: TLabel;
    lblCodCliente: TLabel;
    lblCodVendedor: TLabel;
    Panel2: TPanel;
    lblTotalVenda: TLabel;
    btCalcular: TBitBtn;
    btSair: TBitBtn;
    btPrimeiro: TBitBtn;
    btAnterior: TBitBtn;
    btProximo: TBitBtn;
    btUltimo: TBitBtn;
    Panel3: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBText1: TDBText;
    DBText2: TDBText;
    edNrVenda: TDBEdit;
    edDtVEnda: TDBEdit;
    dataTime: TDateTimePicker;
    DBGrid2: TDBGrid;
    edPesquisa: TEdit;
    Label1: TLabel;
    btInserirVenda: TBitBtn;
    btAlterarVenda: TBitBtn;
    btGravarVenda: TBitBtn;
    btExcluirVenda: TBitBtn;
    btCancelarVenda: TBitBtn;
    btCancelar: TBitBtn;
    btInserir: TBitBtn;
    btAlterar: TBitBtn;
    btGravar: TBitBtn;
    btExcluir: TBitBtn;
    procedure btSairClick(Sender: TObject);
    procedure btInserirVendaClick(Sender: TObject);
    procedure btExcluirVendaClick(Sender: TObject);
    procedure btAlterarVendaClick(Sender: TObject);
    procedure btGravarVendaClick(Sender: TObject);
    procedure btCancelarVendaClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure edPesquisaChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses UntDM, untTratarBotoes, UntPesquisa;

{$R *.dfm}

procedure TfrmVendas.btSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmVendas.btInserirVendaClick(Sender: TObject);
var
    prox : integer;
begin
    //tratarBotoes(btInserirVenda, btAlterarVenda, btExcluirVenda, btGravarVenda, btCancelarVenda);
    //DM.sdVendas.Last;
    //prox := DM.sdVendas.fieldbyname('nrvenda').AsInteger +1;
    //DM.sdVendas.Append;
    //DM.sdVendas.FieldByName('nrvenda').AsInteger := prox;
    edDtVEnda.Text := DateToStr(dataTime.Date);
    //edNome.SetFocus;
end;

procedure TfrmVendas.btExcluirVendaClick(Sender: TObject);
begin
    //DM.sdVendas.Delete;
end;

procedure TfrmVendas.btAlterarVendaClick(Sender: TObject);
begin
    //tratarBotoes(btInserirVenda, btAlterarVenda, btExcluirVenda, btGravarVenda, btCancelarVenda);
    //DM.sdVendas.Edit;
end;

procedure TfrmVendas.btGravarVendaClick(Sender: TObject);
begin
    //tratarBotoes(btInserirVenda, btAlterarVenda, btExcluirVenda, btGravarVenda, btCancelarVenda);
    //if DM.sdVendas.State in [dsEdit, dsInsert] then
      //  DM.sdVendas.Post;
end;

procedure TfrmVendas.btCancelarVendaClick(Sender: TObject);
begin
    //tratarBotoes(btInserirVenda, btAlterarVenda, btExcluirVenda, btGravarVenda, btCancelarVenda);
    //DM.sdVendas.Cancel;
end;

procedure TfrmVendas.btPrimeiroClick(Sender: TObject);
begin
    //DM.sdVendas.First;
end;

procedure TfrmVendas.btAnteriorClick(Sender: TObject);
begin
    //DM.sdVendas.Prior;
end;

procedure TfrmVendas.btProximoClick(Sender: TObject);
begin
    //DM.sdVendas.Next;
end;

procedure TfrmVendas.btUltimoClick(Sender: TObject);
begin
    //DM.sdVendas.Last;
end;

procedure TfrmVendas.btInserirClick(Sender: TObject);
    var
    prox : integer;
begin
    //frmPesquisa.Show;
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdItens.Last;
    //prox := DM.sdItens.fieldbyname('nritem').AsInteger +1;
    //DM.sdItens.Append;
    //DM.sdItens.FieldByName('nritem').AsInteger := prox;
    //edDtVEnda.Text := DateToStr(dataTime.Date);
end;

procedure TfrmVendas.edPesquisaChange(Sender: TObject);
begin
    //Dm.sdPesquisa.Close;
    //DM.sdPesquisa.DataSet.CommandText :=
      //  'select cdproduto, dcproduto, vlproduto from produtos where dcproduto like '+'''%'+edPesquisa.Text+'%''';
    //ShowMessage(DM.sdPesquisa.DataSet.CommandText);
    //DM.sdPesquisa.Open;
end;

procedure TfrmVendas.btGravarClick(Sender: TObject);
begin
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //if DM.sdItens.State in [dsEdit, dsInsert] then
      //  DM.sdItens.Post;
end;
end.
