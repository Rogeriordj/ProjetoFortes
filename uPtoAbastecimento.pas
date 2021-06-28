unit uPtoAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, uConexao, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPtoAbastecimento = class(TForm)
    GroupBox1: TGroupBox;
    btnGravar: TSpeedButton;
    btnIncluir: TSpeedButton;
    btnAlterar: TSpeedButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label23: TLabel;
    dbedtCgc: TDBEdit;
    dbeNome: TDBEdit;
    dbeEndereco: TDBEdit;
    dbeBairro: TDBEdit;
    dbeCidade: TDBEdit;
    dbeGerente: TDBEdit;
    dbeCep: TDBEdit;
    dbeTelefone: TDBEdit;
    dbEdtEstado: TDBEdit;
    qryPonto: TFDQuery;
    qryPontoID: TIntegerField;
    qryPontoNOME: TStringField;
    qryPontoENDERECO: TStringField;
    qryPontoCONTATO: TStringField;
    qryPontoBAIRRO: TStringField;
    qryPontoCIDADE: TStringField;
    qryPontoESTADO: TStringField;
    qryPontoCEP: TStringField;
    qryPontoTELEFONE: TStringField;
    qryPontoCNPJ: TStringField;
    dsPonto: TDataSource;
    FDUpdateSQL1: TFDUpdateSQL;
    DBGrid1: TDBGrid;
    btnExcluir: TSpeedButton;
    btnCancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Controle;
  public
    { Public declarations }
  end;

var
  frmPtoAbastecimento: TfrmPtoAbastecimento;

implementation

{$R *.dfm}

procedure TfrmPtoAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmPtoAbastecimento.FormShow(Sender: TObject);
begin
  qryPonto.Open();
  Controle;
end;

procedure TfrmPtoAbastecimento.btnAlterarClick(Sender: TObject);
begin
  if qryPonto.Active then
    qryPonto.Open();
  qryponto.Edit;
  Controle;
  dbeNome.SetFocus;
end;

procedure TfrmPtoAbastecimento.btnCancelarClick(Sender: TObject);
begin
  qryPonto.Cancel;
  Controle;
end;

procedure TfrmPtoAbastecimento.btnExcluirClick(Sender: TObject);
begin
  qryPonto.Delete;
  qryPonto.Refresh;
  Controle;
end;

procedure TfrmPtoAbastecimento.btnGravarClick(Sender: TObject);
begin
  qryPonto.Post;
  qryPonto.Refresh;
  Controle;
end;

procedure TfrmPtoAbastecimento.btnIncluirClick(Sender: TObject);
begin
  qryPonto.Close;
  qryPonto.Open();
  qryPonto.Insert;
  Controle;
  dbeNome.SetFocus;
end;

procedure TfrmPtoAbastecimento.Controle;
begin
  btnIncluir.Enabled  := qryPonto.State in[dsBrowse];
  btnExcluir.Enabled  := qryPonto.State in[dsBrowse];
  btnAlterar.Enabled  := qryPonto.State in[dsBrowse];
  btnCancelar.Enabled := qryPonto.State in[dsEdit,dsInsert];
  btnGravar.Enabled   := qryPonto.State in[dsEdit,dsInsert];
end;

end.
