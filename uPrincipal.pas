unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uPtoAbastecimento, uOrdAbastecimento, FireDAC.Phys.IBDef, FireDAC.Phys.IBWrapper, uConexao;

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
    procedure FormCreate(Sender: TObject);
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

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  appPath:String;
begin
  Application.CreateForm(TdmConexao, dmConexao);
  appPath := ExtractFilePath(ParamStr(0));

  dmConexao.FDConnection1.DriverName := 'IB';
  With dmConexao.FDConnection1.Params as TFDPhysIBConnectionDefParams do
  begin
    Protocol := ipTCPIP;
    Server := '127.0.0.1';
    Database := appPath + 'ABASTECIMENTO.GDB';
    UserName := 'SYSDBA';
    Password := 'masterkey';
    Port     := 3050
  end;
  dmConexao.FDConnection1.Connected := True;
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
