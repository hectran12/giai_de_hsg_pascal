program bai2;
var
        inp: string;

function process (str: string): boolean;
var
        i, count_n, count_e, count_t, count_teen: longint;
        running: boolean;
begin
      count_n := 0;
      count_e := 0;
      count_t := 0;
      for i:=1 to length(str) do begin
          if str[i] = 'T' then begin
              count_t := count_t + 1;
          end
          else if str[i] = 'E' then begin
              count_e := count_e + 1;
          end
          else if str[i] = 'N' then begin
              count_n := count_n + 1;
          end;
      end;
      writeln('T = ', count_t);
      writeln('E = ', count_e);
      writeln('N = ', count_n);
      running := True;
      count_teen := 0;
      while running do begin
        count_t := count_t - 1;
        count_e := count_e - 2;
        count_n := count_n - 1;
        if count_t <= 0 then begin
            break;
        end
        else if count_e <= 0 then begin
            break;
        end
        else if count_n <= 0 then begin
            break;
        end;
        count_teen := count_teen + 1;
      end;

      writeln('TEEN = ', count_teen);

end;

begin
        readln(inp);
        process(inp);
        readln;
end.
