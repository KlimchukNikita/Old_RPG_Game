{************************************************************}
{                                                            }
{                    Project Old_RPG_Game                    }
{    Copyright (c) 2020 <KlimchukNik_MasterPiece_Studio>     }
{              https://github.com/KlimchukNikita             }
{                                                            }
{              Development: Klimchuk Nikita                  }
{              Version: Stage 1. Engine. 0.03                }
{                                                            }
{************************************************************}

{$codepage utf8}

program Old_RPG_Game;

uses

  crt,
  startscreen,
  gamelore,
  playerclass;

begin

  start_screen();
  clrscr();
  game_lore();
  clrscr();
  player_class();

end.

