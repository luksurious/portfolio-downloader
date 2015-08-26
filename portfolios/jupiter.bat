@echo off

set fileName=The-Jupiter-Global-Fund-SICAV.pdf

%~dp0utils\curl -b %~dp0utils\jupiter-cookies.txt "http://www.jupiteram.com/~/media/Literature/Factsheets/SICAV/All%%20Jupiter%%20SICAV%%20Factsheets.pdf" > %~dp0../downloads/%fileName%