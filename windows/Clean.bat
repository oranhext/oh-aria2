@echo off & title Aria2 Clean
Taskkill /F /IM aria2c.exe
type nul > config\aria2.log
type nul > config\aria2.session
rmdir /q /s downloads
mkdir downloads