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

begin

  writeln('fightopen');

  readln();

  clrscr();
  open_bandit_1();
  clrscr();
  open_bandit_2();

end;

end.

