@echo off

busybox ps | busybox grep emacs > nul
if '%ERRORLEVEL%' NEQ '0' (
	 start "" %WINIXROOT%\Emacs\bin\emacs.exe
	 busybox sleep 3
)

::windows version
if not '%1'=='--help' (
	%WINIXROOT%\Emacs\bin\emacsclient.exe -n %*
) else (
	%WINIXROOT%\Emacs\bin\emacsclient.exe --help
	echo.
	echo.
	echo chown.exe -R huangxiaolu .emacs.d\
)