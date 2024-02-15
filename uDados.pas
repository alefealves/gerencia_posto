unit uDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tform_dados = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    dsDSRelatorio: TDataSource;
    FDRelatorio: TFDQuery;
    FDRelatorioDIA: TDateField;
    FDRelatorioTANQUE: TStringField;
    FDRelatorioBOMBA: TStringField;
    FDRelatorioVALOR: TBCDField;
    FDRelatorioSum: TFDQuery;
    FDRelatorioSumTOTAL: TBCDField;
    dsDSRelatorioSum: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_dados: Tform_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tform_dados.DataModuleCreate(Sender: TObject);
begin
  try
    FDConnection1.Open();
  finally

  end;
end;

end.
