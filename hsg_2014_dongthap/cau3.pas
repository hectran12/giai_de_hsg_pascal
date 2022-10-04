program bl3;
uses
        sysutils, crt;
type
        scores = array[0..1000] of real;
        score_return = record
                        number: string;
                        many: integer;
        end;
var
        scorert : array[0..1000] of score_return;
        score_clone: array[0..1000] of string;
        lang: score_return;
        count_return: integer;
        f,g: text;
        firstCountElements:integer;
        lastScore, HighScore: real;
        i, z:integer;
        arrCloneScores: scores;
        counter: integer;
        score: real;
        kiluc, a: string;
	fakestring1, fakestring2: string;
        fakenumber1, fakenumber2, fakenumber3: integer;
        checkpoint: boolean;
        av1, av2, av3: boolean;
        av1_str, av2_str, av3_str: string;
        top2, top3: string;
const
        fileinp = 'XETHANG.inp';
        fileout = 'XETHANG.out';


procedure filter_abs ();
var check: boolean;
begin
    for i:=0 to firstcountelements-1 do begin
        fakestring1 := floattostr(arrclonescores[i]);
        score_clone[i] := fakestring1;

    end;

    for i:=0 to firstcountelements-1 do begin
        check := false;
        for z:=0 to count_return do begin
            if scorert[z].number = score_clone[i] then begin
                scorert[z].many := scorert[z].many + 1;
                check := true;
                break;
            end;
        end;
        if check = false then begin
            scorert[count_return].number := score_clone[i];
            scorert[count_return].many := 1;
            count_return := count_return + 1;
        end;
    end;
end;

function getInteger (number: string): integer;
var i, result: integer;
        clone_str: string;
begin
        clone_str := '';
        for i:=1 to length(number) do begin
            if number[i] = ',' then break
            else clone_str := clone_str + number[i];
        end;
        getInteger := strtoint(clone_str);

end;

function findHighScore (arr: scores; counter: integer): real;
var high: real;
        i: integer;
begin
        high := arr[0];
        for i:=0 to counter do begin
            if arr[i] > high then begin
                high := arr[i];
            end;
        end;

        findHighScore := high;
end;



begin
        count_return := 0;
        assign(f, fileinp);
        assign(g, fileout);
        reset(f);
        rewrite(g);

        read(f, firstCountElements);
        read(f, lastScore);

        for i:=0 to firstCountElements-1 do begin
            read(f, score);
            arrCloneScores[i] := score;
        end;
	  {find high score}
        highscore := findhighscore(arrCloneScores, firstCountElements-1);
        writeln(highscore);
	  {check the difference.}
        if highscore > lastscore then begin
            kiluc := '';
            checkpoint := false;
            a := floattostr(highscore / lastscore);
            for i:=1 to length(a) do begin
                 if checkpoint = True then begin
                     kiluc := kiluc + a[i];
                 end
                 else begin
                     if a[i] = ',' then checkpoint := True;
                 end;
            end;

            fakestring1 := floattostr(highscore);
            fakestring2 := floattostr(lastscore);
            fakenumber1 := getinteger(fakestring1);
            fakenumber2 := getinteger(fakestring2);
            fakenumber3 := fakenumber1 - fakenumber2;
            kiluc := inttostr(fakenumber3) + '.' + kiluc[2];


        end
        else kiluc:='0';
        writeln(kiluc);
        count_return := 0;
        filter_abs();
        // xet high score
        lang := scorert[count_return-1];
        if lang.many >= 3 then begin
            av1 := true;
            av1_str := inttostr(lang.many) + ' ' + lang.number;
        end
        else begin
                av1 := false;
                 av1_str := inttostr(lang.many) + ' ' + lang.number;
        end;

        if av1 = false then begin
            lang := scorert[count_return-3];
            if lang.many >= 3 then begin
                av3 := true;
                av3_str := inttostr(lang.many) + ' ' + lang.number;
            end
            else begin
                av3 := false;
                av3_str := inttostr(lang.many) + ' ' + lang.number;
            end;

            if av3 = false then begin
                lang := scorert[count_return-2];
                if lang.many >= 2 then begin
                    av2 := true;
                    av2_str := inttostr(lang.many) + ' ' + lang.number;
                end
                else begin
                    av2 := false;
                    av2_str := inttostr(lang.many) + ' ' + lang.number;
                end;
                if av2 = true then av3_str := '0';
            end
            else av2_str := '0';
        end;
        writeln(g, kiluc);
        writeln(g,av1_str);
        writeln(g,av2_str);
        writeln(g,av3_str);
        close(f);
        close(g);


end. 
