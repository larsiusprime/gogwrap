@echo off
set /p GOGPATH=Enter path to GOG SDK root (folder that contains "\Docs", "\Include", "\Libraries", no trailing slash):
set /p HXCPP=Enter path to hxccp root (folder that contains "\include", no trailing slash):
set /p WINPATH=Enter path to (Windows) GOG SDK root:
set /p MACPATH=Enter path to (Mac OSX) GOG SDK root:
set /p LIN32PATH=Enter path to (Linux 32-bit) GOG SDK root:
set /p LIN64PATH=Enter path to (Linux 64-bit) GOG SDK root:
copy "%GOGPATH%\Include\galaxy\*.h" native\include\steam\
copy "%WINPATH%\Libraries\Galaxy64.dll" native\lib\win32\
copy "%WINPATH%\Libraries\GalaxyPeer64.dll" native\lib\win32\
copy "%WINPATH%\Libraries\Galaxy64.lib" native\lib\win32\
copy "%MACPATH%\Libraries\libGalaxy.dylib" native\lib\osx64
copy "%MACPATH%\Libraries\libGalaxyPeer.dylib" native\lib\osx64
copy "%LIN32PATH%\Libraries\libGalaxy.so" native\lib\linux32
copy "%LIN32PATH%\Libraries\libGalaxyPeer.so" native\lib\linux32
copy "%LIN64PATH%\Libraries\libGalaxy.so" native\lib\linux64
copy "%LIN64PATH%\Libraries\libGalaxyPeer.so" native\lib\linux64
copy "%HXCPP%\include\hx\*.h" native\include\hx
pause