Uses crt;

Var jangkaWaktuPerBulan, nomorNasabah, nasabahKe: integer;
    tanggal, namaNasabah, namaDeposito, kodeDeposito: string;
    bungaDeposito, jumlahDeposito, bungaDepositoPerBulan: real;
    pendataanDepositoLagi, kondisiKodeDeposito: boolean;

Begin

Clrscr;

pendataanDepositoLagi := false;
kondisiKodeDeposito := false;

Gotoxy(2, 2); Write('Nama Bank');
Gotoxy(2, 3); Write('Jalan Magelang Purworejo');
Gotoxy(2, 4); Write('Telp 0293-333 555');

Gotoxy(2, 6); Write('Pendataan Deposito Nasabah');
Gotoxy(2, 7); Write('===============================================');

Gotoxy(2, 8); Write('No Nasabah       :         Tanggal    : ');
Gotoxy(2, 9); Write('Nama Nasabah     :         Nasabah Ke : ');
Gotoxy(2, 10); Write('Kode Deposito    : ');
Gotoxy(2, 11); Write('Nama Deposito    : ');
Gotoxy(2, 12); Write('Jangka Waktu     :          Bulan');
Gotoxy(2, 13); Write('Bunga Deposito   :      % Per Bulan');
Gotoxy(2, 14); Write('Jumlah Deposito  : Rp. ');
Gotoxy(2, 15); Write('Bunga Per Bulan  : Rp. ');

Gotoxy(2, 16); Write('==============================================');


Inc(nasabahKe);
Gotoxy(45, 9); Write(nasabahKe);

{ -- Input dan Proses -- }
Gotoxy(21, 8); Readln(nomorNasabah);
Gotoxy(21, 9); Readln(namaNasabah);

Gotoxy(45, 8); Readln(tanggal);
Gotoxy(21, 10); Readln(kodeDeposito);

{ mulai cek kode deposito }

repeat

  if kodeDeposito = '001' then
    begin
      namaDeposito := 'Short Deposit';
      bungaDeposito := 0.6;
      jangkaWaktuPerBulan := 6;
      kondisiKodeDeposito := true;
    end
  else if kodeDeposito = '002' then
    begin
      namaDeposito := 'Middle Deposit';
      bungaDeposito := 0.7;
      jangkaWaktuPerBulan := 6;
      kondisiKodeDeposito := true;
    end
  else if kodeDeposito = '003' then
    begin
      namaDeposito := 'LongDeposit';
      bungaDeposito := 0.9;
      jangkaWaktuPerBulan := 12;
      kondisiKodeDeposito := true;
    end

until kondisiKodeDeposito = false;

{ selesai cek kode deposito }

Gotoxy(20, 11); Write(namaDeposito);
Gotoxy(21, 12); Write(jangkaWaktuPerBulan);
Gotoxy(21, 13); Write(bungaDeposito);
Gotoxy(21, 14); Readln(jumlahDeposito);
Gotoxy(21, 15); Write(bungaDepositoPerBulan);

{ ---  }

Readln;

End.
