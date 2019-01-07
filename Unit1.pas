unit Unit1;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, Buttons;

type
    TForm1 = class(TForm)
        BitBtn1: TBitBtn;
        BitBtn2: TBitBtn;
        procedure BitBtn1Click(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    Form1: TForm1;

implementation

uses untSistemaVendas;

{$R *.dfm}

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
    Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
    HTaskbar: HWND;
    OldVal: LongInt;
begin
    {  // Encontra a janela da aplicação na taskbar
      HTaskBar := FindWindow('Shell_TrayWnd', nil);
      // Desabilita a taskBar
      EnableWindow(HTaskBar, False);
      // Oculta a TaskBar
      ShowWindow(HTaskbar, SW_HIDE);
      //Tira a borda do formulário
      Form1.BorderStyle := bsNone;
      //Configura o formulário para ficar sempre a frente de outras janelas
      Form1.FormStyle := fsStayOnTop;
      //Altera a pomsição do form, para "colar" à esquerda e ao topo
      Form1.Left := 0;
      Form1.Top  := 0;
      //Altera o tamanho do formulário para o tamanho da tela
      Form1.Height := Screen.Height;
      Form1.Width := Screen.Width;
    }

end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var
    HTaskbar: HWND;
    OldVal: LongInt;
begin
    //Encontra a janela da aplicação na TaskBar
    HTaskBar := FindWindow('Shell_TrayWnd', nil);
    //habilita novamente a 'taskbar
    EnableWindow(HTaskBar, True);
    //Exibe novamente a taskbar
    ShowWindow(HTaskbar, SW_SHOW);
end;

end.

