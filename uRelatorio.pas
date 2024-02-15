unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLXLSXFilter, RLXLSFilter,
  RLRichFilter, RLPDFFilter, RLFilters, RLHTMLFilter, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelatorio = class(TForm)
    RLHTMLFilter1: TRLHTMLFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLXLSXFilter1: TRLXLSXFilter;
    Relatorio: TRLReport;
    rlbndCabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    rlbndRodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    rlbnd1: TRLBand;
    RLLabel9: TRLLabel;
    rlbnd2: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel5: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }

   end;
var
  frmRelatorio: TfrmRelatorio;

implementation

{$R *.dfm}
uses uDados;

procedure TfrmRelatorio.FormCreate(Sender: TObject);
begin
  uDados.form_dados.FDRelatorio.Open;
  uDados.form_dados.FDRelatorioSum.Open;
end;

procedure TfrmRelatorio.FormDestroy(Sender: TObject);
begin
  uDados.form_dados.FDRelatorio.Close;
  uDados.form_dados.FDRelatorioSum.Close;
end;

end.
