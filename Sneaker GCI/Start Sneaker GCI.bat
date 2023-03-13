@echo off

:start
start "Sneaker GCI" /wait /belownormal sneaker-gci.exe --bind 0.0.0.0:8080 --config config.json
timeout 5

goto :start