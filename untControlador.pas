unit untControlador;

interface

uses Windows, Messages, DBCtrls, SysUtils, Variants, Classes, Graphics,
    Controls, Forms, Buttons,
    Dialogs, jpeg, ExtCtrls, StdCtrls, Mask, Grids, carregaListView;

procedure tratarForms(FClass: TFormClass; var Instance);
procedure fecharForms(FClass: TFormClass; var Instance);
procedure additens(codigo: integer);
procedure atualizaVlNota();
procedure gravarVendas();
procedure trataEdits(var Instance; botao : TSpeedButton);
procedure pesquisar(tabela: string; campo: string);
function IsValidCPF(pCPF: string): Boolean;
function IsValidCNPJ(pCNPJ: string): Boolean;

implementation

uses untSistemaVendas, Math, untVendasCaixa, UntDM, untTratarBotoes,
    ComCtrls, untVendasItens, DB, UntPesquisa, UntFrmClientes;

procedure trataEdits(var Instance; botao : TSpeedButton);
var
    i: integer;
begin
    for i := 0 to TForm(Instance).ComponentCount - 1 do
    begin
        if (botao.Name = 'btInserir') or (botao.Name = 'btAlterar') then
        begin
            if TForm(Instance).Components[i] is TDBEdit then
            begin
                if TForm(Instance).Components[i].Name = 'edCodigo' then
                else
                    TEdit(TForm(Instance).Components[i]).Color := clWindow;
            end;
        end
        else
        begin
            if TForm(Instance).Components[i] is TDBEdit then
            begin
                if TForm(Instance).Components[i].Name = 'edCodigo' then
                else
                    TEdit(TForm(Instance).Components[i]).Color :=
                        clInactiveCaption;
            end;
        end
    end;
end;

procedure pesquisar(tabela: string; campo: string);
begin
    //Dm.sdPesquisa.Close;
    //DM.sdPesquisa.DataSet.CommandText :=
      //  ('select * from ' + tabela + ' where ' + campo + ' containing ''' +
        //frmPesquisa.edPesquisa.Text + '''');
    //DM.sdPesquisa.Open;
    frmPesquisa.edPesquisa.Focused;
end;

procedure gravarVendas();
var
    prox: integer;
begin

    //DM.sdItensTemp.Last;
    //prox := DM.sdItensTemp.fieldbyname('nrItem').AsInteger;

    if prox = 0 then
    begin
        ShowMessage('IMPOSSÍVEL SALVAR VENDA VAZIA!');
    end
    else if frmVendasCaixa.dbCdCliente.Caption = '' then
    begin
        ShowMessage('Por favor ensira um cliente');
        frmVendasCaixa.dbComboCliente.SetFocus;
    end
    else if frmVendasCaixa.dbCdVendedor.Caption = '' then
    begin
        ShowMessage('Por favor ensira um vendedor');
        frmVendasCaixa.dbComboVendedor.SetFocus;
    end
    else
    begin
        {DM.sdVendas.FieldByName('nrvenda').AsInteger :=
            StrToInt(frmVendasCaixa.lblNrNota.Caption);
        DM.sdVendas.FieldByName('dtvenda').AsString :=
            frmVendasCaixa.edDtVEnda.Text;
        DM.sdVendas.FieldByName('vltotalnota').AsString :=
            frmVendasCaixa.lblTotalNota.Caption;
        if DM.sdVendas.State in [dsEdit, dsInsert] then
            DM.sdVendas.Post;

        DM.sdItensTemp.First;
        while not DM.sdItensTemp.Eof do
        begin
            DM.sdItens.Append;
            Dm.sdItens.FieldByName('nrvenda').AsString :=
                frmVendasCaixa.lblNrNota.Caption;
            Dm.sdItens.FieldByName('nritem').AsInteger :=
                Dm.sdItensTemp.FieldByName('nritem').AsInteger;
            Dm.sdItens.FieldByName('cdproduto').AsInteger :=
                Dm.sdItensTemp.FieldByName('cdproduto').AsInteger;
            Dm.sdItens.FieldByName('qtvenda').AsFloat :=
                Dm.sdItensTemp.FieldByName('qtde').AsFloat;
            Dm.sdItens.FieldByName('vlproduto').AsFloat :=
                Dm.sdItensTemp.FieldByName('vlproduto').AsFloat;
            Dm.sdItens.FieldByName('vltotalproduto').AsFloat :=
                Dm.sdItensTemp.FieldByName('totalproduto').AsFloat;
            Dm.sdItensTemp.Delete;
        }end;
        //dm.sdItens.Post;

        frmVendasCaixa.Close;
    //end;


end;

function IsValidCNPJ(pCNPJ: string): Boolean;
var
    v: array[1..2] of Word;
    cnpj: array[1..14] of Byte;
    I: Byte;
