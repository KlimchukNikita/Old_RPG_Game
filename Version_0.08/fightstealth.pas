unit fightstealth;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure fight_stealth ();

implementation

uses

  crt,
  stealthbandit1,
  stealthbandit2;

procedure fight_stealth ();

var

  c, d, i: integer;

begin

  randomize;

  c := random(3)+2;


  for i := 1 to c+1 do

    begin

      d := random(3)+1;

      if d = 1 then

        begin

          stealth_bandit_1();
          clrscr();

        end

      else
      if d = 2 then

        begin

          stealth_bandit_2();
          clrscr();

        end;

    end;

end;

end.

