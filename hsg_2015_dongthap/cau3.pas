program bai3;
uses crt;
var
        tong, duc, lastduc, lasttong, i, solanxh, temp: qword;
        f,g:text;
const
        fileinp = 'svx1.inp';
        fileout = 'svx1.out';

begin
        assign(f, fileinp);
        assign(g, fileout);
        reset(f);
        rewrite(g);
        read(f, solanxh);
        tong := 3; // vong 4
        duc := 2; // vong 5
        lastduc := 1; // vong 4
        lasttong := 2; // vong 3
        for i:=4 to solanxh-1 do begin
                temp := tong;
                tong := tong + lasttong;
                lasttong := temp;
        end;
        for i:=5 to solanxh-1 do begin
            temp := duc;
            duc := duc + lastduc;
            lastduc := temp;
        end;
        writeln(g, tong);
        writeln(g,  duc);
        close(f);
        close(g);


end.
