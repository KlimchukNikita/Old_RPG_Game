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

  a, b, j: integer;
  y: array[1..5] of string;
  FF1: file of integer;
  FF2: text;

begin

  sndplaysound('tavern.wav',snd_async);

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('****   Начало главной истории                                                                                       ****');
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

  readln(b);

  assign(FF1, 'playerclass1.dat');
    reset(FF1);
      read(FF1,a);
    close(FF1);

  if a = 1 then
  begin

    y[1] := 'staff1';
    y[2] := 'mantle1';
    y[3] := 'boots1';
    y[4] := 'ring1';
    y[5] := 'diadem1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            write(FF2,y[j]);
          end;
      close(FF2);

  end

  else
  if a = 2 then
  begin

    y[1] := 'bow1';
    y[2] := 'arrows1';
    y[3] := 'cloak1';
    y[4] := 'boots1';
    y[5] := 'poison1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            write(FF2,y[j]);
          end;
      close(FF2);

  end

  else
  if a = 3 then
  begin

    y[1] := 'sword1';
    y[2] := 'shield1';
    y[3] := 'cuirass1';
    y[4] := 'boots1';
    y[5] := 'helmet1';

    assign(FF2, 'heroinventory.txt');
      rewrite(FF2);
        for j := 1 to 5 do
          begin
            write(FF2,y[j]);
          end;
      close(FF2);

  end;

  if b = 1 then
  begin

    clrscr();
    main_story_1();
    clrscr();

  end

  else
  if b = 2 then
  begin

    clrscr();
    main_story_2();
    clrscr();

  end;

end;

end.

