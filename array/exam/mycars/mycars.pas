uses crt;

var i, j: integer;
    ulangPenyewa, ulangNopol, ulangKaryawan: string;
    namaPenyewa, alamatPenyewa, jaminanPenyewa, idKaryawan, namaKaryawan: array[1..50] of string;
    lamaSewa: array[1..50] of integer;

    idKaryawan1, idKaryawan2, idKaryawan3: string;
    namaKaryawan1, namaKaryawan2, namaKaryawan3: string;

begin
  ulangPenyewa := '';
  i := 0;
  j := 0;

  idKaryawan1 := 'WK01';
  idKaryawan2 := 'WK02';
  idKaryawan3 := 'WK03';

  namaKaryawan1 := 'Andrea';
  namaKaryawan2 := 'Sarah';
  namaKaryawan3 := 'Deasy';

  while ulangPenyewa <> 't' do
  begin

    inc(i);
    ulangNopol := '';
    ulangKaryawan := '';

    clrscr;
    gotoxy(1, 1); write('Donatelo Rent Car');
    gotoxy(1, 2); write('Jl. Legi-legian No. 201, Denpasar - Bali');
    gotoxy(1, 3); write('Telp. 0813 3332 9901');
                        {1}                {20}                {40}                {60}
    gotoxy(1, 4); write('----------------------------------------------------');
    gotoxy(1, 5); write('No Registrasi Transaksi: '); {auto inc}
    gotoxy(1, 6); write('Id Karyawan            : '); {auto muncul nama}
    gotoxy(1, 7); write('----------------------------------------------------');
    gotoxy(1, 8); write('Data Transaksi Sewa Mobil');
    gotoxy(1, 9); write('Nama Penyewa     : ');
    gotoxy(1, 10); write('Alamat Penyewa   : ');
    gotoxy(1, 11); write('Jaminan Penyewa  : ');
    gotoxy(1, 12); write('Detil Mobil');
    gotoxy(1, 13); write('Nopol mobil      : ');
    gotoxy(1, 14); write('Jenis mobil      : ');
    gotoxy(1, 15); write('Lama sewa        : ... Hari');
    gotoxy(3, 16); write('Minggu       : ');
    gotoxy(3, 17); write('Hari         : ');
    gotoxy(1, 18); write('Detail Bayar');
    gotoxy(1, 19); write('Sewa selama ... minggu    : Rp. ');
    gotoxy(1, 20); write('Sewa selama ... hari      : Rp. ');
    gotoxy(1, 21); write('Total bayar               : Rp. ');
    gotoxy(1, 22); write('Fee Donatelo (20%)        : Rp. ');
    gotoxy(1, 23); write('---------------------------------------------------');

    { mulai proses }
      gotoxy(26, 5); write(i);

      { mulai menentukan nama karyawan }
        while ulangKaryawan <> 't' do
        begin
          gotoxy(26, 6); readln(idKaryawan[i]);
          if (idKaryawan[i] = idKaryawan1) then
            begin
              namaKaryawan[i] := namaKaryawan1;
              ulangKaryawan := 't'
            end
          else if (idKaryawan[i] = idKaryawan2) then
            begin
              namaKaryawan[i] := namaKaryawan2;
              ulangKaryawan := 't'
            end
          else if (idKaryawan[i] = idKaryawan3) then
            begin
              namaKaryawan[i] := namaKaryawan3;
              ulangKaryawan := 't'
            end
          else 
            begin
              gotoxy(1, 24); write('Nama karyawan kurang tepat. ulangi? [y/t]: ');
              readln(ulangKaryawan);
            end;
          gotoxy(31, 6); write(namaKaryawan[i]);
        end;
      { selesai menentukan nama karyawan }
      gotoxy(20, 9); readln(namaPenyewa[i]);
      gotoxy(1, 24); write('Apakah ada penyewa lagi? [y/t]: ');
      gotoxy(34, 24); readln(ulangPenyewa);
      { jika ada lagi }
        clrscr;
      { jika ada lagi }
    { selesai proses }

  end;

  clrscr;
  gotoxy(1, 1); write('Donatelo Rent Car');
  gotoxy(1, 2); write('Jl. Legi-legian No. 201, Denpasar - Bali');
  gotoxy(1, 3); write('Telp. 0813 3332 9901');
                      {1}                {20}                {40}                {60}
  gotoxy(1, 4); write('----------------------------------------------------');
  gotoxy(1, 5); write('No');
  gotoxy(1, 6); write('Id ');
  gotoxy(1, 7); write('----------------------------------------------------');
  gotoxy(1, 9); write('----------------------------------------------------');
  readln;

end.