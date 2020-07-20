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

  if a = 1 then
  begin

    assign(FF, 'playerclass.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    clrscr();
    hero_lore_1();
    clrscr();

  end

  else
  if a = 2 then
  begin

    assign(FF, 'playerclass.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    clrscr();
    hero_lore_2();
    clrscr();

  end

  else
  if a = 3 then
  begin

    assign(FF, 'playerclass.dat');
      rewrite(FF);
        write(FF,a);
      close(FF);

    clrscr();
    hero_lore_3();
    clrscr();

  end;

end;

end.

