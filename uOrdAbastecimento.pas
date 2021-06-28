{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N-,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN RLINK_WARNING ON}
{$WARN IMPLICIT_STRING_CAST ON}
{$WARN IMPLICIT_STRING_CAST_LOSS ON}
{$WARN EXPLICIT_STRING_CAST OFF}
{$WARN EXPLICIT_STRING_CAST_LOSS OFF}
{$WARN CVT_WCHAR_TO_ACHAR ON}
{$WARN CVT_NARROWING_STRING_LOST ON}
{$WARN CVT_ACHAR_TO_WCHAR ON}
{$WARN CVT_WIDENING_STRING_LOST ON}
{$WARN NON_PORTABLE_TYPECAST ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
{$WARN IMMUTABLE_STRINGS OFF}
unit uOrdAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, uConexao;

type
  TfrmOrdAbastecimento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    dsOrdem: TDataSource;
    GroupBox2: TGroupBox;
    btnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    btnGravar: TSpeedButton;
    btnIncluir: TSpeedButton;
    DBGrid1: TDBGrid;
    qryOrdem: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    qryOrdemID: TIntegerField;
    qryOrdemPLACA: TStringField;
    qryOrdemDT_ABASTECIMENTO: TDateField;
    qryOrdemPTO_ABASTECIMENTO: TIntegerField;
    qryOrdemCOMBUSTIVEL: TStringField;
    qryOrdemLITRAGEM: TCurrencyField;
    qryOrdemVLR_LITRO: TCurrencyField;
    qryOrdemVLR_TOTAL: TFloatField;
    qryOrdemIMPOSTO: TCurrencyField;
    btnCancelar: TSpeedButton;
    qryTanque: TFDQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    dsTanque: TDataSource;
    qryTanqueID: TIntegerField;
    qryTanqueDESCRICAO: TStringField;
    qryTanqueTP_COMBUSTIVEL: TStringField;
    qryTanquePTO_ABASTECIMENTO: TIntegerField;
    DBLookupComboBox3: TDBLookupComboBox;
    qryBomba: TFDQuery;
    dsBomba: TDataSource;
    DBEdit7: TDBEdit;
    qryBombaID: TIntegerField;
    qryBombaTANQUE: TIntegerField;
    qryBombaDESCRICAO: TStringField;
    dsPonto: TDataSource;
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
    qryOrdemTANQUE: TIntegerField;
    qryOrdemBOMBA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryOrdemTANQUEChange(Sender: TField);
    procedure qryOrdemPTO_ABASTECIMENTOChange(Sender: TField);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure Controle;
    procedure Calculo;
  public
    { Public declarations }
  end;

var
  frmOrdAbastecimento: TfrmOrdAbastecimento;

implementation

{$R *.dfm}

procedure TfrmOrdAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfrmOrdAbastecimento.FormShow(Sender: TObject);
begin
  qryOrdem.Open();
  qryPonto.Open();
  qryOrdemPTO_ABASTECIMENTOChange(nil);
  qryOrdemTANQUEChange(nil);
  Controle;
end;

procedure TfrmOrdAbastecimento.qryOrdemPTO_ABASTECIMENTOChange(Sender: TField);
begin
  qryTanque.Close;
  qryTanque.SQL.Clear;
  qryTanque.SQL.Add('select * from "Tanques"');
  qryTanque.SQL.Add('where pto_abastecimento=:ponto');
  qryTanque.ParamByName('ponto').AsInteger := qryPontoID.AsInteger;
  qryTanque.Active := True;
  qryTanque.Open();
end;

procedure TfrmOrdAbastecimento.qryOrdemTANQUEChange(Sender: TField);
begin
  qryBomba.Close;
  qryBomba.SQL.Clear;
  qrybomba.SQL.Add('SELECT * FROM "BOMBA"');
  qryBomba.SQL.Add('WHERE TANQUE=:VALOR');
  qryBomba.ParamByName('VALOR').AsInteger := qryTanqueID.AsInteger;
  qryBomba.Active := True;
  qryBomba.Open();
end;

procedure TfrmOrdAbastecimento.btnAlterarClick(Sender: TObject);
begin
  if qryOrdem.Active then
    qryOrdem.Open();
  qryOrdem.Edit;
  Controle;
  dbEdit1.SetFocus;
end;

procedure TfrmOrdAbastecimento.btnCancelarClick(Sender: TObject);
begin
  qryOrdem.Cancel;
  Controle;
end;

procedure TfrmOrdAbastecimento.btnExcluirClick(Sender: TObject);
begin
  qryOrdem.Delete;
  qryOrdem.Refresh;
  Controle;
end;

procedure TfrmOrdAbastecimento.btnGravarClick(Sender: TObject);
begin
  qryOrdem.Post;
  qryOrdem.Refresh;
  Controle;
end;

procedure TfrmOrdAbastecimento.btnIncluirClick(Sender: TObject);
begin
  qryOrdem.Close;
  qryOrdem.Open();
  qryOrdem.Insert;
  DBEdit1.SetFocus;
  Controle;
end;

procedure TfrmOrdAbastecimento.Calculo;
begin
  if (qryOrdemLITRAGEM.AsFloat > 0) and (qryOrdemVLR_LITRO.AsFloat > 0) then
  begin
    qryOrdemVLR_TOTAL.AsFloat := qryOrdemLITRAGEM.AsFloat * qryOrdemVLR_LITRO.AsFloat;

    qryOrdemIMPOSTO.AsFloat := (qryOrdemVLR_TOTAL.AsFloat * 13)/100;
  end;

end;

procedure TfrmOrdAbastecimento.Controle;
begin
  btnIncluir.Enabled  := qryOrdem.State in[dsBrowse];
  btnExcluir.Enabled  := qryOrdem.State in[dsBrowse];
  btnAlterar.Enabled  := qryOrdem.State in[dsBrowse];
  btnCancelar.Enabled := qryOrdem.State in[dsEdit,dsInsert];
  btnGravar.Enabled   := qryOrdem.State in[dsEdit,dsInsert];
  GroupBox1.Enabled   := qryOrdem.State in[dsEdit,dsInsert];
end;

procedure TfrmOrdAbastecimento.DBEdit4Exit(Sender: TObject);
begin
  Calculo;
end;

end.
