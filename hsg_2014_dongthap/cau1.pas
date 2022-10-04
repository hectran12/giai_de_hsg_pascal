program bl1;
var
        counter, buy, dua, tienthua, i: longInt;
const
        listMoneys: array[0..2] of integer = (5000, 2000, 1000);

begin
        write('Nhap so tien mua hang: ');
        readln(buy);
        write('Nhap so tien khach hang dua: ');
        readln(dua);

        tienthua := dua - buy;

        writeln('So tien tra lai cho khach hang:', tienthua);
        for i:=0 to length(listMoneys)-1 do begin
                while tienthua >= listMoneys[i] do begin
                        tienthua := tienthua - listMoneys[i];
                        counter := counter + 1;
                end;
                writeln('So to ', listMoneys[i], ' dong: ', counter, ' to');
                counter := 0;
        end;

end.
