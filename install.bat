@echo off
chcp 65001 >nul
echo === Claude Code 설정 설치 ===
echo.

set "SYNC_DIR=%~dp0"
set "CLAUDE_DIR=%USERPROFILE%\.claude"

echo [1/5] settings.json 복사 중...
copy /Y "%SYNC_DIR%settings.json" "%CLAUDE_DIR%\settings.json" >nul
echo       완료

echo [2/5] CLAUDE.md 복사 중...
copy /Y "%SYNC_DIR%CLAUDE.md" "%CLAUDE_DIR%\CLAUDE.md" >nul
echo       완료

echo [3/5] statusline.py 복사 중...
copy /Y "%SYNC_DIR%statusline.py" "%CLAUDE_DIR%\statusline.py" >nul
echo       완료

echo [4/5] commands/ 복사 중...
if not exist "%CLAUDE_DIR%\commands" mkdir "%CLAUDE_DIR%\commands"
xcopy /Y /Q "%SYNC_DIR%commands\*" "%CLAUDE_DIR%\commands\" >nul
echo       완료

echo [5/5] agents/ 복사 중...
if not exist "%CLAUDE_DIR%\agents" mkdir "%CLAUDE_DIR%\agents"
xcopy /Y /Q "%SYNC_DIR%agents\*" "%CLAUDE_DIR%\agents\" >nul
echo       완료

echo.
echo === 설치 완료! ===
echo.
echo 설치된 항목:
echo   - settings.json (hooks, plugins 포함)
echo   - CLAUDE.md (v2.9)
echo   - statusline.py
echo   - commands/ (9개 슬래시 커맨드)
echo   - agents/ (3개 서브에이전트)
echo.
echo Claude Code를 재시작하면 적용됩니다.
pause
