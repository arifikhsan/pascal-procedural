Uses crt;

Var jk, no, nasabahKe : integer;
    tanggal, nama, namaDeposito, kodeDeposito : String;
    bunga, jumlahDeposito, bungaDeposito: Real;

Begin

Clrscr;
Gotoxy(2, 2); Write('Bank Sclable');
Gotoxy(2, 3); Write('Jalan Magelang Purworejo');
Gotoxy(2, 4); Write('Telp 0293-333 555');

Gotoxy(2, 6); Write('Pendataan Deposito Nasabah');
Gotoxy(2, 7); Write('-----------------------------------------------');
Gotoxy(2, 8); Write('No Nasabah :           Tanggal : ');
Gotoxy(2, 9); Write('Nama Nasabah :         Nasabah Ke: ');
Gotoxy(2, 10); Write('Kode Deposito : ');
Gotoxy(2, 11); Write('Nama Deposito : ');
Gotoxy(2, 12); Write('Jangka Waktu :         Bulan');
Gotoxy(2, 13); Write('Bunga Deposito :      % Per Bulan');
Gotoxy(2, 14); Write('Jumlah Deposito : Rp. ');
Gotoxy(2, 15); Write('Bunga Per Bulan : Rp. ');
Gotoxy(2, 16); Write('----------------------------------------------');

{-input dan proses-}
Gotoxy(20, 8); Readln(no); Gotoxy(45, 8); Readln(tanggal);
Gotoxy(20, 9); Readln(nama); Gotoxy(45, 9); Readln(nasabahKe);
Gotoxy(20, 10); Readln(kodeDeposito); Gotoxy(20, 11); Write(namaDeposito);

Gotoxy(20, 12); Write(jk); Gotoxy(20, 13); Writeln(bunga);
Gotoxy(20, 14); Readln(jumlahDeposito); Gotoxy(20, 15); Write(bungaDeposito);
Readln;

End.
