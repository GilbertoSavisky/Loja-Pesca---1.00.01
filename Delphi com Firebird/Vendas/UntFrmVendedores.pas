unit UntFrmVendedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, DB;

type
  TfrmVendedores = class(TForm)
    lblCodVendedor: TLabel;
    lblNomeVendedor: TLabel;
    DBGridVendedores: TDBGrid;
    btInserir: TBitBtn;
    btAlterar: TBitBtn;
    btExcluir: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btSair: TBitBtn;
    btPrimeiro: TBitBtn;
    btAnterior: TBitBtn;
    btProximo: TBitBtn;
    btUltimo: TBitBtn;
    edCodigo: TDBEdit;
    edNome: TDBEdit;
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedores: TfrmVendedores;

implementation

uses UntDM, untTratarBotoes;

{$R *.dfm}

procedure TfrmVendedores.btPrimeiroClick(Sender: TObject);
begin
    //DM.sdVendedores.First;
end;

procedure TfrmVendedores.btAnteriorClick(Sender: TObject);
begin
    //DM.sdVendedores.Prior;
end;

procedure TfrmVendedores.btProximoClick(Sender: TObject);
begin
    //DM.sdVendedores.Next;
end;

procedure TfrmVendedores.btUltimoClick(Sender: TObject);
begin
    //DM.sdVendedores.Last;
end;

procedure TfrmVendedores.btInserirClick(Sender: TObject);
var
    prox : integer;
begin
    
    //DM.sdVendedores.Last;
    //prox := DM.sdVendedores.fieldbyname('cdvendedor').AsInteger +1;
    //DM.sdVendedores.Append;
    //DM.sdVendedores.FieldByName('cdvendedor').AsInteger := prox;
    edNome.SetFocus;
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
end;

procedure TfrmVendedores.btAlterarClick(Sender: TObject);
begin
    
    //DM.sdVendedores.Edit;
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
end;

procedure TfrmVendedores.btExcluirClick(Sender: TObject);
begin
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    if MessageBox(0, 'Deseja realmente Excluir?', 'Excluindo...',mb_YesNo) = idYes
    then
        //DM.sdVendedores.Delete;


end;

procedure TfrmVendedores.btGravarClick(Sender: TObject);
begin
    
    //if DM.sdVendedores.State in [dsEdit, dsInsert] then
      //  DM.sdVendedores.Post;
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
end;

procedure TfrmVendedores.btCancelarClick(Sender: TObject);
begin
    
    //Dm.sdVendedores.Cancel;
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
end;

procedure TfrmVendedores.btSairClick(Sender: TObject);
begin
    Close;
end;

end.
