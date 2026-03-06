@echo off
setlocal

set "MAIN=math4cs-symbol-handbook-cn"

pushd "%~dp0"

del /q "%MAIN%.aux" "%MAIN%.idx" "%MAIN%.ilg" "%MAIN%.ind" "%MAIN%.log" "%MAIN%.out" "%MAIN%.toc" "%MAIN%.xdv" "%MAIN%.synctex.gz" 2>nul

xelatex "%MAIN%.tex"
makeindex -s math4cs-index.ist "%MAIN%.idx"
xelatex "%MAIN%.tex"
xelatex "%MAIN%.tex"

popd
endlocal