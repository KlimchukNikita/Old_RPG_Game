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
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****    Стой, путник! Слезай с коня да садись к костру. Нынче живым нужно держаться вместе. Расскажи нам о          ****');
  writeln('****    себе. Быть может ты и есть тот самый герой, о котором рассказывают древние легенды и предания! Кто ты?      ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        [Чтобы выбрать класс героя введите номер выбранного вами варианта]                                      ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        1. Боевой маг                                                                                           ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        2. Скрытный лучник                                                                                      ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        3. Мастер меча                                                                                          ****');
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

