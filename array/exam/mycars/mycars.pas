uses crt;

var i, j: integer;
    ulangPenyewa, ulangNopol, ulangKaryawan: string;
    namaPenyewa, alamatPenyewa, jaminanPenyewa, idKaryawan, namaKaryawan: array[1..50] of string;
    lamaSewa: array[1..50] of integer;

    idKaryawan1, idKaryawan2, idKaryawan3: string;
    namaKaryawan1, namaKaryawan2, namaKaryawan3: string;

    nopol1, nopol2, nopol3, nopol4, nopol5, nopol6: string;
    jenisMobil1, jenisMobil2, jenisMobil3, jenisMobil4, jenisMobil5, jenisMobil6: string;
    sewaPerHari1, sewaPerHari2, sewaPerHari3, sewaPerHari4, sewaPerHari5, sewaPerHari6: longint;  
    sewaPerMinggu1, sewaPerMinggu2, sewaPerMinggu3, sewaPerMinggu4, sewaPerMinggu5, sewaPerMinggu6: longint;  

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

  nopol1 := 'AA1234YB';
  nopol2 := 'AA2167KE';
  nopol3 := 'AA9567KB';
  nopol4 := 'AA8888IL';
  nopol5 := 'AA8154QQ';
  nopol6 := 'AA9876UB';

  jenisMobil1 := 'Daihatsu Terios';
  jenisMobil2 := 'Toyota Rush';
  jenisMobil3 := 'Inova Reborn';
  jenisMobil4 := 'Honda HRV';
  jenisMobil5 := 'Honda Jazz';
  jenisMobil6 := 'Toyota Avanza';

  sewaPerHari1 := 300000;
  sewaPerHari2 := 400000;
  sewaPerHari3 := 700000;
  sewaPerHari4 := 600000;
  sewaPerHari5 := 300000;
  sewaPerHari6 := 300000;

  sewaPerMinggu1 := 1800000;
  sewaPerMinggu2 := 2400000;
  sewaPerMinggu3 := 4200000;
  sewaPerMinggu4 := 3600000;
  sewaPerMinggu5 := 1800000;
  sewaPerMinggu6 := 1800000;

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
    gotoxy(1, 5); write('No Registrasi Transaksi : '); {auto inc}
    gotoxy(1, 6); write('Id Karyawan             : '); {auto muncul nama}
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
      gotoxy(27, 5); write(i);

      { mulai menentukan nama karyawan }
        while ulangKaryawan <> 't' do
        begin
          gotoxy(27, 6); readln(idKaryawan[i]);
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
          gotoxy(32, 6); write(namaKaryawan[i]);
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
  gotoxy(1, 4); write('------------------------------------------------------------');
  gotoxy(1, 5); write('No | Nama     | Nopol  |  Jenis  |   Lama Sewa     |  Biaya ');
  gotoxy(1, 6); write('   | Penyewa  | Mobil  |  Mobil  | Minggu  |  Hari |        ');
  gotoxy(1, 7); write('------------------------------------------------------------');

  gotoxy(1, 9); write('------------------------------------------------------------');
  readln;

end.