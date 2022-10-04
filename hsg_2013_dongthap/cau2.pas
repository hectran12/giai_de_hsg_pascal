program bai2;
var i: integer;
        f,g: text;
        sum, num_cv: integer;
        a: string;
const
        fileinp = 'bai2.inp';
        fileout = 'bai2.out';

function convertStringToNumber (str: string): integer;
var
        i: integer;
        checkReturn: boolean;
const
        stringNumbers : array[0..9] of string = ('0','1','2','3','4','5','6','7','8','9');
        integerNumbers : array[0..9] of integer = (0,1,2,3,4,5,6,7,8,9);
begin
    checkReturn := False;
    for i:=0 to length(stringNumbers)-1 do begin
        if stringNumbers[i] = str then begin
            convertStringToNumber := integerNumbers[i];
            checkReturn := True;
            break;
        end;
    end;
    if checkReturn = False then begin
        convertStringToNumber := 0;
    end
end;


begin
      assign (f, fileinp);
      assign (g, fileout);
      reset(f);
      rewrite(g);

      read(f, a);
      for i:=1 to length(a) do begin
          num_cv := convertstringtonumber(a[i]);
          if num_cv <> 0 then begin
              sum := sum + num_cv;
          end;
      end;
      write(g, sum);
      close(f);
      close(g);

      readln;
end.
