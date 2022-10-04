program bai3;
var
        tokhoiluong, i: integer;
        f,g,c :text;
        a: integer;
const
        fileinp = 'xe.inp';
        fileout = 'can.out';
        filecancel = 'huy.out';
begin
        assign(f, fileinp);
        assign(g, fileout);
        assign(c, filecancel);
        reset(f);
        rewrite(g);
        rewrite(c);
        read(f, a);
        for i:=1 to a do begin
                read(f, a);
                if a > 20 then begin
                    writeln(c, i);
                end;
                tokhoiluong := tokhoiluong + a;
        end;
        write(g, tokhoiluong);
        close(f);
        close(g);
        close(c);
        readln;

end.
