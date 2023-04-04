#!rsc by RouterOS
# RouterOS script: super-mario-theme
# Copyright (c) 2013-2023 Christian Hesse <mail@eworm.de>
# https://git.eworm.de/cgit/routeros-scripts/about/COPYING.md
#
# play Super Mario theme
# https://git.eworm.de/cgit/routeros-scripts/about/doc/super-mario-theme.md

:local Beeps {
  {  660; 100 }; 150; {  660; 100 }; 300; {  660; 100 }; 300;
  {  510; 100 }; 100; {  660; 100 }; 300; {  770; 100 }; 550;
  {  380; 100 }; 575; {  510; 100 }; 450; {  380; 100 }; 400;
  {  320; 100 }; 500; {  440; 100 }; 300; {  480;  80 }; 330;
  {  450; 100 }; 150; {  430; 100 }; 300; {  380; 100 }; 200;
  {  660;  80 }; 200; {  760;  50 }; 150; {  860; 100 }; 300;
  {  700;  80 }; 150; {  760;  50 }; 350; {  660;  80 }; 300;
  {  520;  80 }; 150; {  580;  80 }; 150; {  480;  80 }; 500;
  {  510; 100 }; 450; {  380; 100 }; 400; {  320; 100 }; 500;
  {  440; 100 }; 300; {  480;  80 }; 330; {  450; 100 }; 150;
  {  430; 100 }; 300; {  380; 100 }; 200; {  660;  80 }; 200;
  {  760;  50 }; 150; {  860; 100 }; 300; {  700;  80 }; 150;
  {  760;  50 }; 350; {  660;  80 }; 300; {  520;  80 }; 150;
  {  580;  80 }; 150; {  480;  80 }; 500; {  500; 100 }; 300;
  {  760; 100 }; 100; {  720; 100 }; 150; {  680; 100 }; 150;
  {  620; 150 }; 300; {  650; 150 }; 300; {  380; 100 }; 150;
  {  430; 100 }; 150; {  500; 100 }; 300; {  430; 100 }; 150;
  {  500; 100 }; 100; {  570; 100 }; 220; {  500; 100 }; 300;
  {  760; 100 }; 100; {  720; 100 }; 150; {  680; 100 }; 150;
  {  620; 150 }; 300; {  650; 200 }; 300; { 1020;  80 }; 300;
  { 1020;  80 }; 150; { 1020;  80 }; 300; {  380; 100 }; 300;
  {  500; 100 }; 300; {  760; 100 }; 100; {  720; 100 }; 150;
  {  680; 100 }; 150; {  620; 150 }; 300; {  650; 150 }; 300;
  {  380; 100 }; 150; {  430; 100 }; 150; {  500; 100 }; 300;
  {  430; 100 }; 150; {  500; 100 }; 100; {  570; 100 }; 420;
  {  585; 100 }; 450; {  550; 100 }; 420; {  500; 100 }; 360;
  {  380; 100 }; 300; {  500; 100 }; 300; {  500; 100 }; 150;
  {  500; 100 }; 300; {  500; 100 }; 300; {  760; 100 }; 100;
  {  720; 100 }; 150; {  680; 100 }; 150; {  620; 150 }; 300;
  {  650; 150 }; 300; {  380; 100 }; 150; {  430; 100 }; 150;
  {  500; 100 }; 300; {  430; 100 }; 150; {  500; 100 }; 100;
  {  570; 100 }; 220; {  500; 100 }; 300; {  760; 100 }; 100;
  {  720; 100 }; 150; {  680; 100 }; 150; {  620; 150 }; 300;
  {  650; 200 }; 300; { 1020;  80 }; 300; { 1020;  80 }; 150;
  { 1020;  80 }; 300; {  380; 100 }; 300; {  500; 100 }; 300;
  {  760; 100 }; 100; {  720; 100 }; 150; {  680; 100 }; 150;
  {  620; 150 }; 300; {  650; 150 }; 300; {  380; 100 }; 150;
  {  430; 100 }; 150; {  500; 100 }; 300; {  430; 100 }; 150;
  {  500; 100 }; 100; {  570; 100 }; 420; {  585; 100 }; 450;
  {  550; 100 }; 420; {  500; 100 }; 360; {  380; 100 }; 300;
  {  500; 100 }; 300; {  500; 100 }; 150; {  500; 100 }; 300;
  {  500;  60 }; 150; {  500;  80 }; 300; {  500;  60 }; 350;
  {  500;  80 }; 150; {  580;  80 }; 350; {  660;  80 }; 150;
  {  500;  80 }; 300; {  430;  80 }; 150; {  380;  80 }; 600;
  {  500;  60 }; 150; {  500;  80 }; 300; {  500;  60 }; 350;
  {  500;  80 }; 150; {  580;  80 }; 150; {  660;  80 }; 550;
  {  870;  80 }; 325; {  760;  80 }; 600; {  500;  60 }; 150;
  {  500;  80 }; 300; {  500;  60 }; 350; {  500;  80 }; 150;
  {  580;  80 }; 350; {  660;  80 }; 150; {  500;  80 }; 300;
  {  430;  80 }; 150; {  380;  80 }; 600; {  660; 100 }; 150;
  {  660; 100 }; 300; {  660; 100 }; 300; {  510; 100 }; 100;
  {  660; 100 }; 300; {  770; 100 }; 550; {  380; 100 }; 575 };

:foreach Beep in=$Beeps do={
  :if ([ :len $Beep ] = 2) do={
    :beep frequency=($Beep->0) length=(($Beep->1) . "ms");
  } else={
    :delay ($Beep . "ms");
  }
}