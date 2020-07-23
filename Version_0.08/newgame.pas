unit newgame;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure new_game ();

implementation

uses

  crt,
  mmsystem,

  startscreen,
  gamelore,
  playerclass,
  heroadventure,
  startmainstory,
  elfinprison,
  exithero,
  gamedemo;

procedure new_game ();

begin

  sndplaysound('maintheme.wav',snd_async);

  start_screen();
  clrscr();
  game_lore();
  clrscr();
  player_class();
  clrscr();
  hero_adventure();
  clrscr();
  start_main_story();
  clrscr();
  elf_in_prison();
  clrscr();
  exit_hero();
  clrscr();
  game_demo();

end;

end.

