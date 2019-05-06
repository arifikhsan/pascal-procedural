uses crt;

var ulangPendataanTravel, ulangIdTujuan, ulangPaketTravel: string;
    iterasiTravel, iterasiRekapTravel: integer;
    hargaPerOrang, hargaTotal: array[1..50] of longint;
    hargaDiskon, hargaSetelahDiskon: array[1..50] of real;
    namaKonsumen, alamatKonsumen, kontakKonsumen, idTujuan, tanggal, kotaTujuan, fasilitas: array[1..50] of string;
    paket, jumlahPeserta, diskon: array[1..50] of integer;

    idWisata1, idWisata2, idWisata3, idWisata4, idWisata5: string;
    paket1, paket2: integer;

    fasilitasPaketI, fasilitasPaketII: string;
    hargaTujuan1Paket1, hargaTujuan1Paket2: longint;
    hargaTujuan2Paket1, hargaTujuan2Paket2: longint;
    hargaTujuan3Paket1, hargaTujuan3Paket2: longint;
    hargaTujuan4Paket1, hargaTujuan4Paket2: longint;
    hargaTujuan5Paket1, hargaTujuan5Paket2: longint;

begin
  { mulai inisialisasi variabel }
    iterasiTravel := 0;
    iterasiRekapTravel := 0;

    ulangPendataanTravel := '';

    paket1 := 1;
    paket2 := 2;

    idWisata1 := 'TJN01';
    idWisata2 := 'TJN02';
    idWisata3 := 'TJN03';
    idWisata4 := 'TJN04';
    idWisata5 := 'TJN05';

    fasilitasPaketI := 'Bus AC, Hotel Bintang 3';
    fasilitasPaketII := 'Bus AC VIP, Hotel Bintang 5';

    hargaTujuan1Paket1 := 1600000;
    hargaTujuan1Paket2 := 2200000;
    hargaTujuan2Paket1 :=  600000;
    hargaTujuan2Paket2 := 1600000;
    hargaTujuan3Paket1 :=  900000;
    hargaTujuan3Paket2 := 2000000;
    hargaTujuan4Paket1 :=  900000;
    hargaTujuan4Paket2 := 2000000;
    hargaTujuan5Paket1 := 1800000;
    hargaTujuan5Paket2 := 3600000;
  { selesai inisialisasi variabel }

  clrscr;

  { mulai pendataan travel }
    while ulangPendataanTravel <> 't' do
    begin
        ulangIdTujuan := '';
        ulangPaketTravel := '';
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
          gotoxy(40, 15); write('Diskon         :    %'); { otomatis muncul }
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
        { mulai input id tujuan }
          while ulangIdTujuan <> 't' do
          begin
            gotoxy(22, 12); readln(idTujuan[iterasiTravel]);
            if idTujuan[iterasiTravel] = idWisata1 then
              begin
                kotaTujuan[iterasiTravel] := 'Jakarta';
                ulangIdTujuan := 't'
              end
            else if idTujuan[iterasiTravel] = idWisata2 then
              begin
                kotaTujuan[iterasiTravel] := 'Yogyakarta';
                ulangIdTujuan := 't'
              end
            else if idTujuan[iterasiTravel] = idWisata3 then
              begin
                kotaTujuan[iterasiTravel] := 'Bandung';
                ulangIdTujuan := 't'
              end
            else if idTujuan[iterasiTravel] = idWisata4 then
              begin
                kotaTujuan[iterasiTravel] := 'Surabaya';
                ulangIdTujuan := 't'
              end
            else if idTujuan[iterasiTravel] = idWisata5 then
              begin
                kotaTujuan[iterasiTravel] := 'Bali';
                ulangIdTujuan := 't'
              end
            else
              begin
                gotoxy(10, 20); write('Id tujuan tidak ditemukan. Ulangi lagi? [y/t]');
                readln(ulangIdTujuan);
                gotoxy(22, 12); write('         ');
                gotoxy(10, 20); write('                                              ')
              end;
            gotoxy(57, 12); write(kotaTujuan[iterasiTravel]);
          end;
        { selesai input id tujuan }
        { mulai input paket travel }
          while ulangPaketTravel <> 't' do
          begin
            gotoxy(22, 13); readln(paket[iterasiTravel]);
            if paket[iterasiTravel] = paket1 then
              begin
                fasilitas[iterasiTravel] := fasilitasPaketI;
                ulangPaketTravel := 't'
              end
            else if paket[iterasiTravel] = paket2 then 
              begin
                fasilitas[iterasiTravel] := fasilitasPaketII;
                ulangPaketTravel := 't'
              end
            else 
              begin
                gotoxy(10, 20); write('Paket tidak ditemukan. Ulangi lagi? [y/t]');
                readln(ulangPaketTravel);
                gotoxy(22, 13); write('     ');
                gotoxy(10, 20); write('                                              ')
              end;

            gotoxy(57, 13); write(fasilitas[iterasiTravel]);
          end;
        { selesai input paket travel }
        { mulai menentukan harga paket per orang }
          if (idTujuan[iterasiTravel] = idWisata1) and (paket[iterasiTravel] = paket1) then
            hargaPerOrang[iterasiTravel] := hargaTujuan1Paket1
          else if (idTujuan[iterasiTravel] = idWisata1) and (paket[iterasiTravel] = paket2) then
            hargaPerOrang[iterasiTravel] := hargaTujuan1Paket2
          else if (idTujuan[iterasiTravel] = idWisata2) and (paket[iterasiTravel] = paket1) then
            hargaPerOrang[iterasiTravel] := hargaTujuan2Paket1
          else if (idTujuan[iterasiTravel] = idWisata2) and (paket[iterasiTravel] = paket2) then
            hargaPerOrang[iterasiTravel] := hargaTujuan2Paket2
          else if (idTujuan[iterasiTravel] = idWisata3) and (paket[iterasiTravel] = paket1) then
            hargaPerOrang[iterasiTravel] := hargaTujuan3Paket1
          else if (idTujuan[iterasiTravel] = idWisata3) and (paket[iterasiTravel] = paket2) then
            hargaPerOrang[iterasiTravel] := hargaTujuan3Paket2
          else if (idTujuan[iterasiTravel] = idWisata4) and (paket[iterasiTravel] = paket1) then
            hargaPerOrang[iterasiTravel] := hargaTujuan4Paket1
          else if (idTujuan[iterasiTravel] = idWisata4) and (paket[iterasiTravel] = paket2) then
            hargaPerOrang[iterasiTravel] := hargaTujuan4Paket2
          else if (idTujuan[iterasiTravel] = idWisata5) and (paket[iterasiTravel] = paket1) then
            hargaPerOrang[iterasiTravel] := hargaTujuan5Paket1
          else if (idTujuan[iterasiTravel] = idWisata5) and (paket[iterasiTravel] = paket2) then
            hargaPerOrang[iterasiTravel] := hargaTujuan5Paket2;
          gotoxy(26, 14); write(hargaPerOrang[iterasiTravel]);
        { selesai menentukan harga paket per orang }
        gotoxy(22, 15); readln(jumlahPeserta[iterasiTravel]);
        { mulai menghitung jumlah bayar }
          hargaTotal[iterasiTravel] := jumlahPeserta[iterasiTravel] * hargaPerOrang[iterasiTravel];
          gotoxy(26, 16); write(hargaTotal[iterasiTravel]);
        { selesai menghitung jumlah bayar }
        { mulai menentukan diskon }
          if (jumlahPeserta[iterasiTravel] >= 3) and (jumlahPeserta[iterasiTravel] < 8) then
            diskon[iterasiTravel] := 5
          else if (jumlahPeserta[iterasiTravel] >= 8) then
            diskon[iterasiTravel] := 10
          else 
            diskon[iterasiTravel] := 0;
          gotoxy(57, 15); write(diskon[iterasiTravel]);
        { selesai menentukan diskon }
        { mulai menghitung harga diskon }
          hargaDiskon[iterasiTravel] := diskon[iterasiTravel] / 100 * hargaTotal[iterasiTravel];
          gotoxy(61, 16); write(hargaDiskon[iterasiTravel]:2:1);
        { selesai menghitung harga diskon }
        { mulai menghitung harga setelah diskon }
          hargaSetelahDiskon[iterasiTravel] := hargaTotal[iterasiTravel] - hargaDiskon[iterasiTravel];
          gotoxy(42, 18); write(hargaSetelahDiskon[iterasiTravel]:2:1);
        { selesai menghitung harga setelah diskon }

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
