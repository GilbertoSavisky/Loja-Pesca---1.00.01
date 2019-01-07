unit untSistemaVendas;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, Grids, ComCtrls, CarregaListView,
    Buttons, AppEvnts, Menus;

type
    TfrmSistemaVendas = class(TForm)
        MainMenu1: TMainMenu;
        mnFerramentas: TMenuItem;
        mnClientes: TMenuItem;
        mnFornecedores: TMenuItem;
        mnProdutos: TMenuItem;
        mnVendas: TMenuItem;
        mnSair: TMenuItem;
        Estoque1: TMenuItem;
        Caixa1: TMenuItem;
        Financeiro1: TMenuItem;
        Gerencial1: TMenuItem;
        Funcionrios1: TMenuItem;
        Utilitrios1: TMenuItem;
        Ajuda1: TMenuItem;
        Sair1: TMenuItem;
        pnlBotoes: TPanel;
        btF1: TSpeedButton;
        btF2: TSpeedButton;
        btF3: TSpeedButton;
        btF4: TSpeedButton;
        btF5: TSpeedButton;
        btF6: TSpeedButton;
        btF7: TSpeedButton;
        btF8: TSpeedButton;
        btF9: TSpeedButton;
        btF10: TSpeedButton;
        btF11: TSpeedButton;
        btF12: TSpeedButton;
        ApplicationEvents1: TApplicationEvents;
        procedure FormCreate(Sender: TObject);
        procedure btF6Click(Sender: TObject);

        procedure mnSairClick(Sender: TObject);
        procedure btF2Click(Sender: TObject);
        procedure btF3Click(Sender: TObject);
        procedure btF4Click(Sender: TObject);

        procedure btF1Click(Sender: TObject);
        procedure mnClientesClick(Sender: TObject);
        procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
        procedure btF5Click(Sender: TObject);
        procedure btF12Click(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormShow(Sender: TObject);
    procedure btF7Click(Sender: TObject);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmSistemaVendas: TfrmSistemaVendas;
implementation

uses untControlador, untVendasCaixa, UntFrmClientes,
    UntFrmFornecedores, UntFrmProdutos, untTratarBotoes, UntDM, SimpleDS, DB,
    UfrmVendas, UntFrmVendedores, Unit1;

{$R *.dfm}

procedure TfrmSistemaVendas.FormCreate(Sender: TObject);
begin
    SysLocale.MiddleEast := true;
end;

procedure TfrmSistemaVendas.btF6Click(Sender: TObject);
begin
    tratarForms(TfrmVendedores, frmVendedores);
end;

procedure TfrmSistemaVendas.mnSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmSistemaVendas.btF2Click(Sender: TObject);
begin
    Application.CreateForm(TForm1, Form1);
    tratarForms(TfrmClientes, frmClientes);
end;

procedure TfrmSistemaVendas.btF3Click(Sender: TObject);
begin
    tratarForms(TFrmFornecedores, FrmFornecedores);
end;

procedure TfrmSistemaVendas.btF4Click(Sender: TObject);
begin
    //DM.sdProdutos.Close;
    //DM.sdProdutos.DataSet.CommandText := 'select * from PRODUTOS';
    //dm.sdProdutos.Open;
    tratarForms(TfrmProdutos, frmProdutos);

end;

procedure TfrmSistemaVendas.btF1Click(Sender: TObject);
var
    prox: integer;
begin
    //DM.sdVendas.Open;
    tratarForms(TfrmVendasCaixa, frmVendasCaixa);
    //DM.sdVendas.Last;
    //prox := DM.sdVendas.fieldbyname('nrvenda').AsInteger + 1;
    //Dm.sdVendas.Append;
    frmVendasCaixa.lblNrNota.Caption := IntToStr(prox);
    frmVendasCaixa.edDtVEnda.Text := DateToStr(Date);
    frmVendasCaixa.lblTotalNota.Caption := FormatFloat('0.00', 0);

end;

procedure TfrmSistemaVendas.mnClientesClick(Sender: TObject);
begin
    tratarForms(TfrmClientes, frmClientes);
end;

procedure TfrmSistemaVendas.ApplicationEvents1Exception(Sender: TObject;
    E: Exception);
begin
    Showmessage('Houve um erro na aplica��o, a mensagem � : ' + #13 +
        E.Message);
end;

procedure TfrmSistemaVendas.btF5Click(Sender: TObject);
begin
    tratarForms(TfrmVendas, frmVendas);
end;

procedure TfrmSistemaVendas.btF12Click(Sender: TObject);
begin
    Close;
end;

procedure TfrmSistemaVendas.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    //Dm.sdVendas.Cancel;
    frmSistemaVendas := nil;
    Action := caFree;
end;

procedure TfrmSistemaVendas.FormShow(Sender: TObject);
begin
    Top := 0;
    Left := 0;
    Width := Screen.Width;
    Height := Screen.Height;
end;

procedure TfrmSistemaVendas.btF7Click(Sender: TObject);
begin
    tratarForms(TForm1, Form1);
end;

end.

