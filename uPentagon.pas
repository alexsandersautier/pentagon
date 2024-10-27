unit uPentagon;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPentagon = class(TForm)
    EdtInput: TEdit;
    BtnCalculate: TButton;
    LblResult: TLabel;
    procedure BtnCalculateClick(Sender: TObject);
  private
    { Private declarations }

  public
    function Calculate(AValue: Integer): Integer;
    { Public declarations }
  end;

var
  frmPentagon: TfrmPentagon;

implementation

{$R *.dfm}
procedure TfrmPentagon.BtnCalculateClick(Sender: TObject);
begin
  if String.IsNullOrWhiteSpace(EdtInput.Text) then
  begin
    EdtInput.SetFocus;
    raise Exception.Create('É obrigatório informar um número inteiro');
  end;

  LblResult.Caption := Format('Na %sª iteração, há %d pontos no pentágono.', [
    EdtInput.Text,
    Calculate(StrToInt(EdtInput.Text))
  ]);
end;

function TfrmPentagon.Calculate(AValue: Integer): Integer;
var
  I: Integer;
begin
  Result := 1;

  if AValue > 1 then
  begin
    for I := 1 to Pred(AValue) do
      Result := Result + (5 * I);
  end;
end;

end.
