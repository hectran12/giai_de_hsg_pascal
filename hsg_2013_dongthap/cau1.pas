program bai1;
var
    sont: array[0..1000] of integer;
    sott: array[0..1000] of integer;
    n, i, cnt, ctt: integer;
begin
    write('N = ');
    readln(n);
    for i:=1 to n do begin
        if n mod i = 0 then begin
            sott[ctt] := i;
            ctt := ctt+1;

            if i = 2 then begin
                sont[cnt] := i;
                cnt := cnt+1;
            end;
            if i mod 2 <> 0 then begin
                if i > 2 then begin
                    sont[cnt] := i;
                    cnt := cnt+1;
                end;
            end;
        end;
    end;

    write('cac uoc la: ');
    for i:=0 to ctt-1 do begin
        write(sott[i], ' ');
    end;
    writeln('');
    write('so nguyen to: ');
    for i:=0 to cnt-1 do begin
        write(sont[i], ' ');
    end;
end.
