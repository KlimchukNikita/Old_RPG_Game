unit heroadventure;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure hero_adventure ();

implementation

uses

  crt;

procedure hero_adventure ();

var

  a, i: integer;
  x: array[1..5] of integer;
  FF: file of integer;

begin

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('****                                                                                                                ****');
  writeln('****                                                                                                                ****');
  writeln('****    Ты слишком долго был вдали от родного дома и вот настал тот день, когда ты, собрав свои нехитрые            ****');
  writeln('****    пожитки, отправляешься в путь домой. Ты много чего повидал за это время, набрался бесценного опыта.         ****');
  writeln('****    Ты уже не тот юноша, каким отправился из родительского гнезда, ты стал совсем взрослым и самостоятельным.   ****');
  writeln('****    Ты с нетерпением ждал этого дня и уже представляешь, как будут рады твои родители увидеть тебя живым        ****');
  writeln('****    и здоровым. Но на душе у тебя неспокойно, ты чувствуешь вокруг напряжение в ожидании чего-то                ****');
  writeln('****    нехорошего. Путь твой пролегал сквозь лес. Входя под величественный свод листьев, ты поёжился. Этот         ****');
  writeln('****    лес ты хорошо знал, но в этот раз он показался тебе неприветливым и даже враждебным. Но вспомнив о          ****');
  writeln('****    своём обещании вернуться домой, ты уверенно зашагал по еле заметной заросшей тропе, уходившей               ****');
  writeln('****    глубоко в таинственную чащу леса...                                                                         ****');
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

  readln();

  assign(FF, 'playerclass1.dat');
    reset(FF);
      read(FF,a);
    close(FF);

  if a = 1 then
  begin

    x[1] := 4;
    x[2] := 4;
    x[3] := 10;
    x[4] := 4;
    x[5] := 6;

    assign(FF, 'playerclass2.dat');
      rewrite(FF);
        for i := 1 to 5 do
          begin
            write(FF,x[i]);
          end;
      close(FF);

  end

  else
  if a = 2 then
  begin

    x[1] := 4;
    x[2] := 10;
    x[3] := 4;
    x[4] := 8;
    x[5] := 6;

    assign(FF, 'playerclass2.dat');
      rewrite(FF);
        for i := 1 to 5 do
          begin
            write(FF,x[i]);
          end;
      close(FF);

  end

  else
  if a = 3 then
  begin

    x[1] := 10;
    x[2] := 4;
    x[3] := 2;
    x[4] := 4;
    x[5] := 10;

    assign(FF, 'playerclass2.dat');
      rewrite(FF);
        for i := 1 to 5 do
          begin
            write(FF,x[i]);
          end;
      close(FF);

  end;

end;

end.

