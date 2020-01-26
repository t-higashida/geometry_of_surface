:loop

rem if EXIST k‹È–Ê‚ÌŠô‰½.log (copy k‹È–Ê‚ÌŠô‰½.log.* k‹È–Ê‚ÌŠô‰½.log.*.old)

platex k‹È–Ê‚ÌŠô‰½



if %errorlevel%  geq	1 goto delaux
if %errorlevel%  geq	0 goto copydvi

:delaux
rem del *.aux
goto stop

:copydvi
copy k‹È–Ê‚ÌŠô‰½.dvi kensaku.dvi
goto stop

:stop
rem if EXIST k‹È–Ê‚ÌŠô‰½.log.old (c:\bin\diff k‹È–Ê‚ÌŠô‰½.log.old k‹È–Ê‚ÌŠô‰½.log)

rem hidemaru .\k‹È–Ê‚ÌŠô‰½.log

pause

goto loop