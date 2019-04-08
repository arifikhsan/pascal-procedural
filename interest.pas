Uses crt;

Var jangkaWaktuPerBulan, nomorNasabah, nasabahKe: integer;
    tanggal, namaNasabah, namaDeposito, kodeDeposito, pendataanDeposito: string;
    bungaDeposito, jumlahDeposito, bungaDepositoPerBulan: real;
    pendataanDepositoLagi, kondisiKodeDeposito: boolean;

Begin

nasabahKe := 0;

repeat

Clrscr;

pendataanDepositoLagi := false;
kondisiKodeDeposito := false;
bungaDepositoPerBulan := 0;

Gotoxy(2, 2); Write('Nama Bank');
Gotoxy(2, 3); Write('Jalan Magelang Purworejo');
Gotoxy(2, 4); Write('Telp 0293-333 555');

Gotoxy(2, 6); Write('Pendataan Deposito Nasabah');
Gotoxy(2, 7); Write('===============================================');

Gotoxy(2, 8); Write('No Nasabah       :         Tanggal    : ');
Gotoxy(2, 9); Write('Nama Nasabah     :         Nasabah Ke : ');
Gotoxy(2, 10); Write('Kode Deposito    : ');
Gotoxy(2, 11); Write('Nama Deposito    : ');
Gotoxy(2, 12); Write('Jangka Waktu     :    Bulan');
Gotoxy(2, 13); Write('Bunga Deposito   :   % Per Bulan');
Gotoxy(2, 14); Write('Jumlah Deposito  : Rp. ');
Gotoxy(2, 15); Write('Bunga Per Bulan  : Rp. ');

Gotoxy(2, 16); Write('==============================================');
Gotoxy(2, 17); Write(' ');


Inc(nasabahKe);
Gotoxy(42, 9); Write(nasabahKe);

{ -- Input dan Proses -- }
Gotoxy(21, 8); Readln(nomorNasabah);
Gotoxy(21, 9); Readln(namaNasabah);

Gotoxy(42, 8); Readln(tanggal);

{ mulai cek kode deposito }

repeat

Gotoxy(21, 10); Write('                            ');
Gotoxy(21, 10); Readln(kodeDeposito);

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
    namaDeposito := 'Long Deposit';
    bungaDeposito := 0.9;
    jangkaWaktuPerBulan := 12;
    kondisiKodeDeposito := true;
  end

until kondisiKodeDeposito = true;

{ selesai cek kode deposito }


Gotoxy(21, 11); Write(namaDeposito);
Gotoxy(21, 12); Write(jangkaWaktuPerBulan);
Gotoxy(21, 13); Write(bungaDeposito:2:1);
Gotoxy(25, 14); Readln(jumlahDeposito);


{ mulai menghitung bunga deposito per bulan }

bungaDepositoPerBulan := jumlahDeposito * bungaDeposito * jangkaWaktuPerBulan / 12;

{ selesai menghitung bunga deposito per bulan }

Gotoxy(25, 15); Write(bungaDepositoPerBulan:2:1);

{ program selesai  }

{ mulai membersihkan nilai variabel }

kondisiKodeDeposito := false;
bungaDeposito := 0;
jangkaWaktuPerBulan := 0;

{ selesai membersihkan nilai variabel }

{ mulai konfirmasi pendataan depositso lagi }

Gotoxy(2, 18); Write('Apakah Anda ingin memasukkan deposito lagi?');
Gotoxy(2, 19); Write('Tekan [Y/T]');
Gotoxy(2, 20); Readln(pendataanDeposito);

{ selesai konfirmasi pendataan depositso lagi }

if pendataanDeposito = 'Y' then
  begin
    pendataanDepositoLagi := true;
  end
else if pendataanDeposito = 'y' then
  begin
    pendataanDepositoLagi := true;
  end
else
  begin
    pendataanDepositoLagi := false;
  end

until pendataanDepositoLagi = false;

Clrscr;
Readln;

End.
