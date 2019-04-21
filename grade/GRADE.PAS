Uses crt;

Var 
  nomorMahasiswa, nilaiUas, nilaiUts, nilaiQuis, nilaiTugas, nilaiKehadiran: integer;
  status, namaMahasiswa, adaDataLagi, grade: string;
  rataRata: real;
  tidakAdaDataLagi: boolean;

Begin

{ repeat }
while adaDataLagi <> 't' do

  Begin

    tidakAdaDataLagi := true;
    Clrscr;

    Gotoxy(2, 2); Write('Politeknik Cemerlang');
    Gotoxy(2, 3); Write('Jl. Halmahera No. 23-27, Baturusa');
    Gotoxy(2, 4); Write('-------------------------------------------');
    Gotoxy(2, 5); Write('NPM              : ');
    Gotoxy(2, 6); Write('Nama Mahasiswa   : ');
    Gotoxy(2, 7); Write('Nilai UAS        :            Rata-rata  : ');
    Gotoxy(2, 8); Write('Nilai UTS        :            Grade      : ');
    Gotoxy(2, 9); Write('Nilai Quis       :            Status     : ');
    Gotoxy(2, 10); Write('Nilai Tugas      : ');
    Gotoxy(2, 11); Write('Nilai Kehadiran  : ');
    Gotoxy(2, 12); Writeln('------------------------------------------');

    { mulai input }

    Gotoxy(21, 5); Readln(nomorMahasiswa);
    Gotoxy(21, 6); Readln(namaMahasiswa);
    Gotoxy(21, 7); Readln(nilaiUas);
    Gotoxy(21, 8); Readln(nilaiUts);
    Gotoxy(21, 9); Readln(nilaiQuis);
    Gotoxy(21, 10); Readln(nilaiTugas);
    Gotoxy(21, 11); Readln(nilaiKehadiran);

    { selesai input }

    { mulai proses }

    rataRata := 30 / 100 * nilaiUas + 30 / 100 * nilaiUts + 15 / 100 * nilaiQuis + 20 / 100 * nilaiTugas + 5 / 100 * nilaiKehadiran;

    if (rataRata >= 85) then
      grade := 'A'
    else if (rataRata < 85) and (rataRata >= 75) then
      grade := 'B'
    else if (rataRata < 75) and (rataRata >= 65) then
      grade := 'C'
    else if (rataRata < 65) and (rataRata >= 55) then
      grade := 'D'
    else if (rataRata < 55) then
      grade := 'E';

    if (grade = 'A') or (grade = 'B') or (grade = 'C') then
      status := 'LULUS'
    else if (grade = 'D') or (grade = 'E') then
      status := 'BELUM LULUS';

    { mulai menampilkan hasil }

    Gotoxy(45, 7); Writeln(rataRata:2:1);
    Gotoxy(45, 8); Writeln(grade);
    Gotoxy(45, 9); Writeln(status);


    { selesai menampilkan hasil }

    { akhir proses }

    { mulai pengulangan }

    Gotoxy(2, 13); Writeln('');
    Gotoxy(2, 14); Writeln('Apakah Anda ingin memasukkan nilai lagi? [y/t]: ');
    Gotoxy(2, 15); Readln(adaDataLagi);

{
  if (adaDataLagi = 'Y') or (adaDataLagi = 'y') then
    tidakAdaDataLagi := false

until (tidakAdaDataLagi); }

  End;

{ akhir pengulangan }

End.