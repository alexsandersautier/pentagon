unit uPentagonTest;

interface
uses
  DUnitX.TestFramework,
  uPentagon;

type

  [TestFixture]
  TPentagonTest = class
  strict private
    FrmPentagon: TfrmPentagon;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;

    [Test]
    [TestCase('Entrada de 2 = 6', '2,6')]
    [TestCase('Entrada de 5 = 51', '5,51')]
    procedure TestCalculate(const AValue: Integer; const _Result: Extended);
  end;

implementation

procedure TPentagonTest.Setup;
begin
  FrmPentagon := TfrmPentagon.Create(nil);
end;

procedure TPentagonTest.TearDown;
begin
  FrmPentagon.Free;
end;

procedure TPentagonTest.TestCalculate(const AValue: Integer; const _Result: Extended);
var
  AResult: Extended;
begin
  AResult := FrmPentagon.Calculate(AValue);
  Assert.AreEqual(AResult, _Result);
end;


initialization
  TDUnitX.RegisterTestFixture(TPentagonTest);
end.