begin
    try
        for I := 1 to 14 do
            cnpj[i] := StrToInt(pCNPJ[i]);

        //Nota: Calcula o primeiro dígito de verificação.
        v[1] := 5 * cnpj[1] + 4 * cnpj[2] + 3 * cnpj[3] + 2 * cnpj[4];
        v[1] := v[1] + 9 * cnpj[5] + 8 * cnpj[6] + 7 * cnpj[7] + 6 * cnpj[8];
        v[1] := v[1] + 5 * cnpj[9] + 4 * cnpj[10] + 3 * cnpj[11] + 2 * cnpj[12];
        v[1] := 11 - v[1] mod 11;
        v[1] := IfThen(v[1] >= 10, 0, v[1]);

        //Nota: Calcula o segundo dígito de verificação.
        v[2] := 6 * cnpj[1] + 5 * cnpj[2] + 4 * cnpj[3] + 3 * cnpj[4];
        v[2] := v[2] + 2 * cnpj[5] + 9 * cnpj[6] + 8 * cnpj[7] + 7 * cnpj[8];
        v[2] := v[2] + 6 * cnpj[9] + 5 * cnpj[10] + 4 * cnpj[11] + 3 * cnpj[12];
        v[2] := v[2] + 2 * v[1];
        v[2] := 11 - v[2] mod 11;
        v[2] := IfThen(v[2] >= 10, 0, v[2]);

        //Nota: Verdadeiro se os dígitos de verificação são os esperados.
        Result := ((v[1] = cnpj[13]) and (v[2] = cnpj[14]));
    except on E: Exception do
            Result := False;
    end;
end;

function IsValidCPF(pCPF: string): Boolean;
var
    v: array[0..1] of Word;
    cpf: array[0..10] of Byte;
    I: Byte;
begin
    try
        for I := 1 to 11 do
            cpf[i - 1] := StrToInt(pCPF[i]);
        //Nota: Calcula o primeiro dígito de verificação.
        v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
        v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
        v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
        v[0] := 11 - v[0] mod 11;
        v[0] := IfThen(v[0] >= 10, 0, v[0]);
        //Nota: Calcula o segundo dígito de verificação.
        v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
        v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
        v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
        v[1] := v[1] + 2 * v[0];
        v[1] := 11 - v[1] mod 11;
        v[1] := IfThen(v[1] >= 10, 0, v[1]);
        //Nota: Verdadeiro se os dígitos de verificação são os esperados.
        Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
    except on E: Exception do
            Result := False;
    end;

end;

procedure additens(codigo: integer);
//var
    //prox: integer;
    //imagem, produto: string;
begin
    {DM.sdProdutos.Close;
    DM.sdProdutos.DataSet.CommandText :=
        'select * from PRODUTOS where CDPRODUTO = ' +
        frmVendasCaixa.edCodigo.Text;
    DM.sdProdutos.Open;

    produto := DM.sdProdutos.fieldbyname('cdproduto').AsString;

    if DM.sdProdutos.FieldByName('cdproduto').AsInteger <> 0 then
    begin
        if FileExists('D:\Programação\Loja Pesca\imagens\imagens produtos\' +
            produto + '.jpg') then
            frmVendasCaixa.Image1.Picture.LoadFromFile
                ('D:\Programação\Loja Pesca\imagens\imagens produtos\' + produto
                + '.jpg')
        else
            frmVendasCaixa.Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\' + (IntToStr(1 + Random(6))) + '.jpg');
        DM.sdItensTemp.Last;
        prox := DM.sdItensTemp.fieldbyname('nritem').AsInteger + 1;

        DM.sdItensTemp.Append;
        DM.sdItensTemp.FieldByName('nritem').AsInteger := prox;
        DM.sdItensTemp.FieldByName('cdproduto').AsInteger :=
            dm.sdProdutos.FieldByName('cdproduto').AsInteger;
        DM.sdItensTemp.FieldByName('qtde').AsInteger :=
            StrToInt(frmVendasCaixa.edQtdade.Text);
        DM.sdItensTemp.FieldByName('vlproduto').AsFloat :=
            DM.sdProdutos.FieldByName('vlproduto').AsFloat;
        DM.sdItensTemp.FieldByName('totalproduto').AsFloat :=
            DM.sdItensTemp.FieldByName('qtde').asfloat *
            DM.sdItensTemp.FieldByName('vlproduto').AsFloat;
        frmVendasCaixa.pnlDescricaoProduto.Caption :=
            DM.sdProdutos.FieldByName('dcproduto').AsString;
        frmVendasCaixa.pnlValorUnitario.Caption :=
            DM.sdItensTemp.FieldByName('vlproduto').AsString;
        frmVendasCaixa.pnlSubTotal.Caption :=
            DM.sdItensTemp.FieldByName('totalproduto').AsString;
        DM.sdItensTemp.Post;

    end
    else
    begin
        imagem := IntToStr(1 + Random(6));
        frmVendasCaixa.pnlDescricaoProduto.Caption :=
            '...Item não encontrado!';
        frmVendasCaixa.Image1.Picture.LoadFromFile('D:\Programação\Loja Pesca\imagens\' + imagem + '.jpg');
    end;
   }
end;

// instancia um mdiChildren apenas uma única vez, caso existir, irá mostrar o form chamado

procedure tratarForms(FClass: TFormClass; var Instance);
begin

    if Assigned(TForm(Instance)) then
    begin
        TForm(Instance).SetFocus;
        TForm(Instance).BringToFront;
    end
    else
    begin
        Application.CreateForm(FClass, Instance);
        TForm(Instance).SetFocus;
        TForm(Instance).BringToFront;
    end;
end;

procedure fecharForms(FClass: TFormClass; var Instance);
begin
    FreeAndNil(Instance);
end;

procedure atualizaVlNota();
begin
    //if DM.sdItensTemp.FieldByName('totalNota').AsString <> '' then
      //  frmVendasCaixa.lblTotalNota.Caption := FormatFloat('0.00',
        //    StrToFloat(DM.sdItensTemp.FieldByName('totalNota').AsString))
    //else
        frmVendasCaixa.lblTotalNota.Caption := FormatFloat('0.00', 0)
end;

end.

