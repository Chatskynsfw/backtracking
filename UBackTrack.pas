unit UBackTrack;

interface

Const
  MaxN = 20;

type
  TRing = array [1..MaxN] of string;
  TUsed = array [1..MaxN] of boolean;

  procedure Solve (var Elements : TRing; len : integer;
  var MaxCount : integer; var MaxRing : TRing);

implementation

procedure Solve (var Elements : TRing; len : integer;
  var MaxCount : integer; var MaxRing : TRing);

var
  Count : integer;
  Ring : TRing;
  Used : TUsed;
  vowels : set of char;
  consonants : set of char;

  function CheckWord(w : string):boolean;
  var vow, con, j : integer;
  begin
    vow := 0;
    con := 0;
    for j := 1 to Length(w) do
      begin
        if (w[j] in vowels) then
          inc(vow)
        else
          if (w[j] in consonants) then
            inc(con);
      end;
    result := vow = con;
    if ((Count <> 0) and result) then
      result := w[1] = Ring[count][length(Ring[count])]
  end;

  function CheckRing:boolean;
  begin
    result := Count <> 0;
    if (result) then
      result := Ring[1][1] = Ring[Count][Length(Ring[Count])];
  end;

  procedure ClearUsed;
  var j : integer;
  begin
    for j := 1 to MaxN do
      Used[j] := false;
  end;

  procedure TryPut (i : integer);
  var j : integer;
  begin
    if (CheckRing) then
      begin
        if (MaxCount < Count) then
          begin
            MaxCount := Count;
            MaxRing := Ring;
          end;
      end;
    if (i <= len) then
      begin
        used[i] := true;
        if (CheckWord(Elements[i])) then
          begin
            inc(Count);
            Ring[Count] := Elements[i];
            for j := 1 to len + 1 do
              if (not used[j]) then
                TryPut(j);
            dec(Count);
          end;
        for j := 1 to len + 1 do
          if (not used[j]) then
            TryPut(j);
        used[i] := false;
      end;
  end;

begin
  count := 0;
  ClearUsed;
  vowels := ['À', 'Î', 'Ó', 'Û', 'Ý', '¨', 'Þ', 'È', 'Å'];
  consonants := ['Á', 'Â', 'Ã', 'Ä', 'Æ', 'Ç', 'É', 'Ê', 'Ë', 'Ì', 'Í',
    'Ï', 'Ð', 'Ñ', 'Ò', 'Ô', 'Õ', 'Ö', '×', 'Ø', 'Ù', 'Ú', 'Ü'];
  TryPut(1);
end;


end.

