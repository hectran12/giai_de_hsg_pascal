program bai3;
var
        f, g:text;
        arr: array[0..1000] of longint;
        n,m, i, z,x,y, result: longint;
        check : boolean;
const
        fileinp = 'dienkinh.inp';
        fileout = 'dienkinh.out';


begin
        assign(f, fileinp);
        assign(g, fileout);

        reset(f); rewrite(g);
        read(f, n);
        read(f, m);

        for i:=0 to n-1 do begin
            read(f, arr[i]);
        end;

        for i:=0 to n-1 do begin
                for z:=i to n-1 do begin
                    if arr[i] > arr[z] then result := arr[i] - arr[z]
                    else if arr[i] < arr[z] then result := arr[z] - arr[i]
                    else
                        result := 0;
                    if result = m then begin
                        x := i;
                        y := z;
                        check := true;
                        break;
                    end;
                end;
                if check = true then begin
                    break;
                end;

        end;
        write(g, x+1, ' ', y+1);
        readln;
        close(f);
        close(g);

end.
