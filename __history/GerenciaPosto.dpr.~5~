program GerenciaPosto;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {form_principal},
  uDados in 'uDados.pas' {form_dados: TDataModule},
  uRelatorio in 'uRelatorio.pas' {frmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_dados, form_dados);
  Application.Run;
end.
