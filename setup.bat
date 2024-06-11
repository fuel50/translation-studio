@echo off
echo Installing pyenv...
curl https://pyenv.run | bash
 
set "PATH=%USERPROFILE%\.pyenv\bin;%PATH%"
call %USERPROFILE%\.pyenv\bin\pyenv init --path
call %USERPROFILE%\.pyenv\bin\pyenv init -
call %USERPROFILE%\.pyenv\bin\pyenv virtualenv-init -
 
pyenv install 3.11.0
pyenv local 3.11.0
 
echo Installing Poetry...
curl -sSL https://install.python-poetry.org | python -
 
echo Installing dependencies...
set "PATH=%USERPROFILE%\.local\bin;%PATH%"
poetry env use 3.11.0
poetry install
 
echo Setup complete. To run the app, double-click run.bat
pause