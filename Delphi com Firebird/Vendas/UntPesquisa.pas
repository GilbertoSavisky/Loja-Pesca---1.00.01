unit UntPesquisa;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons, Grids, DBGrids, Data.DB;

type
    TfrmPesquisa = class(TForm)
        DBGrid1: TDBGrid;
        edPesquisa: TEdit;
        btSair: TBitBtn;
        procedure btSairClick(Sender: TObject);
        procedure edPesquisaChange(Sender: TObject);
        procedure DBGrid1DblClick(Sender: TObject);
        procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        //procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
        //    DataCol: Integer; Column: TColumn; State: TGridDrawState);
        procedure setForm(tabela: string; campo: string);
        procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
            DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frmPesquisa: TfrmPesquisa;
    p_tabela, p_campo: string;

implementation

uses UntDM, untVendasCaixa, untControlador, UntFrmClientes;

{$R *.dfm}

procedure TfrmPesquisa.btSairClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmPesquisa.edPesquisaChange(Sender: TObject);
begin
    //metodo locate, sem pesquisa no banco, direto no grid
    //dbgrid1.datasource.dataset.locate(dbgrid1.columns[1].fieldName,edPesquisa.text,[loPartialKey,locaseInsensitive]);
    pesquisar(p_tabela, p_campo);
end;

procedure TfrmPesquisa.DBGrid1DblClick(Sender: TObject);
var
    valor: string;
begin
    if p_tabela = 'clientes' then
    begin

        if DBGrid1.Columns[0].Field.Value <> null then
        begin
            valor := DBGrid1.Columns[0].Field.Value;
            //DM.sdClientes.Close;
            //DM.sdClientes.DataSet.CommandText :=
              //  ('select * from clientes where cdcliente = ''' + valor + '''');
            //DM.sdClientes.Open;
            frmPesquisa.Close;
        end;
    end;
    if p_tabela = 'produtos' then
    begin
        frmVendasCaixa.edCodigo.Text := DBGrid1.Columns[0].Field.Value;
        frmPesquisa.Close;
    end;
end;

procedure TfrmPesquisa.edPesquisaKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
begin
    if key = VK_DOWN then
        DBGrid1.SetFocus;
    if Key = vk_return then
    begin
        DBGrid1DblClick(Sender);
    end;

end;

{procedure TfrmPesquisa.DBGrid1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
begin
    with DBGrid1 do
    begin
        if odd(DM.sdPesquisa.RecNo) then
        begin
            //muda cor itens da linha impar
                //DBGrid1.Canvas.Font.Color := clBlack;
                //muda cor linha impar
                //DBGrid1.Canvas.Brush.Color := clBlack;
        end
        else
        begin
            //muda cor itens da linha par
            //DBGrid1.Canvas.Font.Color := clMenuHighlight;
            //muda cor linha par
            //DBGrid1.Canvas.Brush.Color := cl3DLight;
        end;

        if (gdSelected in state) then
            //muda cor  item selecionado
            //DBGrid1.Canvas.Font.Color := clBlack
        else
            //muda cor de todos itens não selecionados
            //DBGrid1.Canvas.Font.Color := clWhite;

            DBGrid1.Canvas.FillRect(Rect);
        DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);

    end;
end;}

procedure TfrmPesquisa.setForm(tabela: string; campo: string);
begin
    p_tabela := tabela;
    p_campo := campo;
end;

procedure TfrmPesquisa.DBGrid1DrawColumnCell(Sender: TObject;
    const Rect: TRect; DataCol: Integer; Column: TColumn;
    State: TGridDrawState);
begin
    if gdSelected in State then
        DBGrid1.Canvas.Brush.Color := clMenuHighlight;

    DBGRid1.DefaultDrawDataCell(Rect, Column.Field, State);
end;

procedure TfrmPesquisa.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = vk_return then
    begin
        DBGrid1DblClick(Sender);
    end;
end;

end.

