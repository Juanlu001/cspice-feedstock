mkdir %LIBRARY_INC%\cspice

copy "%RECIPE_DIR%\\makeDynamicSpice.bat" %SRC_DIR%\src\cspice
copy "%RECIPE_DIR%\\cspice.def" %SRC_DIR%\src\cspice

cd %SRC_DIR%\src\cspice

call makeDynamicSpice.bat

copy "cspice.dll" %LIBRARY_LIB%

if errorlevel 1 exit 1

cd %SRC_DIR%

copy "include\\*.h" %LIBRARY_INC%\cspice

if errorlevel 1 exit 1
