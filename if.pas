Inc(nsabahKe);

// Repeat
While Kondisi <> 'T'
    if KodeDeposito = '001' Then
        begin
            namaDeposito := 'Short Deposit';
            bunga := 0.6;
            jk := 6;
            kondisi := 'T';
        end
    else
        begin
            namaDeposito := 'Middle Deposit';
            bunga := 0.7;
            jk := 6;
            kondisi := 'T';
        end
    else
        begin
            namaDeposito := 'Long Deposit';
            bunga := 0.9;
            jk := 12;
            kondisi := 'T';
        end
    end
Until (Kondisi = 'T');

Gotoxy(20, 11); Write(namaDeposito); 
Gotoxy(20, 12); Write(jk); Gotoxy(20, 13); Write(Bunga:2:1);
Gotoxy(20, 14); Readln(jumlahDeposito); Gotoxy(20, 15); Write(bungaDeposito)

if True then
    begin
        then code here
    end
else
    begin
    
    else code here
end;

