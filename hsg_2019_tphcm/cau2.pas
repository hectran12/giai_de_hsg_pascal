program bai2;
type
        item = record
                n: string;
                v: longint;
        end;
var
        f, f2, g: text;
        a: string;
        b, count: longint;
        max: item;
        arr: array[0..1000] of item;
const
        fileinp = 'mtbit.inp';
        fileout = 'mtbit.out';
begin
        assign(f, fileinp);
        assign(f2, fileinp);
        assign(g, fileout);
        reset(f); reset(f2);
        rewrite(g);
        count := 0;
        while eof(f)=false do begin
             readln(f2, a); // string
             readln(f, b); // longint
             arr[count].n := a;
             arr[count].v := b;
             inc(count);
        end;
        max := arr[0];
        for b:=0 to count-1 do begin
                if arr[b].v > max.v then begin
                    max := arr[b];
                end;
        end;
        write(g, max.n);
        close(f);close(f2);close(g);
end.
