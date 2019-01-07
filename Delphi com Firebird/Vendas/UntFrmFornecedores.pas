unit UntFrmFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask, Buttons, DB;

type
  TFrmFornecedores = class(TForm)
    DBGrid1: TDBGrid;
    DBEditCodFornecedor: TDBEdit;
    edDescricao: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditTelefone: TDBEdit;
    DBEditCep: TDBEdit;
    lblCodFornecedor: TLabel;
    lblDescFornecedor: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblTelefone: TLabel;
    btnProximo: TBitBtn;
    btnPrimeiro: TBitBtn;
    btnAnterior: TBitBtn;
    btnUltimo: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Panel1: TPanel;
    btSelecionar: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    Sair: TBitBtn;
    Cancelar: TBitBtn;
    Gravar: TBitBtn;
    Inserir: TBitBtn;
    Alterar: TBitBtn;
    Excluir: TBitBtn;
    btInserir: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    btSair: TSpeedButton;
    procedure InserirClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btSelecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

uses UntDM, SimpleDS, untTratarBotoes, UntFrmClientes;

{$R *.dfm}

procedure TFrmFornecedores.InserirClick(Sender: TObject);
var
    prox : integer;
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdFornecedores.Last;
    //prox := DM.sdFornecedores.fieldbyname('cdfornecedor').AsInteger +1;
    //DM.sdFornecedores.Append;
    ///DM.sdFornecedores.FieldByName('cdfornecedor').AsInteger := prox;
    edDescricao.SetFocus;
end;

procedure TFrmFornecedores.AlterarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdFornecedores.Edit;
    
end;

procedure TFrmFornecedores.ExcluirClick(Sender: TObject);
begin
    //tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    if
        (MessageBox(0,'Deseja realmente excluir?','Excluindo...',MB_YESNO)=idYes)
    then
        //DM.sdFornecedores.Delete;
end;

procedure TFrmFornecedores.GravarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdFornecedores.Post;
//    if
      //Dm.sdFornecedores.state in [dsedit,dsinsert]
    //then
      //Dm.sdFornecedores.post;
end;

procedure TFrmFornecedores.CancelarClick(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdFornecedores.Cancel;
end;

procedure TFrmFornecedores.SairClick(Sender: TObject);
begin
    Close;
end;

procedure TFrmFornecedores.btnPrimeiroClick(Sender: TObject);
begin
    //DM.sdFornecedores.First;
end;

procedure TFrmFornecedores.btnAnteriorClick(Sender: TObject);
begin
    //DM.sdFornecedores.Prior;
end;

procedure TFrmFornecedores.btnProximoClick(Sender: TObject);
begin
    //DM.sdFornecedores.Next;
end;

procedure TFrmFornecedores.btnUltimoClick(Sender: TObject);
begin
    //DM.sdFornecedores.Last;
end;

procedure TFrmFornecedores.btSelecionarClick(Sender: TObject);
begin
    {DM.sdFornecedores.Close;
    DM.sdFornecedores.DataSet.CommandText := 'select * from fornecedores';
    case RadioGroup1.ItemIndex of
        0 : begin
                if Edit1.Text <> '' then
                begin
                    Dm.sdFornecedores.DataSet.CommandText :=
                    DM.sdFornecedores.DataSet.CommandText +
                        'where fornecedores = :Pcdfornecedor';
                    DM.sdFornecedores.DataSet.Params.ParamByName('Pcdfornecedor').Value :=
                        StrToInt(Edit1.Text);
                end;
                if RadioGroup2.ItemIndex = 1 then
                    DM.sdFornecedores.DataSet.CommandText:=
                    DM.sdFornecedores.DataSet.CommandText +
                        ' ORDER BY CDFORNECEDOR';

                if radiogroup2.ItemIndex = 2 then
                    DM.sdFornecedores.DataSet.CommandText:=
                    DM.sdFornecedores.DataSet.CommandText +
                        ' ORDER BY CDFORNECEDOR DESC';
                end;

        1:  begin
                if edit1.Text <> '' then
                begin
                    DM.sdFornecedores.DataSet.CommandText:=
                    DM.sdFornecedores.DataSet.CommandText +
                        ' WHERE DCFORNECEDOR CONTAINING :Pdcfornecedor';
                    Dm.sdFornecedores.DataSet.Params.ParamByName('Pdcfornecedor').Value:=
                        Edit1.Text;
                end;
                if radiogroup2.ItemIndex = 1 then
                    DM.sdFornecedores.DataSet.CommandText:=
                    DM.sdFornecedores.DataSet.CommandText +
                        ' ORDER BY DCFORNECEDOR';

                if radiogroup2.ItemIndex = 2 then
                    DM.sdFornecedores.DataSet.CommandText:=
                    DM.sdFornecedores.DataSet.CommandText +
                        ' ORDER BY DCFORNECEDOR DESC';
            end;

    end;
    Dm.sdFornecedores.open;}
end;

procedure TFrmFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    FrmFornecedores:= nil;
    Action:=caFree;
end;

procedure TFrmFornecedores.FormActivate(Sender: TObject);
begin
    WindowState := wsMaximized;
end;

procedure TFrmFornecedores.BitBtn10Click(Sender: TObject);
begin
    tratarBotoes(btInserir, btAlterar, btExcluir, btGravar, btCancelar);
    //DM.sdFornecedores.Cancel;
    Close;
end;

end.
