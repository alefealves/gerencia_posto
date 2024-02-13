unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.WinXPickers;


type
  Tform_principal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBLitros: TDBEdit;
    Label3: TLabel;
    DBValor: TDBEdit;
    Label4: TLabel;
    DBImposto: TDBEdit;
    Label5: TLabel;
    DBData: TDBEdit;
    DBBomba: TDBLookupComboBox;
    Panel1: TPanel;
    btNovo: TButton;
    btSalvar: TButton;
    btEditar: TButton;
    btExcluir: TButton;
    PageControl1: TPageControl;
    tbAbastecimento: TTabSheet;
    tbVolumeVendido: TTabSheet;
    btCancelar: TButton;
    qryCombustivel: TFDQuery;
    edCombustivel: TEdit;
    edValorLitro: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edPercImposto: TEdit;
    Label8: TLabel;
    DBGridAbastecimento: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    btPesquisar: TButton;
    Label9: TLabel;
    dtInicial: TDateTimePicker;
    dtFim: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    codBomba: TDBLookupComboBox;
    qryBombaSearch: TFDQuery;
    qryBombaSearchCODIGO: TIntegerField;
    qryBombaSearchNOME: TStringField;
    dsBombaSearch: TDataSource;
    FDAbastecimento: TFDQuery;
    FDAbastecimentoCODIGO: TIntegerField;
    FDAbastecimentoCODIGO_BOMBA: TIntegerField;
    FDAbastecimentoLITROS: TSingleField;
    FDAbastecimentoVALOR: TSingleField;
    FDAbastecimentoIMPOSTO: TSingleField;
    FDAbastecimentoDATA: TSQLTimeStampField;
    DSAbastecimento: TDataSource;
    DSBomba: TDataSource;
    FDBomba: TFDQuery;
    FDBombaCODIGO: TIntegerField;
    FDBombaNOME: TStringField;
    FDBombaCODIGO_TANQUE: TIntegerField;
    FDBombaCODIGO_COMBUSTIVEL: TIntegerField;
    procedure btNovoClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure DBValorExit(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FDAbastecimentoCODIGO_BOMBAChange(Sender: TField);
  private
    { Private declarations }
    function validaDados() : Boolean;
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}

uses uDados;

procedure Tform_principal.btExcluirClick(Sender: TObject);
begin
  if Assigned(DSAbastecimento.DataSet) then
     DSAbastecimento.DataSet.Delete;

  PageControl1.ActivePage := tbAbastecimento;
  ShowMessage('Abastecimento excluído com sucesso!');
end;

procedure Tform_principal.btNovoClick(Sender: TObject);
begin
  if Assigned(DSAbastecimento.DataSet) then
     DSAbastecimento.DataSet.Insert;

  PageControl1.ActivePage := tbAbastecimento;
end;

procedure Tform_principal.btPesquisarClick(Sender: TObject);
var dat_ini, dat_fim : string;
begin

  if (DateToStr(dtInicial.Date) <> '') and (DateToStr(dtFim.Date) <> '') then begin

    dat_ini := '';
    dat_fim := '';

    Try

      dat_ini := QuotedStr(StringReplace(DateToStr(dtInicial.Date),'/','.',[rfReplaceAll, rfIgnoreCase]));
      dat_fim := QuotedStr(StringReplace(DateToStr(dtFim.Date),'/','.',[rfReplaceAll, rfIgnoreCase]));

      DSAbastecimento.DataSet.Close;
        //montagem do sql de acordo com os parametros
        FDAbastecimento.SQL.Clear;

        if (Length(codBomba.Text) > 0) or ((DateToStr(dtInicial.Date) <> '') and (DateToStr(dtFim.Date) <> '')) then begin

           FDAbastecimento.SQL.Text := 'select * from abastecimento where';
        end
        else begin
           FDAbastecimento.SQL.Text := 'select * from abastecimento order by 1;';
        end;


        if (Length(codBomba.Text) > 0) then
            FDAbastecimento.SQL.Text := ' codigo_bomba = :cod_bomba'+ dsBombaSearch.DataSet.FieldByName('codigo').AsString;

        if (Length(codBomba.Text) > 0) and (DateToStr(dtInicial.Date) <> '') and (DateToStr(dtFim.Date) <> '') then begin

            FDAbastecimento.SQL.Text := FDAbastecimento.SQL.Text +
                                       ' and ((cast(data as date) >= :dat_ini)'+
                                       ' and (cast(data as date) <= :dat_fim))'+
                                       ' order by 1;';
            FDAbastecimento.ParamByName()
        end
        else if (DateToStr(dtInicial.Date) <> '') and (DateToStr(dtFim.Date) <> '') then begin

           FDAbastecimento.SQL.Text := FDAbastecimento.SQL.Text +
                                      ' ((cast(data as date) >= :dat_ini)'+
                                      ' and (cast(data as date) <= :dat_fim))'+
                                      ' order by 1;';
        end;
      DSAbastecimento.DataSet.Open;
    Except
    on E: Exception do
      begin
        ShowMessage('Erro: ' + E.Message);
      end;
    end;
  end
  else begin

    ShowMessage('Favor, preencher data inicial e final');
  end;
