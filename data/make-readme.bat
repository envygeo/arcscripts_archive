@echo.
@if [%1]==[] goto :Usage
@if not exist "%1" goto :Usage
@if exist "%1\_Readme.txt" goto :Exists

:Main
  @echo # Source: replace_with_person_or_place > "%1\_Readme.txt"
  @echo # Url: replace_with_link              >> "%1\_Readme.txt"
  @echo # Retrieved_by: %USERNAME%            >> "%1\_Readme.txt"
  @echo # Retrieved_date: %DATE%              >> "%1\_Readme.txt"
  @goto :EOF

:: ------------- routines ---------------
:Exists
  @echo. "%1\_Readme.txt" already exists.
  @goto :eof

:Usage
  @echo. %~n0 [folder_name]
  @goto :eof
