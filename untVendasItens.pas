unit untVendasItens;

interface
uses    Windows,Messages, Dialogs;
type
    TVendasItens = class

    private
        nrVenda, nrItem, qtItem, cdCliente, cdProduto: Integer;
        vdata: TDateTime;
        vlItem, vlTotalItem, vlTotalNota: Double;
    public
        constructor Create(numVenda : integer);
        destructor Destroy();
        function getNrVenda(): integer;
        procedure setNrVenda(_nrVenda: integer);
        function getNrItem(): integer;
        procedure setNrItem(_nrItem: integer);
        function getQtItem(): integer;
        procedure setQtItem(_qtItem: integer);
        function getcdCliente(): integer;
        procedure setcdCliente(_cdCliente: integer);
        function getcdProduto(): integer;
        procedure setcdProduto(_cdProduto: integer);
        function getData(): TDateTime;
        procedure setData(_data: TDateTime);
        function getVlItem(): Double;
        procedure setVlItem(_vlItem: Double);
        function getVlTotalItem(): Double;
        procedure setVlTotalItem(_vlTotalItem: Double);
        function getVlTotalNota(): Double;
        procedure setVlTotalNota(_vlTotalNota: Double);

    published
    end;

implementation

constructor TVendasItens.Create(numVenda : integer);
begin
    //nrVenda := numVenda;
end;

function TVendasItens.getNrVenda(): integer;
begin
    Result := nrVenda;
end;

procedure TVendasItens.setNrVenda(_nrVenda: integer);
begin
    nrVenda := _nrVenda;
end;

function TVendasItens.getNrItem(): integer;
begin
    Result := nrItem;
end;

procedure TVendasItens.setNrItem(_nrItem: integer);
begin
    nrItem := _nrItem;
end;

function TVendasItens.getQtItem(): integer;
begin
    Result := qtItem;
end;

procedure TVendasItens.setQtItem(_qtItem: integer);
begin
    qtItem := _qtItem;
end;

function TVendasItens.getcdCliente(): integer;
begin
    Result := cdCliente;
end;

procedure TVendasItens.setcdCliente(_cdCliente: integer);
begin
    cdCliente := _cdCliente;
end;

function TVendasItens.getcdProduto(): integer;
begin
    Result := cdProduto;
end;

procedure TVendasItens.setcdProduto(_cdProduto: integer);
begin
    cdProduto := _cdProduto;
end;

function TVendasItens.getData(): TDateTime;
begin
    Result := vdata;
end;

procedure TVendasItens.setData(_data: TDateTime);
begin
    vdata := _data;
end;

function TVendasItens.getVlItem(): Double;
begin
    Result := vlItem;
end;

procedure TVendasItens.setVlItem(_vlItem: Double);
begin
    vlItem := _vlItem;
end;

function TVendasItens.getVlTotalItem(): Double;
begin
    Result := vlTotalItem;
end;

procedure TVendasItens.setVlTotalItem(_vlTotalItem: Double);
begin
    vlTotalItem := _vlTotalItem;
end;

function TVendasItens.getVlTotalNota(): Double;
begin
    Result := vlTotalNota;
end;

procedure TVendasItens.setVlTotalNota(_vlTotalNota: Double);
begin
    vlTotalNota := _vlTotalNota;
end;

destructor TVendasItens.Destroy;
begin
    Destroy;
end;

end.

