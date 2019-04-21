Uses crt;

Var jawab, nama: string;

Begin

    while jawab <> 't' do
          begin
                Write('nama alat musik: ');
                Readln(nama);
                Write('ada nama alat musik lagi? [y/t]: ');
                Readln(jawab);
          end;

End.
