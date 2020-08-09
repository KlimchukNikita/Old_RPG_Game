unit startmainstory;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure start_main_story ();

implementation

uses

  crt,
  mmsystem,
  mainstory1,
  mainstory2;

procedure start_main_story ();

var

  a, b, j, health: integer;
  y: array[1..5] of string;
  FF1: file of integer;
  FF2, FF3: text;

begin

  sndplaysound('tavern.wav',snd_async);

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****    Ты очнулся на полу в очень тесной комнате, нетрудно было догадаться, что это была тюремная камера.          ****');
  writeln('****    Немного придя в себя, ты начал постепенно вспоминать недавние события и догадываться, что же произошло      ****');
  writeln('****    на самом деле. Люди, с которыми ты сидел накануне у костра, оказались лесными разбойниками.                 ****');
  writeln('****    Они не рискнули напасть на тебя открыто, видя, что ты далеко не простой искатель приключений.               ****');
  writeln('****    После твоего рассказа они убедились в этом ещё больше и решили пленить тебя хитростью. Они подсыпали        ****');
  writeln('****    тебе в еду сонное зелье. Ты вспомнил, что в этом лесу находится старый заброшенный форт. Возможно логово    ****');
  writeln('****    разбойников находилось именно здесь. Итак, пора выбираться отсюда и как можно скорее...                     ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        Как будешь выбираться из заточения?                                                                     ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        [Чтобы выбрать стиль боя введите номер выбранного вами варианта]                                        ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        1. Скрытное перемещение. Тихая атака. Бесшумный стиль.                                                  ****');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****        2. Свободное перемещение. Открытая атака. Обычный стиль.                                                ****');
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

  readln(b);

  clrscr();

  assign(FF1, 'playerclass1.dat');
    reset(FF1);
      read(FF1,a);
    close(FF1);

  if a = 1 then
  begin

    y[1] := '1). Staff_1';
    y[2] := '2). Mantle_1';
    y[3] := '3). Boots_1';
    y[4] := '4). Ring_1';
    y[5] := '5). Diadem_1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            writeln(FF2,y[j]);
          end;
      close(FF2);

  end

  else
  if a = 2 then
  begin

    y[1] := '1). Bow_1';
    y[2] := '2). Arrows_1';
    y[3] := '3). Cloak_1';
    y[4] := '4). Boots_1';
    y[5] := '5). Poison_1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            writeln(FF2,y[j]);
          end;
      close(FF2);

  end

  else
  if a = 3 then
  begin

    y[1] := '1). Sword_1';
    y[2] := '2). Shield_1';
    y[3] := '3). Cuirass_1';
    y[4] := '4). Boots_1';
    y[5] := '5). Helmet_1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            writeln(FF2,y[j]);
          end;
      close(FF2);

  end;

  health := 100;

  assign(FF3, 'health.txt');
    rewrite(FF3);
      write(FF3,health);
    close(FF3);

  if b = 1 then
  begin

    main_story_1();

  end

  else
  if b = 2 then
  begin

    main_story_2();

  end;

end;

end.

