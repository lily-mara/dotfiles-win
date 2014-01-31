@ECHO off
echo Setting up global gitignore file
git config --global core.excludesfile %SYSTEMDRIVE%%HOMEPATH%\.dotfiles\.global_gitignore

echo.
echo Press ENTER to exit
pause > nul
