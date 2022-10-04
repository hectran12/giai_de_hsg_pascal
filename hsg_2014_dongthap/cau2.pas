program bl2;
uses
        sysutils;
var
        c:char;
        f,g :text;
        a: string;
        vaild: string;
        xau: string;
        i, count: integer;
const
        fileinp = 'NENXAU.inp';
        fileout = 'NENXAU.out';

function lockitu (str: string; find: string): integer;
var i, counter: integer;
begin
        counter := 0;
        for i:=1 to length(str) do begin
            if (str[i] = find) then counter := counter + 1;
        end;
        lockitu := counter;
end;

function isUpper (str: string): boolean;
var c: char;
        result: boolean;
begin
        result := false;
        for c := 'A' to 'Z' do begin
                if str = c then begin
                    result := True;
                    break;
                end;

        end;
        isUpper := result;

end;

begin
        count := 0;
        assign(f, fileinp);
        assign(g, fileout);
        reset(f);
        rewrite(g);

        read(f, a);
        for c := 'A' to 'Z' do begin
            count := lockitu(a, c);
            if count > 0 then begin
                xau := xau + c + IntToStr(count);
            end;
        end;

        for i:=1 to length(a) do begin
            if isUpper(a[i]) = True then vaild := vaild + a[i];
        end;


        writeln(g, vaild);
        writeln(g, xau);

        close(f);
        close(g);
end.
