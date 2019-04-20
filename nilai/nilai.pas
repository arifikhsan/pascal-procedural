uses crt;

Var NPW, Siswa, Grade, Status, Y, T : string;
    Rata, UAS, UTS, Quis, Tugas, Hadir : integer;
    ulang: string;
    pendataanLagi: boolean;


begin

pendataanLagi := false;

repeat


{-tampilan-}
clrscr;
Gotoxy(2, 2); Write('Politeknik Cemerlang');
Gotoxy(2, 3); Write('Jl. Halmahera No. 23-27, Baturusa');
Gotoxy(2, 4); Write('===============================================================');
Gotoxy(2, 5); Write('NPW             : ');
Gotoxy(2, 6); Write('Nama Mahasiswa  : ');
Gotoxy(2, 7); Write('Nilai UAS       :                   Rata-rata   : ');
Gotoxy(2, 8); Write('Nilai UTS       :                   Grade       : ');
Gotoxy(2, 9); Write('Nilai Quis      :                   Status      : ');
Gotoxy(2, 10); Write('Nilai Tugas     : ');
Gotoxy(2, 11); Write('Nilai Kehadiran : ');
Gotoxy(2, 12); Write('==============================================================');


{input proses}
Gotoxy(20, 5); readln(NPW);
Gotoxy(20, 6); readln(Siswa);
Gotoxy(20, 7); readln(UAS);
Gotoxy(20, 8); readln(UTS);
Gotoxy(20, 9); readln(Quis);
Gotoxy(20, 10); readln(Tugas);
Gotoxy(20, 11); readln(Hadir);
Rata := (UAS+UTS+Quis+Tugas+Hadir) div 5;
if Rata >= 85 then
Grade:= 'A'
else
if (Rata >= 75) and (Rata <= 84) then
Grade:= 'B'
else
if (Rata >= 65) and (Rata <= 74) then
Grade:= 'C'
else
if (Rata >=0) and (Rata <= 64) then
Grade:= 'D';

case Rata of
85..100 : Status:=('LULUS MEMUASKAN');
75..84 : Status:=('LULUS BAIK');
65..74 : Status:=('Lulus CUKUP');
else
Status:=('TIDAK LULUS');
end;
Gotoxy(51, 7); write(Rata);
Gotoxy(51, 8); write(Grade);
Gotoxy(51, 9); write(Status);
Gotoxy(20, 13); write('Apakah ada data lain [Y/T]? ');
Gotoxy(20, 14); readln(ulang);

Gotoxy(2, 15); writeln(ulang);


if (ulang = 'Y') or (ulang = 'y') then
  pendataanLagi := false
else 
  pendataanLagi := true;

until (pendataanLagi);

end.