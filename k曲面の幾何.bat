:loop

rem if EXIST k�Ȗʂ̊�.log (copy k�Ȗʂ̊�.log.* k�Ȗʂ̊�.log.*.old)

platex k�Ȗʂ̊�



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy k�Ȗʂ̊�.dvi kensaku.dvi
goto stop

:stop
rem if EXIST k�Ȗʂ̊�.log.old (c:\bin\diff k�Ȗʂ̊�.log.old k�Ȗʂ̊�.log)

rem hidemaru .\k�Ȗʂ̊�.log

pause

goto loop