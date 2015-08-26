@echo off
cls

cd portfolios\utils

echo Setting up RubyGems...

call gem install bundler

call bundler install