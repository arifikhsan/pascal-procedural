uses crt;
     var nomorFakur, idPegawai, namaKonsumen, alamat, tanggal, kodePaket: array[1..100] of string[20];
         totalHarga, dp, hargaKekurangan: array[1..100] of longint;
         ulangEvent, ulangIdPegawai, ulangKodePaket, ulangBiayaPaket: string;
         i: integer;
         hargaPaketPernikahanI, hargaPaketPernikahanII, hargaPaketPernikahanIII: longint;
         hargaPaketUlangTahunI, hargaPaketUlangTahunII, hargaPaketUlangTahunIII: longint;

begin

    clrscr;
    { mulai set nilai variabel }

    i := 0;
    inc(i);
    ulangIdPegawai := '';
    ulangKodePaket := '';
    ulangBiayaPaket := '';
    hargaPaketPernikahanI := 15300000;
    hargaPaketPernikahanII := 25000000;
    hargaPaketPernikahanIII := 45000000;
    hargaPaketUlangTahunI := 1500000;
    hargaPaketUlangTahunII := 3000000;
    hargaPaketUlangTahunIII := 5000000;

    while (ulangEvent <> 't') do
      begin
        
    { selesai set nilai variabel}

    gotoxy(2, 2); write('EO Kirana Larasati');
    gotoxy(2, 3); write('Jl. Gayam Sari No 23 Semarang');
    gotoxy(2, 4); write('Telp. 024-111 579, Fax. 024-123 321');
                        {1}      {10}      {20}      {30}      {40}
    gotoxy(2, 5); write('==========================================');
    gotoxy(2, 6); write('No Faktur             : ');
    gotoxy(2, 7); write('Nama Konsumen         : ');
    gotoxy(2, 8); write('Alamat                : ');
    gotoxy(2, 9); write('Tanggal Acara         : ');
    gotoxy(2, 10); write('Kode Paket            : ');
    gotoxy(2, 11); write('Biaya Paket Kegiatan  : ');
    gotoxy(2, 12); write('Jumlah DP             : ');
    gotoxy(2, 13); write('Kekurangan            : ');

    gotoxy(30, 6); write('Id Pegawai: ');

    gotoxy(2, 14); write('==========================================');

    { popup }

    // 

    { popup }


    gotoxy(26, 6); readln(nomorFakur[i]);

    { mulai proses id pegawai }

    while (ulangIdPegawai <> 't') do
      begin

        gotoxy(42, 6); 
        readln(idPegawai[i]);
        gotoxy(48, 6);

        if (idPegawai[i] = 'FK001') then
          begin
            write('Riana');
            ulangIdPegawai := 't'
          end
        else if (idPegawai[i] = 'FK002') then
          begin
            write('Wulan');
            ulangIdPegawai := 't'
          end
        else if (idPegawai[i] = 'FK003') then
          begin
            write('Deasy');
            ulangIdPegawai := 't'
          end
        else 
          begin
            gotoxy(20, 16);
            write('Id pegawai tidak ditemukan. [y/t]?: ');
            readln(ulangIdPegawai);
            gotoxy(20, 16);
            write('                                         ');
            gotoxy(42, 6); write('          ')
          end
      end;

    { selesai proses id pegawai }

    gotoxy(26, 7); readln(namaKonsumen[i]);
    gotoxy(26, 8); readln(alamat[i]);
    gotoxy(26, 9); readln(tanggal[i]);

    { mulai proses kode paket }


    while (ulangKodePaket <> 't') do
      begin

        gotoxy(26, 10); 
        readln(kodePaket[i]);
        gotoxy(30, 10);

        if (kodePaket[i] = 'PP1') then
          begin
            write('Paket Pernikahan I');
            totalHarga[i] := hargaPaketPernikahanI;
            ulangKodePaket := 't'
          end
        else if (kodePaket[i] = 'PP2') then
          begin
            write('Paket Pernikahan II');
            totalHarga[i] := hargaPaketPernikahanII;
            ulangKodePaket := 't'
          end
        else if (kodePaket[i] = 'PP3') then
          begin
            write('Paket Pernikahan III');
            totalHarga[i] := hargaPaketPernikahanIII;
            ulangKodePaket := 't'
          end
        else if (kodePaket[i] = 'PU1') then
          begin
            write('Paket Ulang Tahun I');
            totalHarga[i] := hargaPaketUlangTahunI;
            ulangKodePaket := 't'
          end
        else if (kodePaket[i] = 'PU2') then
          begin
            write('Paket Ulang Tahun II');
            totalHarga[i] := hargaPaketUlangTahunII;
            ulangKodePaket := 't'
          end
        else if (kodePaket[i] = 'PU3') then
          begin
            write('Paket Ulang Tahun III');
            totalHarga[i] := hargaPaketUlangTahunIII;
            ulangKodePaket := 't'
          end
        else 
          begin
            gotoxy(20, 16);
            write('Kode Paket tidak ditemukan. [y/t]?: ');
            readln(ulangKodePaket);
            gotoxy(20, 16);
            write('                                         ');
            gotoxy(26, 10); write('          ')
          end
      end;

      { selesai proses kode paket }

      gotoxy(26, 11); write(totalHarga[i]);
      gotoxy(26, 12); readln(dp[i]);

      { mulai proses menghitung kekurangan }

      hargaKekurangan[i] := totalHarga[i] - dp[i];

      { selesai proses menghitung kekurangan }

      gotoxy(26, 13); write(hargaKekurangan[i]);

      gotoxy(26, 15); 
      write('apakah ada data lagi? [y/t]?');
      readln(ulangEvent);


      end;

      { mulai proses rekap }

      clrscr;

      { selsai proses rekap }
      readln;

end.