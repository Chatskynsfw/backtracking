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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MemoInput: TEdit;
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

function GetNextWord(input : string; var word : string; var n : integer):boolean;
var len : integer;
begin
  len := length(input);
  word := '';
  while (n <= len) and (input[n] <> ' ') do
    begin
      word := word + input[n];
      inc(n);
    end;
  while (n <= len) and (input[n] = ' ') do
    inc(n);
  result := word <> '';
end;

procedure TForm1.ButtonTaskClick(Sender: TObject);
var ring : TRing;
  maxring : Tring;
  maxcount : integer;
  i,n,count : integer;
  input, word : string;
begin
  count := 0;
  input := Trim(MemoInput.Text);
  n := 1;
  while GetNextWord(input, word, n) do
    begin
      inc(count);
      ring[count] := AnsiUpperCase(word);
    end;               
  maxcount := 0;
  Solve(ring, count, maxcount, maxring);
  Label3.Caption := '������������ �����: ' + inttostr(maxCount);
  MemoOutput.Lines.Clear;
  for i := 1 to maxCount do
    memoOutput.Lines.Add(maxring[i]);
  if (maxCount = 0) then
    memoOutput.Lines.Add('��������� ����� ���');
end;

end.
