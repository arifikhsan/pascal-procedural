Uses crt;

Var jawab, nama: string;

Begin

    repeat
          begin
                clrscr;
                Write('nama alat musik: ');
                Readln(nama);
                Write('ada nama alat musik lagi? [y/t]: ');
                Readln(jawab);
          end;
    until (jawab = 't');
    readln;

End.
