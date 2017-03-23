for /r %%v in (src\*.xml) do xml2rfc --html "%%v"
for /r %%v in (src\*.xml) do xml2rfc "%%v"
move /y "%~dp0src\*.html" "%~dp0artifacts\"
move /y "%~dp0src\*.txt" "%~dp0artifacts\"