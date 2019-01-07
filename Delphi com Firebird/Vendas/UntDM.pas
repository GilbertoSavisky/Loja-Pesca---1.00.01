unit UntDM;

interface

uses
    Dialogs,SysUtils, Classes, DB, SqlExpr, DBClient, SimpleDS,
  WideStrings, Data.DBXMySQL, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
    TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    dataSource_cadastro: TDataSource;
    fdqry_cadastro: TFDQuery;
    fdtncfld_cadastropro_id: TFDAutoIncField;
    strngfld_cadastropro_nome: TStringField;
    strngfld_cadastropro_barras: TStringField;
    strngfld_cadastropro_ref: TStringField;
    fltfld_cadastropro__custo: TFloatField;
    fltfld_cadastropro_preco_prazo: TFloatField;
    fltfld_cadastropro_preco: TFloatField;
    intgrfld_cadastropro_estoque: TIntegerField;
    update_cadastro: TFDUpdateSQL;
    trans_cadastro: TFDTransaction;
        procedure sdFornecedoresAfterDelete(DataSet: TDataSet);
        procedure sdFornecedoresAfterPost(DataSet: TDataSet);
        procedure sdClientesAfterDelete(DataSet: TDataSet);
        procedure sdClientesAfterPost(DataSet: TDataSet);
        procedure sdVendedoresAfterDelete(DataSet: TDataSet);
        procedure sdVendedoresAfterPost(DataSet: TDataSet);
        procedure sdProdutosAfterDelete(DataSet: TDataSet);
        procedure sdProdutosAfterPost(DataSet: TDataSet);
        procedure sdProdutosCalcFields(DataSet: TDataSet);
        procedure sdVendasAfterDelete(DataSet: TDataSet);
        procedure sdVendasAfterPost(DataSet: TDataSet);
        procedure sdItensAfterPost(DataSet: TDataSet);
        procedure sdItensAfterDelete(DataSet: TDataSet);
        procedure sdItensCalcFields(DataSet: TDataSet);
    procedure sdItensTempAfterDelete(DataSet: TDataSet);

    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    DM: TDM;

implementation

uses untControlador;

{$R *.dfm}

procedure TDM.sdFornecedoresAfterDelete(DataSet: TDataSet);
begin
    //DM.sdFornecedores.ApplyUpdates(0);
end;

procedure TDM.sdFornecedoresAfterPost(DataSet: TDataSet);
begin
    //Dm.sdFornecedores.ApplyUpdates(0);
end;

procedure TDM.sdClientesAfterDelete(DataSet: TDataSet);
begin
    //Dm.sdClientes.ApplyUpdates(0);
end;

procedure TDM.sdClientesAfterPost(DataSet: TDataSet);
begin
    //Dm.sdClientes.ApplyUpdates(0);
end;

procedure TDM.sdVendedoresAfterDelete(DataSet: TDataSet);
begin
    //DM.sdVendedores.ApplyUpdates(0);
end;

procedure TDM.sdVendedoresAfterPost(DataSet: TDataSet);
begin
    //dm.sdVendedores.ApplyUpdates(0);
end;

procedure TDM.sdProdutosAfterDelete(DataSet: TDataSet);
begin
    //dm.sdProdutos.ApplyUpdates(0);
end;

procedure TDM.sdProdutosAfterPost(DataSet: TDataSet);
begin
    //DM.sdProdutos.ApplyUpdates(0);
end;

procedure TDM.sdProdutosCalcFields(DataSet: TDataSet);
begin{
    if DM.sdProdutos.FieldByName('QTESTOQUE').AsFloat <
        DM.sdProdutos.FieldByName('QTMINIMA').AsFloat then
    begin
        DM.sdProdutos.FieldByName('SugestaoCompra').AsFloat :=
            DM.sdProdutos.FieldByName('QTMINIMA').AsFloat -
            DM.sdProdutos.FieldByName('QTESTOQUE').AsFloat;
    end;
    }
end;

procedure TDM.sdVendasAfterDelete(DataSet: TDataSet);
begin
    //Dm.sdVendas.ApplyUpdates(0);
end;

procedure TDM.sdVendasAfterPost(DataSet: TDataSet);
begin
    //Dm.sdVendas.ApplyUpdates(0);
end;

procedure TDM.sdItensAfterPost(DataSet: TDataSet);
begin
    //Dm.sdItens.ApplyUpdates(0);
end;

procedure TDM.sdItensAfterDelete(DataSet: TDataSet);
begin
    //Dm.sdItens.ApplyUpdates(0);
end;

procedure TDM.sdItensCalcFields(DataSet: TDataSet);
begin
    //DM.sdItens.FieldByName('VLTOTAL').asfloat :=
      //  DM.sdItens.FieldByName('QTVENDA').asfloat *
       // DM.sdItens.FieldByName('VLPRODUTO').asfloat;


end;

procedure TDM.sdItensTempAfterDelete(DataSet: TDataSet);
begin
    atualizaVlNota();
end;

end.

