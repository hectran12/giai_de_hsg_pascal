program bai2;
type
        arr = array[0..1000] of string;
var
        f,g: text;
        a: string;
        chars: arr;
        leng, i: integer;
const
        fileinp = 'trieuphu.inp';
        fileout = 'trieuphu.out';

function getlength_count (str: string): integer;
var
        count, i: integer;
begin
     count := 1;
     for i:=1 to length(str) do begin
         if str[i] = ' ' then count := count + 1;
     end;
     getlength_count := count;
end;

function sort_char (arrs: arr; count_: integer): string;
var
        count, i, i2: integer;
        c: char;
        arr_: arr;
        res: string;
begin
        count := 0;
        for c:='A' to 'Z' do begin
            for i2:=0 to count_-1 do begin
                if c = arrs[i2][1] then begin
                    arr_[count] := arrs[i2];
                    count := count+1;
                end;
            end;
        end;
        res := '';
        for i:=0 to count_-1 do begin
            res := res + arr_[i] + ' ';
        end;
        sort_char := res;
end;

function explode_space (str: string): arr;
var count, i: integer;
        temp: string;
        arr_ : arr;
        count_element: integer;
begin
        temp := '';
        count_element := 0;
        for i:=1 to length(str) do begin
                if str[i] = ' ' then begin
                     arr_[count_element] := temp;
                     count_element := count_element + 1;
                     temp := '';
                end
                else begin
                    temp := temp + str[i];
                end;

        end;
        arr_[count_element] := temp;
        explode_space := arr_;
end;


begin
        assign (f, fileinp);
        assign (g, fileout);
        reset(f);
        rewrite(g);
        read(f, a);
        leng := getlength_count(a);
        chars := explode_space(a);
        writeln(g, leng);
        writeln(g, sort_char(chars, leng));
        close(f);
        close(g);
end.
