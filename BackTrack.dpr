program BackTrack;

uses
  Forms,
  BackTracking in 'BackTracking.pas' {Form1},
  UBackTrack in 'UBackTrack.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
