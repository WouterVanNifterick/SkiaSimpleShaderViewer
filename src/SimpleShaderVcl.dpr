program SimpleShaderVcl;

uses
  Vcl.Forms,
  SimpleShaderVcl.Forms.Main in 'SimpleShaderVcl.Forms.Main.pas' {frmShaderView};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmShaderView, frmShaderView);
  Application.Run;
end.
