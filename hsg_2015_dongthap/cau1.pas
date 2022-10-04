program xepgiay;
var
        a, b, i: integer;

begin
    writeln('Nhap do day to giay a = ');
    readln(a);
    writeln('Nhap do day can co b = ');
    readln(b);
    i := 0;
    while a < b*10000 do begin
        a := a * 2;
        i := i + 1;
    end;
    writeln(i);
    readln;
end.
