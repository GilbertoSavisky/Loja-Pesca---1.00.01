unit untLoja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, Grids, ComCtrls, CarregaListView,
  Buttons, AppEvnts;

type
  TVendas = class(TForm)
    edQtdade: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    pnlDescricaoProduto: TPanel;
    pnlTotalGeral: TPanel;
    Panel1: TPanel;
    edCodigo: TEdit;
    pnlValorUnitario: TPanel;
    pnlSubTotal: TPanel;
    ListView1: TListView;
    Image1: TImage;
    btF1: TBitBtn;
    btF2: TBitBtn;
    btF3: TBitBtn;
    btF4: TBitBtn;
    btF5: TBitBtn;
    btF6: TBitBtn;
    btF7: TBitBtn;
    btF8: TBitBtn;
    btF9: TBitBtn;
    btF10: TBitBtn;
    btF11: TBitBtn;
    btF12: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure ApplicationEvents1Message(var Msg: tagMSG;
      //var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Vendas: TVendas;
  sorteio : Integer;

implementation

{$R *.dfm}


procedure TVendas.FormCreate(Sender: TObject);
begin
  sorteio := 10 + Random(6);
  item := 1;
  SysLocale.MiddleEast := true;
  Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\'+IntToStr(sorteio)+'.jpg');
end;
procedure TVendas.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  sorteio : integer;
begin
    if Key = vk_return then
    begin
    if edQtdade.Text = '' then edQtdade.Text := '1';

    if edCodigo.Text = '1' then
    begin
      Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\1.jpg');
      pnlValorUnitario.Caption := '  12,5';
      pnlDescricaoProduto.Caption := 'isca artificial frog 5cm';
      carregaList(ListView1,edCodigo,edQtdade,pnlValorUnitario, pnlSubTotal, pnlTotalGeral, pnlDescricaoProduto);
    end
    else if edCodigo.Text = '2' then
    begin
      Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\2.jpg');
      pnlValorUnitario.Caption := '  18,3';
      pnlDescricaoProduto.Caption := 'isca artificial popper nº14';
      carregaList(ListView1,edCodigo,edQtdade,pnlValorUnitario, pnlSubTotal, pnlTotalGeral, pnlDescricaoProduto);
    end
    else if edCodigo.Text = '3' then
    begin
      Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\3.jpg');
      pnlValorUnitario.Caption := '  67,3';
      pnlDescricaoProduto.Caption := 'carretilha brisa GTO 3000';
      carregaList(ListView1,edCodigo,edQtdade,pnlValorUnitario, pnlSubTotal, pnlTotalGeral, pnlDescricaoProduto);
    end
    else if edCodigo.Text = '4' then
    begin
      Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\4.jpg');
      pnlValorUnitario.Caption := '  76,4';
      pnlDescricaoProduto.Caption := 'carretilha brisa GTO 5000';
      carregaList(ListView1,edCodigo,edQtdade,pnlValorUnitario, pnlSubTotal, pnlTotalGeral, pnlDescricaoProduto);
    end
    else if edCodigo.Text = '' then
    begin
       //Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\'++'.jpg');
    end

    else
    begin
      if edCodigo.Text <> '' then
      begin
//        ShowMessage('Código inexistente!...');
      edQtdade.Text := '1';
      pnlDescricaoProduto.Caption := '...item não encontrado';
      pnlSubTotal.Caption := '';
      pnlValorUnitario.Caption := '';
      sorteio := 10 + Random(6);
//      ShowMessage(IntToStr(sorteio));
      Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\'+IntToStr(sorteio)+'.jpg');
      edCodigo.SelectAll;
      end;

    end;

    end;
end;


end.
