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
  writeln('****   Приключения героя                                                                                            ****');
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

