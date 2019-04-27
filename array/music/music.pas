Uses crt;

Var namaMusik: array[1..10] of string[10];
    i, posisi: integer;
    jawab: string;

Begin

  i := 0;

  repeat

    Clrscr;

    Inc(i);
    Write('Nama alat musik: ');
    Readln(namaMusik[i]);
    Write('Ada nama alat musik lagi? [y/t]');
    Readln(jawab);

  until (jawab = 't') or (jawab = 'T');

  Clrscr;

  for posisi := i downto 1 do
    Writeln(namaMusik[posisi]);

  Readln;

End.