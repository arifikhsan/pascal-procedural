uses crt;

var ulangPendataanTravel, ulangIdTujuan, ulangPaketTravel: string;
    iterasiTravel, iterasiRekapTravel: integer;
    namaKonsumen, alamatKonsumen, kontakKonsumen, idTujuan, tanggal: array[1..50] of string;
    paket, jumlahPeserta: array[1..50] of integer;

begin
  { mulai inisialisasi variabel }
    iterasiTravel := 0;
    iterasiRekapTravel := 0;

    ulangPendataanTravel := '';
    ulangIdTujuan := '';
    ulangPaketTravel := '';

    namaKonsumen[iterasiTravel] := 'aaa';
  { selesai inisialisasi variabel }

  clrscr;

  { mulai pendataan travel }
    while ulangPendataanTravel <> 't' do
    begin
      { mulai menampilkan form }
        { mulai bagian kiri }
          gotoxy(2, 1); write('Andra Tour & Travel');
          gotoxy(2, 2); write('Jl. Sriwijaya No. 80, Semarang');
          gotoxy(2, 3); write('Telp. 024-9988 7766; Fax: 024-4567 0987');
                                      {10}       {20}       {30}       {40}
          gotoxy(2, 4); write('-------------------------------------------------------');
          gotoxy(2, 5); write('             Pendataan Peserta Tour Wisata             ');
          gotoxy(2, 6); write('-------------------------------------------------------');
          gotoxy(2, 7); write('Data Konsumen');
          gotoxy(2, 8); write('Nama Konsumen     : ');
          gotoxy(2, 9); write('Alamat Konsumen   : ');
          gotoxy(2, 10); write('Telp/Hp           : ');
          gotoxy(2, 11); write('Detail Tour');
          gotoxy(2, 12); write('Id Tujuan         : ');
          gotoxy(2, 13); write('Paket             : ');
          gotoxy(2, 14); write('Biaya Paket/Orang : Rp. '); { otomatis muncul }
          gotoxy(2, 15); write('Jumlah Peserta    : ');
          gotoxy(25, 15); write('orang');
          gotoxy(2, 16); write('Jumlah Bayar      : Rp. '); { otomatis muncul }
        { selesai bagian kiri }

        { mulai bagian kanan }
          gotoxy(40, 8); write('Tanggal        : ');  
          gotoxy(40, 12); write('Tujuan         : '); { otomatis muncul }
          gotoxy(40, 13); write('Fasilitas      : '); { otomatis muncul }
          gotoxy(40, 15); write('Diskon         :   %'); { otomatis muncul }
          gotoxy(40, 16); write('Harga diskon   : Rp. '); { otomatis muncul }
        { selesai bagian kanan }

        { mulai bagian tengah }
          gotoxy(20, 18); write('Total Bayar    : Rp. ');
        { selesai bagian tengah }

          gotoxy(2, 19); write('-------------------------------------------------------');
      { selesai menampilkan form }

      { mulai input form }
        gotoxy(57, 8); readln(tanggal[iterasiTravel]);
        gotoxy(22, 8); readln(namaKonsumen[iterasiTravel]);
        gotoxy(22, 9); readln(alamatKonsumen[iterasiTravel]);
        gotoxy(22, 10); readln(kontakKonsumen[iterasiTravel]);
        gotoxy(22, 12); readln(idTujuan[iterasiTravel]);
        gotoxy(22, 13); readln(paket[iterasiTravel]);
        gotoxy(22, 15); readln(jumlahPeserta[iterasiTravel]);

      { selesai input form }

      { mulai konfirmasi }
        gotoxy(10, 20); write('Apakah ada lagi? [y/t]: ');
        readln(ulangPendataanTravel);
        { jika ada lagi }
          inc(iterasiTravel);
          clrscr;
        { jika ada lagi }
      { selesai konfirmasi }
    end;
  { selesai pendataan travel }

  { mulai rekap travel }
  { selesai rekap travel }

  { mulai bagian akhir }
    write('Terima kasih telah menggunakan aplikasi ini.');
    readln;
    clrscr;
  { selesai bagian akhir }
end.
