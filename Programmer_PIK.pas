program hitung_nilai_akhir;
uses crt;
var
  uts, uas, tugas, project, kehadiran, praktikum, quiz, keaktifan, nilai_akhir: real;
  grade: string;

begin
clrscr;
  write('Masukkan nilai UTS: ');
  readln(uts);

  write('Masukkan nilai UAS: ');
  readln(uas);

  write('Masukkan nilai Tugas: ');
  readln(tugas);

  write('Masukkan nilai Project: ');
  readln(project);

  write('Masukkan nilai Kehadiran: ');
  readln(kehadiran);

  write('Masukkan nilai Praktikum: ');
  readln(praktikum);

  write('Masukkan nilai Quiz: ');
  readln(quiz);

  write('Masukkan nilai Keaktifan: ');
  readln(keaktifan);

  nilai_akhir := (uts * 0.11) + (uas * 0.12) + (tugas * 0.1) + (project * 0.16) + (kehadiran * 0.1) + (praktikum * 0.2) + (quiz * 0.1) + (keaktifan * 0.1);

  if nilai_akhir >= 90 then
    grade := 'A+'
  else if nilai_akhir >= 80 then
    grade := 'A'
  else if nilai_akhir >= 70 then
    grade := 'B'
  else if nilai_akhir >= 60 then
    grade := 'C+'
  else if nilai_akhir >= 50 then
    grade := 'C'
  else
    grade := 'D';

  writeln('Nilai akhir Anda adalah: ', nilai_akhir:4:2);
  writeln('Grade Anda adalah: ', grade);

  if nilai_akhir >= 50 then
    begin
    writeln('Selamat Anda LULUS. Pertahankan nilainya :)')
    end
  else
    writeln('Anda TIDAK LULUS.Tetap semangat yaaa. Aku yakin kamu bisaa ;)');
  readln;
end.