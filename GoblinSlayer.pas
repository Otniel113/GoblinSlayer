program GoblinSlayer;

var
  n,m,i,poin : integer;
	aksi, TypeA : string;

procedure tipe();
	begin
		case typeA of
			'hit' : Poin:=Poin*1;
			'critical' : Poin:=Poin*2;
			'dodged' : Poin:=0;
			end;
	end;

procedure att();
  begin
    if i=1 then
      m:=m-poin
    else
      n:=n-poin;
	end;

procedure heal();
	begin
    if i=1 then
      n:=n+poin
    else
      m:=m+poin;
	end;


begin
  writeln('================GOBLIN SLAYER=================');
  writeln('Created by : Otniel Abiezer and Abdullah Hadi');
  writeln;
  writeln('Di sini Anda berperan sebagai Goblin Slayer yang akan membasmi Goblin Lucknut :v');
  writeln('Langkah pertama Anda, diminta input banyaknya HP (hitpoint) Anda dan Goblin');
  writeln('Lalu input giliran bermain. 1 = Anda duluan, 2 = Goblin duluan');
  writeln;
  writeln('Setelah itu pilih aksi yang akan dilakukan :');
  writeln('"attack" untuk melakukan serangan');
  writeln('"heal" untuk memulihkan HP');
  writeln('"run" untuk kabur, setelah itu permainan berakhir');
  writeln;
  writeln('Lalu input bilangan sebagai besarnya attack/heal yg dilakukan');
  writeln('Untuk attack, Anda dapat memilih 3 pilihan : ');
  writeln('"hit" artinya damage nya 100%');
  writeln('"critical" artinya damage nya 200%');
  writeln('"dodged" artinya damage nya 0%');
  writeln;
  writeln('Setelah giliran selesai, akan menampilkan HP dari masing-masing, lalu ganti giliran');
  writeln('Permainan berakhir jika salah satu mati, atau melakukan aksi "run"');
  writeln('SELAMAT BERMAIN');
  writeln;

  write('Masukkan jumlah HP Goblin Slayer : ');
	readln(n);
  write('Masukkan jumlah HP Goblin Lucknut : ');
  readln(m);
  write('Masukkan giliran siapa yang duluan : ');
	readln(i);
  writeln;
	repeat
    if i=1 then
      writeln('Giliran Goblin Slayer')
    else
      writeln('Giliran Goblin');
    write('Tulis aksi yang diinginkan : ');
    readln(aksi);
		case aksi of
      'attack': begin
                  write('Masukkan banyak damage yg dihasilkan : ');
                  readln(Poin);
                  write('Masukkan tipe serangan : ');
                  readln(typeA);
                  tipe();
                  att();
                end;
      'heal' :  begin
                  write('Masukkan banyak HP yang diregen : ');
                  readln(Poin);
                  heal();
                end;
    end;

		if i=1 then
			i:=i+1
		else
			i:=i-1;

    writeln;
    writeln('HP Goblin Slayer yang tersisa : ',n);
    writeln('HP Goblin yang tersisa : ',m);
    writeln('========================================');
    writeln;
  until((m <= 0) or (n <= 0) or (aksi = 'run'));

  if n>0 then
    writeln('HP Akhir Goblin Slayer : ',n)
  else
    begin
      writeln('Goblin Slayer MATI');
      writeln('Yah Anda dianuin sama Goblin Lucknut :v');
    end;
  if m>0 then
    writeln('HP Akhir Goblin : ',m)
  else
    begin
      writeln('Goblin MATI');
      writeln('HORE, Anda berhasil membasmi Goblin Lucknut :v');
    end;
  readln;
end.
