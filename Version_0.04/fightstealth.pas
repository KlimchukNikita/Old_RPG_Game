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

begin

  writeln('fightstealth');

  readln();

  clrscr();
  stealth_bandit_1();
  clrscr();
  stealth_bandit_2();

end;

end.

