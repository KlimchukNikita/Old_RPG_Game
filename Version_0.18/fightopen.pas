unit fightopen;

{$mode objfpc}{$H+}

interface

procedure fight_open ();

implementation

uses

  crt,
  openbandit1,
  openbandit2;

procedure fight_open ();

var

  e, f, j: integer;

begin

  randomize;

  e := random(5)+4;


  for j := 1 to e do

    begin

      f := random(2)+1;

      if f = 1 then

        begin

          open_bandit_1();
          clrscr();

        end

      else
      if f = 2 then

        begin

          open_bandit_2();
          clrscr();

        end;

    end;

end;

end.

