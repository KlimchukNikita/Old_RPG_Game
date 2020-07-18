unit mainstory1;

{$mode objfpc}{$H+}

interface

procedure main_story_1 ();

implementation

uses

  crt,
  fightstealth;

procedure main_story_1 ();

begin

  // Get Out Quietly With Tricks...

  writeln('mainstory1');

  readln();

  clrscr();
  fight_stealth();
  clrscr();
  fight_stealth();

end;

end.

