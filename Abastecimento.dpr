program Abastecimento;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uPtoAbastecimento in 'uPtoAbastecimento.pas' {frmPtoAbastecimento},
  uOrdAbastecimento in 'uOrdAbastecimento.pas' {frmOrdAbastecimento},
  uConexao in 'uConexao.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmPtoAbastecimento, frmPtoAbastecimento);
  Application.CreateForm(TfrmOrdAbastecimento, frmOrdAbastecimento);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
