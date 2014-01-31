@ECHO off
echo Setting up global gitignore file
git config --global core.excludesfile %SYSTEMDRIVE%%HOMEPATH%\.dotfiles\.global_gitignore

echo.
echo Linking vim config in user home directory
mklink /d %SYSTEMDRIVE%%HOMEPATH%\vimfiles %SYSTEMDRIVE%%HOMEPATH%\.dotfiles\vimfiles\
mklink /d %SYSTEMDRIVE%%HOMEPATH%\.vim %SYSTEMDRIVE%%HOMEPATH%\.dotfiles\vimfiles\
mklink %SYSTEMDRIVE%%HOMEPATH%\.vrapperrc %STEMDRIVE%%HOMEPATH%\.dotfiles\vimfiles\.vrapperrc
echo.
echo Press ENTER to exit
pause > nul
