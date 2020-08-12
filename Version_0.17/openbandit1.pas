unit openbandit1;

{$mode objfpc}{$H+}

{$codepage utf8}

interface

procedure open_bandit_1 ();

implementation

uses

  crt,
  herodeath;

procedure open_bandit_1 ();

var

  a, i, j: integer;
  health, open: extended;
  x: array[1..5] of integer;
  y: array[1..5] of string;
  FF1, FF2: file of integer;
  FF3, FF4: text;

begin

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('*                                                                       _____------__________------_____________       *');
  writeln('*    __________------__________------_____------------------------------                                        `\     *');
  writeln('*   /:--__                                                                                                       |     *');
  writeln('*  ||< > |                                                           _____------__________------_________________/     *');
  writeln('*  | \__/___------__________------_____------------------------------                                         |        *');
  writeln('*  |         |.-.,                                                                                 ,.-.|      |        *');
  writeln('*  |         |.-.-.,                                                                             ,.-.-.|       |       *');
  writeln('*   |        |.-.-.-.,                                  _.-;-._                                ,.-.-.-.|       |       *');
  writeln('*   |        |.-.-.-.-.,                               ;_.JL___;                             ,.-.-.-.-.|      |        *');
  writeln('*  |         |.-.-.-.-.|                               F"-/\_-7L                             |.-.-.-.-.|      |        *');
  writeln('*  |         |.-.-.-.-.|===:                           | a/ e | \                        :===|.-.-.-.-.|       |       *');
  writeln('*  |         |.-.-.-.-.|:::|-,                        ,L,c;,.=,/;,                     ,-|:::|.-.-.-.-.|       |       *');
  writeln('*   |        |.-.-.-.-.|---|-.|                    _,-;;S:;:S;;:, ,--._               |.-|---|.-.-.-.-.|        |      *');
  writeln('*   |        |,-,-,-,-,|---|-,|                   ;. \;;s:::s;;: .,   /\              |,-|---|,-,-,-,-,|        |      *');
  writeln('*    |       |.-.-.-.-.|---|-.|                  /  \  ;::::;;  /    /  \             |.-|---|.-.-.-.-.|         |     *');
  writeln('*    |       |,-,-,-,-,|---|-,|                 / ,  k ;S,;;,S.,    j __,l            |,-|---|,-,-,-,-,|        |      *');
  writeln('*   |        |.-.-.-.-.|:::|-.|              ,---/| /  /S   /S ,.   |,   ;            |.-|:::|.-.-.-.-.|        |      *');
  writeln('*   |        |.-.-.-.-.|---|-.|             ,Ljjj |/|., s ., s   \  L    |            |.-|---|.-.-.-.-.|         |     *');
  writeln('*    |       |.-.-.-.-.|:::|-.|             LL,_ ]( \    /    ,.  ,.||   ;            |.-|:::|.-.-.-.-.|         |     *');
  writeln('*    |       |,-,-,-,-,|---|-,|             ||\ > /  ;-.,_.-.___\.-,(|=="(            |,-|---|,-,-,-,-,|        |      *');
  writeln('*   |        |.-.-.-.-.|:::|-.|             JJ," /   |_  [ $ ]     _]|   /            |.-|:::|.-.-.-.-.|        |      *');
  writeln('*   |        |.-.-.-.-.|---|-.|              LL\/   ,, ,--,-,-----,  \  (             |.-|---|.-.-.-.-.|         |     *');
  writeln('*   |        |,-,-,-,-,|---|-,|              ||     ;      |          |  >            |,-|---|,-,-,-,-,|         |     *');
  writeln('*    |       |.-.-.-.-.|:::|-.|              JJ     |      |\         |,/             |.-|:::|.-.-.-.-.|          |    *');
  writeln('*    |       |.-.-.-.-.|---|-.|               LL    |      ||       , |               |.-|---|.-.-.-.-.|         |     *');
  writeln('*     |      |.-.-.-.-.|:::|-.|               ||    |      ||       . |               |.-|:::|.-.-.-.-.|        |      *');
  writeln('*     |      |,-,-,-,-,|---|-,|               JJ    /_     ||       ;_|               |,-|---|,-,-,-,-,|        |      *');
  writeln('*    |       |.-.-.-.-.|:::|-.|                LL   L "===,|i=======,_|               |.-|:::|.-.-.-.-.|         |     *');
  writeln('*    |       |,-,-,-,-,|---|-,|                ||    i----, ,-------,;                |,-|---|,-,-,-,-,|         |     *');
  writeln('*     |      |.-.-.-.-.|:::|-.|                JJ    ,;-----.------,-,                |.-|:::|.-.-.-.-.|        |      *');
  writeln('*     |      |.-.-.-.-.|---|-,                  LL     L_.__J,,---;,      -       -    ,-|---|.-.-.-.-.|        |      *');
  writeln('*    |       |.-.-.-.-.|===:         -          ||      |   ,|    (                      :===|.-.-.-.-.|       |       *');
  writeln('*   |        |.-.-.-.-.|,                       JJ     .,=  (|  ,_|            -            ,|.-.-.-.-.|       |       *');
  writeln('*    |       |.-.-.-.-,            -      -      LL   /    .,L_    \                          ,-.-.-.-.|        |      *');
  writeln('*    |       |.-.-.-,                            ||   ,---,    ,.___>                  -        ,-.-.-.|        |      *');
  writeln('*   |        |.-.-,        -    -                                        -       -                ,-.-.|       |       *');
  writeln('*   |        |.-,                       -            -        -                            -        ,-.|       |       *');
  writeln('*    |                                                                    _____------__________------__________|_      *');
  writeln('*   |  __________------__________------_____------------------------------                                       `\    *');
  writeln('*   |/`--_                                                                                                         |   *');
  writeln('*   ||[ ]||                                                                  _____------__________------__________/    *');
  writeln('*    \===/__________------__________------_____------------------------------                                          *');
  writeln('*                                                                                                                      *');
  writeln('************************************************************************************************************************');

  readln();

  clrscr();

  assign(FF1, 'playerclass1.dat');
    reset(FF1);
      read(FF1,a);
    close(FF1);

  assign(FF2, 'playerclass2.dat');
    reset(FF2);
      for i := 1 to 5 do
        begin
          read(FF2,x[i]);
        end;
    close(FF2);

  assign(FF3, 'heroinventory.txt');
    reset(FF3);
      for j := 1 to 5 do
        begin
          read(FF3,y[j]);
        end;
    close(FF3);

  assign(FF4, 'health.txt');
    reset(FF4);
      read(FF4,health);
    close(FF4);

  if a = 1 then
  begin

    open := x[3] * 2 + x[5] / 2;

  end

  else
  if a = 2 then
  begin

    open := x[2] * 2 + x[5] / 2;

  end

  else
  if a = 3 then
  begin

    open := x[1] * 2 + x[5] / 2;

  end;

  if open > 25 then
  begin

    if a = 1 then
    begin

      if y[1] = '1). Staff_1' then
      begin

        x[3] :=  x[3] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Staff_2' then
      begin

        x[3] :=  x[3] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Staff_3' then
      begin

        x[3] :=  x[3] + 6;
        x[5] :=  x[5] + 6;

      end;

    end

    else
    if a = 2 then
    begin

      if y[1] = '1). Bow_1' then
      begin

        x[2] :=  x[2] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Bow_2' then
      begin

        x[2] :=  x[2] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Bow_3' then
      begin

        x[2] :=  x[2] + 6;
        x[5] :=  x[5] + 6;

      end;

    end

    else
    if a = 3 then
    begin

      if y[1] = '1). Sword_1' then
      begin

        x[1] :=  x[1] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Sword_2' then
      begin

        x[1] :=  x[1] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Sword_3' then
      begin

        x[1] :=  x[1] + 6;
        x[5] :=  x[5] + 6;

      end;

    end;

    health := health - 15;

  end

  else
  if open <= 25 then
  begin

    health := health - 15;

    if a = 1 then
    begin

      if y[1] = '1). Staff_1' then
      begin

        x[3] :=  x[3] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Staff_2' then
      begin

        x[3] :=  x[3] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Staff_3' then
      begin

        x[3] :=  x[3] + 6;
        x[5] :=  x[5] + 6;

      end;

    end

    else
    if a = 2 then
    begin

      if y[1] = '1). Bow_1' then
      begin

        x[2] :=  x[2] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Bow_2' then
      begin

        x[2] :=  x[2] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Bow_3' then
      begin

        x[2] :=  x[2] + 6;
        x[5] :=  x[5] + 6;

      end;

    end

    else
    if a = 3 then
    begin

      if y[1] = '1). Sword_1' then
      begin

        x[1] :=  x[1] + 2;
        x[5] :=  x[5] + 2;

      end

      else
      if y[1] = '1). Sword_2' then
      begin

        x[1] :=  x[1] + 4;
        x[5] :=  x[5] + 4;

      end

      else
      if y[1] = '1). Sword_3' then
      begin

        x[1] :=  x[1] + 6;
        x[5] :=  x[5] + 6;

      end;

    end;

    health := health - 15;

  end;

  if health <= 0 then
  begin

    hero_death();

  end;

  assign(FF2, 'playerclass2.dat');
    rewrite(FF2);
      for i := 1 to 5 do
        begin
          write(FF2,x[i]);
        end;
    close(FF2);

  assign(FF3, 'health.txt');
    rewrite(FF3);
      write(FF3,round(health));
    close(FF3);

  textcolor(14);

  writeln('************************************************************************************************************************');
  writeln('*                                                                       _____------__________------_____________       *');
  writeln('*    __________------__________------_____------------------------------                                        `\     *');
  writeln('*   /:--__                                                                                                       |     *');
  writeln('*  ||< > |                                                           _____------__________------_________________/     *');
  writeln('*  | \__/___------__________------_____------------------------------                                         |        *');
  writeln('*  |                                                                                                          |        *');
  writeln('*  |                                                                                                           |       *');
  writeln('*   |                                                                                                          |       *');
  writeln('*   |                                                                                                         |        *');
  writeln('*  |                                                                                                          |        *');
  writeln('*  |                                                                                                           |       *');
  writeln('*  |                                                                                                           |       *');
  writeln('*   |                                                                                                           |      *');
  writeln('*   |                                                                                                           |      *');
  writeln('*    |                                                                                                           |     *');
  writeln('*    |                                                                                                          |      *');
  writeln('*   |                                                                                                           |      *');
  writeln('*   |                                                                                                            |     *');
  writeln('*    |                                                                                                           |     *');
  writeln('*    |                                                                                                          |      *');
  writeln('*   |                                                                                                           |      *');
  writeln('*   |                                                                                                            |     *');
  writeln('*   |                                                                                                            |     *');
  writeln('*    |                                                                                                            |    *');
  writeln('*    |                                                                                                           |     *');
  writeln('*     |                                                                                                         |      *');
  writeln('*     |                                                                                                         |      *');
  writeln('*    |                                                                                                           |     *');
  writeln('*    |                                                                                                           |     *');
  writeln('*     |                                                                                                         |      *');
  writeln('*     |                                                                                                         |      *');
  writeln('*    |                                                                                                         |       *');
  writeln('*   |                                                                                                          |       *');
  writeln('*    |                                                                                                          |      *');
  writeln('*    |                                                                                                          |      *');
  writeln('*   |                                                                                                          |       *');
  writeln('*   |                                                                                                          |       *');
  writeln('*    |                                                                    _____------__________------__________|_      *');
  writeln('*   |  __________------__________------_____------------------------------                                       `\    *');
  writeln('*   |/`--_                                                                                                         |   *');
  writeln('*   ||[ ]||                                                                  _____------__________------__________/    *');
  writeln('*    \===/__________------__________------_____------------------------------                                          *');
  writeln('*                                                                                                                      *');
  writeln('************************************************************************************************************************');

  readln();

end;

end.

