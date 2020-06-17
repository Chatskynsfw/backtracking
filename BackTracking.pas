unit BackTracking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UBackTrack, StdCtrls;

type
  TForm1 = class(TForm)
    ButtonTask: TButton;
    OpenDialog1: TOpenDialog;
    MemoOutput: TMemo;
    MemoInput: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure ButtonTaskClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonTaskClick(Sender: TObject);
var ring : TRing;
  maxring : Tring;
  maxcount : integer;
  i,count:integer;
begin
  count := MemoInput.Lines.Count;
  for i := 1 to count do
    begin
      ring[i] := AnsiLowerCase(MemoInput.Lines[i - 1]);
    end;
  maxcount := 0;
  Solve(ring, count, maxcount, maxring);
  Label3.Caption := 'Максимальная длина: ' + inttostr(maxCount);
  MemoOutput.Lines.Clear;
  for i := 1 to maxCount do
    memoOutput.Lines.Add(maxring[i]);
  if (maxCount = 0) then
    memoOutput.Lines.Add('Возможных колец нет');
end;

end.
