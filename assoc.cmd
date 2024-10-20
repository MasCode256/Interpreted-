@echo off

assoc .icpp=
assoc .ic=


assoc .ic=InterpretedCFile && ftype InterpretedCFile="%~dp0ic.cmd" "%%1" && echo Sucessfull associated .ic
assoc .icpp=InterpretedCPPFile && ftype InterpretedCPPFile="%~dp0icpp.cmd" "%%1" && echo Sucessfull associated .icpp

reg add "HKEY_CLASSES_ROOT\InterpretedCFile\DefaultIcon" /ve /t REG_SZ /d "%~dp0ico.ico"
reg add "HKEY_CLASSES_ROOT\InterpretedCPPFile\DefaultIcon" /ve /t REG_SZ /d "%~dp0ico2.ico"

pause
