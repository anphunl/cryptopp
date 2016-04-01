@echo off
for /f %%f in ('dir /b .\android\obj\local') do (
    IF not exist .\prebuilt\android\%%f (mkdir .\prebuilt\android\%%f)
    copy /Y .\android\obj\local\%%f\libcryptopp.a .\prebuilt\android\%%f
)
