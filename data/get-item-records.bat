@echo.
@echo.  Searching ArcScripts_Items.csv for records matching 'AS' folders
@echo.  and exporting to AS9999\_item.csv
@echo.
@for /d %%a in (AS*) do @(
  if not exist "%%a\_item.csv" (
    findstr /i "%%a" ..\ArcScripts_Items.csv > "%%a"\_item.csv
    @echo.
    type "%%a\_item.csv"
    )
  )