unit untTratarBotoes;

interface
Uses
  Forms, Buttons;
procedure tratarBotoes(inserir, alterar, excluir, gravar, cancelar : TSpeedButton);

implementation

uses UntFrmClientes;


procedure tratarBotoes(inserir, alterar, excluir, gravar, cancelar : TSpeedButton);
    begin
        inserir.Enabled:=not inserir.enabled;
        alterar.enabled:=not alterar.enabled;
        excluir.enabled:=not excluir.enabled;
        gravar.enabled:=not gravar.enabled;
        cancelar.enabled:=not cancelar.enabled;
    end;
end.

