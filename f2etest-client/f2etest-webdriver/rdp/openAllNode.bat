@echo off
ping -n 60 127.0.0.1>nul
tskill mstsc
for /R %1 %%p in (*.rdp) do (
ping -n 2 127.0.0.1>nul
start "" mstsc %%p
echo open %%p
)
ping -n 60 127.0.0.1>nul
node nodewatch.js