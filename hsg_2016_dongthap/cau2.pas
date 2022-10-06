program bai2;
var
        f, g: text;
        n, s, t, chia1, chia2, result: longint;
const
        fileinp = 'tauthuy.inp';
        fileout = 'tauthuy.out';
begin
        assign(f, fileinp);
        assign(g, fileout);
        reset(f);
        rewrite(g);
        read(f, n);
        read(f, s);
        read(f, t);

        chia1 := round(n/s);
        chia2 := round(n/t);

        if chia1 > chia2 then begin
                result := chia1 - chia2;
        end
        else if chia1 < chia2 then begin
                result := chia2 - chia1;
        end
        else
                result := chia1;
        write(g, result);
        close(f);
        close(g);

end.
