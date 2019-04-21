Uses crt;

Var jawab, nama: string;

Begin

    repeat
          begin
                Clrscr;
                Write('nama alat musik: ');
                Readln(nama);
                Write('ada nama alat musik lagi? [y/t]: ');
                Readln(jawab);
          end;
    until (jawab = 't') or (jawab = 'T');

End.
