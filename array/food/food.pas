Uses crt;

Var buahBuahan: array[1..5] of string[10];
    i, posisi: integer;
    adaBuahLagi: string;

Begin

  i := 0;

  repeat

    Clrscr;
    Inc(i);
    Write('Nama buah: ');
    Readln(buahBuahan[i]);
    Write('Apakah ada buah lagi? [y/t]');
    Readln(adaBuahLagi);

  until (adaBuahLagi = 't') or (adaBuahLagi = 'T');

  Clrscr;
  for posisi := i downto 1 do
    Writeln(buahBuahan[posisi]);

  Readln;

End.