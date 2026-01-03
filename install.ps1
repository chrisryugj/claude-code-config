# Claude Code 설정 설치 스크립트 (Windows PowerShell)
# 사용법: powershell -ExecutionPolicy Bypass -File install.ps1

$syncDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$claudeDir = "$env:USERPROFILE\.claude"

Write-Host "=== Claude Code 설정 설치 ===" -ForegroundColor Cyan
Write-Host ""

# 1. settings.json 복사
Write-Host "[1/5] settings.json 복사 중..." -ForegroundColor Yellow
Copy-Item "$syncDir\settings.json" "$claudeDir\settings.json" -Force
Write-Host "      완료" -ForegroundColor Green

# 2. CLAUDE.md 복사
Write-Host "[2/5] CLAUDE.md 복사 중..." -ForegroundColor Yellow
Copy-Item "$syncDir\CLAUDE.md" "$claudeDir\CLAUDE.md" -Force
Write-Host "      완료" -ForegroundColor Green

# 3. statusline.py 복사
Write-Host "[3/5] statusline.py 복사 중..." -ForegroundColor Yellow
Copy-Item "$syncDir\statusline.py" "$claudeDir\statusline.py" -Force
Write-Host "      완료" -ForegroundColor Green

# 4. commands 복사
Write-Host "[4/5] commands/ 복사 중..." -ForegroundColor Yellow
if (!(Test-Path "$claudeDir\commands")) {
    New-Item -ItemType Directory -Path "$claudeDir\commands" -Force | Out-Null
}
Copy-Item "$syncDir\commands\*" "$claudeDir\commands\" -Force
Write-Host "      완료" -ForegroundColor Green

# 5. agents 복사
Write-Host "[5/5] agents/ 복사 중..." -ForegroundColor Yellow
if (!(Test-Path "$claudeDir\agents")) {
    New-Item -ItemType Directory -Path "$claudeDir\agents" -Force | Out-Null
}
Copy-Item "$syncDir\agents\*" "$claudeDir\agents\" -Force
Write-Host "      완료" -ForegroundColor Green

Write-Host ""
Write-Host "=== 설치 완료! ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "설치된 항목:" -ForegroundColor White
Write-Host "  - settings.json (hooks, plugins 포함)"
Write-Host "  - CLAUDE.md (v2.9)"
Write-Host "  - statusline.py"
Write-Host "  - commands/ (9개 슬래시 커맨드)"
Write-Host "  - agents/ (3개 서브에이전트)"
Write-Host ""
Write-Host "Claude Code를 재시작하면 적용됩니다." -ForegroundColor Yellow
