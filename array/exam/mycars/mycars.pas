uses crt;

var i, j: integer;
    ulangPenyewa, ulangNopol: string;
    namaPenyewa, alamatPenyewa, jaminanPenyewa: array[1..50] of string;
    lamaSewa: array[1..50] of integer;

begin
  ulangPenyewa := '';
  ulangNopol := '';
  i := 0;
  j := 0;

  while ulangPenyewa <> 't' do
  begin

    inc(i);

    clrscr;
    gotoxy(1, 1); write('Donatelo Rent Car');
    gotoxy(1, 2); write('Jl. Legi-legian No. 201, Denpasar - Bali');
    gotoxy(1, 3); write('Telp. 0813 3332 9901');
                        {1}                {20}                {40}                {60}
    gotoxy(1, 4); write('----------------------------------------------------');
    gotoxy(1, 5); write('No Registrasi Transaksi: '); {auto inc}
    gotoxy(1, 6); write('Id Karyawan: '); {auto muncul}
    gotoxy(1, 7); write('----------------------------------------------------');

    gotoxy(26, 5); write(i);
    gotoxy(1, 10); write('apakah ada peminjam lagi? [y/t]: ');
    gotoxy(34, 10); read(ulangPenyewa);
    readln;

  end;

  clrscr;
  gotoxy(1, 1); write('Donatelo Rent Car');
  gotoxy(1, 2); write('Jl. Legi-legian No. 201, Denpasar - Bali');
  gotoxy(1, 3); write('Telp. 0813 3332 9901');
  readln;

end.