end;

procedure Tform_principal.btSalvarClick(Sender: TObject);
begin
  if (validaDados) then begin

    try
      DSAbastecimento.DataSet.Post;

      PageControl1.ActivePage := tbAbastecimento;
      ShowMessage('Abastecimento salvo com sucesso!');
    Except
    on E: Exception do
      begin
        ShowMessage('Erro: ' + E.Message );
      end;
    end;
  end;
end;

procedure Tform_principal.DBValorExit(Sender: TObject);
begin
  if (DBValor.Text<>'') then begin

     //calcula a quantidade de litros de acordo com o valor requisitado
     DSAbastecimento.DataSet.FieldByName('LITROS').AsFloat := (StrToFloat(DBValor.Text)/StrToFloat(edValorLitro.Text));

     //calcula o imposto
     DSAbastecimento.DataSet.FieldByName('IMPOSTO').AsFloat := (StrToFloat(DBValor.Text) * (StrToFloat(edPercImposto.Text)/100));
  end;
end;

procedure Tform_principal.FDAbastecimentoCODIGO_BOMBAChange(Sender: TField);
begin
  if (DBBomba.Text<>'') and (FDAbastecimento.State in [dsInsert,dsEdit]) then begin

     //busca o combustível da bomba, valor por litro e imposto
     qryCombustivel.Close;
     qryCombustivel.SQL.Text := 'select nome,valor_litro,imposto from combustivel where codigo = :codigo;';
     qryCombustivel.ParamByName('codigo').AsString := DSBomba.DataSet.FieldByName('codigo_combustivel').AsString;
     qryCombustivel.Open();

     edCombustivel.Text := qryCombustivel.FieldByName('nome').AsString;
     edValorLitro.Text := qryCombustivel.FieldByName('valor_litro').AsString;
     edPercImposto.Text := qryCombustivel.FieldByName('imposto').AsString;

     qryCombustivel.Close;
  end;
end;

procedure Tform_principal.FormShow(Sender: TObject);
begin
  qryBombaSearch.Close;
  qryBombaSearch.Open;
  FDBomba.Close;
  FDBomba.Open();
  dtInicial.Date := Date - 7;
  dtFim.Date := Date;

  btPesquisar.Click;
end;

function Tform_principal.validaDados: Boolean;
begin
  if (DBBomba.Text = '') then begin
     ShowMessage('Favor, preencha o campo Bomba');
     DBBomba.SetFocus;
     result := false;
  end
  else if (DBLitros.Text = '') then begin
     ShowMessage('Favor, preencha o campo Litros');
     DBLitros.SetFocus;
     result := false;
  end
  else if (DBValor.Text = '') then begin
     ShowMessage('Favor, preencha o campo Valor');
     DBValor.SetFocus;
     result := false;
  end;
  result := true;
end;

procedure Tform_principal.btCancelarClick(Sender: TObject);
begin
  if Assigned(DSAbastecimento.DataSet) then
     DSAbastecimento.DataSet.Cancel;

  PageControl1.ActivePage := tbAbastecimento;
  ShowMessage('Operacao Cancelada.');
end;

procedure Tform_principal.btEditarClick(Sender: TObject);
begin
  if Assigned(DSAbastecimento.DataSet) then
     DSAbastecimento.DataSet.Edit;

  PageControl1.ActivePage := tbAbastecimento;
end;

end.
