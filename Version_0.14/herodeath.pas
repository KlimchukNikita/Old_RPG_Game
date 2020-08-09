unit herodeath;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure hero_death ();

implementation

uses

  crt,
  mmsystem,
  newgame,
  gamedemo;

procedure hero_death ();

var

  h: integer;

begin

  sndplaysound('death.wav',snd_async);

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('************************************************************************************************************************');
  writeln('****   herodeath                                                                                                    ****');
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

  readln(h);

  if h = 1 then
  begin

    clrscr();
    new_game();

  end

  else
  if h = 2 then
  begin

    clrscr();
    game_demo();

  end;

end;

end.

