unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uPtoAbastecimento, uOrdAbastecimento;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Abastecimento1: TMenuItem;
    pontosdeAbastecimento1: TMenuItem;
    OrdemdeAbastecimento1: TMenuItem;
    Relatrio1: TMenuItem;
    Abastecimentos1: TMenuItem;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pontosdeAbastecimento1Click(Sender: TObject);
    procedure OrdemdeAbastecimento1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPrincipal.OrdemdeAbastecimento1Click(Sender: TObject);
begin
Screen.Cursor  := crHourGlass;
   try
      frmOrdAbastecimento := TfrmOrdAbastecimento.Create(Application);
      frmOrdAbastecimento.WindowState  := wsNormal;
      frmOrdAbastecimento.ShowModal;
   finally
      frmOrdAbastecimento.Free;
   end;
end;

procedure TfrmPrincipal.pontosdeAbastecimento1Click(Sender: TObject);
begin
Screen.Cursor  := crHourGlass;
   try
      frmPtoAbastecimento := TfrmPtoAbastecimento.Create(Application);
      frmPtoAbastecimento.WindowState  := wsNormal;
      frmPtoAbastecimento.ShowModal;
   finally
      frmPtoAbastecimento.Free;;
   end;
end;

end.
