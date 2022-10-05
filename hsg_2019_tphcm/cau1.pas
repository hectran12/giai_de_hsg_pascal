program bai1;
var
        f, g:text;
        c: char;
        count : integer;
        clone_str:  string;
const
        fileinp = 'KITU.INP';
        fileout = 'KITU.OUT';


function getlength_filter (str: string): integer;
var
        i, z: integer;
        c: char;
        live: string;
        check: boolean;
        stt: integer;
begin
      live := '';
      stt := 0;
      for i:=1 to length(str) do begin
          check := true;
          for c:='A' to 'Z' do begin
              if (str[i] = c) then begin
                for z:=1 to length(live) do begin
                    if live[z] = c then begin
                        check := false;
                        break;
                    end;
                end;
                if check = true then begin
                        live := live + c;
                        stt := stt+1;
                        break;
                end;
              end;
          end;
      end;
      getlength_filter := stt;

end;


begin
    assign(f, fileinp);
    assign(g, fileout);
    reset(f);
    rewrite(g);

    read(f, clone_str);
    count := getlength_filter(clone_str);
    write(g, count);
    close(f);
    close(g);

end.
