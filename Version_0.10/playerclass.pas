unit playerclass;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure player_class ();

implementation

uses

  crt,
  herolore1,
  herolore2,
  herolore3;

procedure player_class ();

var

  a: integer;
  FF: file of integer;

begin

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('****   Стой, путник! Быть может ты и есть тот самый герой...                                                        ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');

  readln(a);

  clrscr();

  if a = 1 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_1();

  end

  else
  if a = 2 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_2();

  end

  else
  if a = 3 then
  begin

    assign(FF, 'playerclass1.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    hero_lore_3();

  end;

end;

end.

