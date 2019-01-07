unit carregaListView;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, Grids, ComCtrls;

procedure carregaList(produto: array of string);



var
    qtdade, vlUnit, total, totalGeral: Double;
    item: Integer;


implementation

uses untVendasCaixa, Math, UntDM;


procedure carregaList(produto: array of string);
var
    li: TListItem;
    imagem: string;
    prox : integer;
begin

    if FileExists('D:\Programação\Loja Pesca\imagens\' + produto[0] + '.jpg') then
        imagem := produto[0]
    else
        imagem := IntToStr(10 + Random(6));

    if produto[0] <> '' then
        frmVendasCaixa.Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\' + imagem + '.jpg');
    frmVendasCaixa.pnlValorUnitario.Caption := produto[2];
    frmVendasCaixa.pnlDescricaoProduto.Caption := produto[1];


    qtdade := StrToFloat(frmVendasCaixa.edQtdade.Text);
    vlUnit := StrToFloat(produto[2]);
    total := vlUnit * qtdade;
    frmVendasCaixa.pnlSubTotal.Caption := FloatToStr(total);

    totalGeral := totalGeral + total;
    frmVendasCaixa.pnlTotalGeral.Caption := '  ' + FloatToStr(totalGeral);
    frmVendasCaixa.pnlValorUnitario.Caption := FormatFloat('0.00', StrToFloat(frmVendasCaixa.pnlValorUnitario.Caption));
    frmVendasCaixa.pnlSubTotal.Caption := FormatFloat('0.00', StrToFloat(frmVendasCaixa.pnlSubTotal.Caption));
    frmVendasCaixa.pnlTotalGeral.Caption := FormatFloat('0.00', StrToFloat(frmVendasCaixa.pnlTotalGeral.Caption));

    //li := frmVendasCaixa.ListView1.Items.Add;
    li.Caption := FormatFloat('0000', item);
    li.SubItems.Add(frmVendasCaixa.pnlDescricaoProduto.Caption);
    li.SubItems.Add(FormatFloat('0000', (qtdade)));
    li.SubItems.Add(FormatFloat('0.00', (vlUnit)));
    li.SubItems.Add(FormatFloat('0.00', total));
    item := item + 1;

    frmVendasCaixa.edCodigo.SetFocus;
    if (Length(frmVendasCaixa.edCodigo.Text) > 11) then
    begin
        frmVendasCaixa.edCodigo.SelectAll;
        frmVendasCaixa.edCodigo.Text := '';
    end;
    frmVendasCaixa.edCodigo.SelectAll;
    frmVendasCaixa.edQtdade.Text := '1';
    frmVendasCaixa.btSalvar.Enabled := true;
    frmVendasCaixa.btCancelarItem.Enabled := true;


end;
end.

