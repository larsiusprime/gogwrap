@echo off

:: build the native ndll

cd native

haxelib run hxcpp Build.xml -v

cd ..

copy native\lib\win32\*.dll ndll\Windows

:: build the example program "Test.exe"

cd example
haxe -cp .. Test.hx -main Test -cpp ..\temp\hx -v
cd ..

copy temp\hx\Test.exe ndll\Windows

