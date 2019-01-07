unit untVendasCaixa;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons,
    DBCtrls, Grids, DBGrids, Mask, DB;

type
    TfrmVendasCaixa = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Image1: TImage;
    btCancelarItem: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    btSalvar: TSpeedButton;
    btSair: TSpeedButton;
    lblNrNota: TDBText;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    dbCdVendedor: TDBText;
    dbCdCliente: TDBText;
    pnlTotalGeral: TPanel;
    lblTotalNota: TDBText;
    pnlDescricaoProduto: TPanel;
    edCodigo: TEdit;
    edQtdade: TEdit;
    pnlValorUnitario: TPanel;
    pnlSubTotal: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    edDtVEnda: TDBEdit;
    dbComboCliente: TDBLookupComboBox;
    dbComboVendedor: TDBLookupComboBox;
        procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormActivate(Sender: TObject);
        procedure btSairClick(Sender: TObject);
        procedure btSalvarClick(Sender: TObject);
        procedure SpeedButton1Click(Sender: TObject);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmVendasCaixa: TfrmVendasCaixa;
    idPergunta: integer;
    totalNota: Double;
implementation

uses untSistemaVendas, untControlador, UntDM, UntPesquisa;

{$R *.dfm}

procedure TfrmVendasCaixa.edCodigoKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);

begin
    if Key = vk_return then
    begin
        additens(StrToInt(edCodigo.Text));
        //DM.sdProdutos.Close;
        //DM.sdProdutos.DataSet.CommandText :=
          //  'select * from produtos';
        //DM.sdProdutos.Open;
        edCodigo.SelectAll;
        atualizaVlNota();
        //dm.sdItensTemp.Close;
        //dm.sdItensTemp.Open;
    end;
end;

procedure TfrmVendasCaixa.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    frmVendasCaixa := nil;
    Action := caFree;
end;

procedure TfrmVendasCaixa.FormActivate(Sender: TObject);
begin
    WindowState := wsMaximized;
end;

procedure TfrmVendasCaixa.btSairClick(Sender: TObject);
begin
    idPergunta :=
        Application.MessageBox('A VENDA N�O FOI SALVA,'#13'DESEJA SAIR?',
        'MENSAGEM', mb_yesno + mb_iconquestion);
    if idPergunta = 6 then
    begin
        //while not DM.sdItensTemp.Eof do
          //  DM.sdItensTemp.Delete;
        //DM.sdVendas.Cancel;
        frmVendasCaixa.Close;
    end
    else

end;

procedure TfrmVendasCaixa.btSalvarClick(Sender: TObject);
begin
    gravarVendas();
end;

procedure TfrmVendasCaixa.SpeedButton1Click(Sender: TObject);
begin
    Application.CreateForm(TfrmPesquisa, frmPesquisa);
    frmPesquisa.Show;
    frmPesquisa.edPesquisa.SetFocus;
    frmPesquisa.edPesquisa.Focused;
    frmPesquisa.setForm('produtos','dcproduto');
    pesquisar('produtos','dcproduto');
end;

end.

