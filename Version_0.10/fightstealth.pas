unit fightstealth;

{$mode objfpc}{$H+}

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


  for i := 1 to c do

    begin

      d := random(2)+1;

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

