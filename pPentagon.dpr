program pPentagon;

uses
  Vcl.Forms,
  uPentagon in 'uPentagon.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPentagon, frmPentagon);
  Application.Run;
end.
