@echo off
cls

cd portfolios

echo Downloading Acatis Factsheet...
ruby acatis.rb
echo
echo Downloading Concord Factsheet...
ruby concord.rb
echo
echo Downloading Jupiter Factsheet...
call jupiter.bat