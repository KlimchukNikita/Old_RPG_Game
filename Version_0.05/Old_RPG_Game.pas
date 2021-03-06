{************************************************************}
{                                                            }
{                    Project Old_RPG_Game                    }
{    Copyright (c) 2020 <KlimchukNik_MasterPiece_Studio>     }
{              https://github.com/KlimchukNikita             }
{                                                            }
{              Development: Klimchuk Nikita                  }
{              Version: Stage 1. Engine. 0.05                }
{                                                            }
{************************************************************}

{$codepage utf8}

program Old_RPG_Game;

uses

  crt,
  mmsystem,

  startscreen,
  gamelore,
  playerclass,
  heroadventure,
  startmainstory,
  mainstory1,
  mainstory2,
  elfinprison,
  exithero;

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

end.

