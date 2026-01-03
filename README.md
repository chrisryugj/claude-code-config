# Claude Code 전역 설정 동기화

이 폴더는 여러 기기 간 동기화할 Claude Code 설정 파일을 보관합니다.

## 포함 내용

| 파일/폴더 | 설명 |
|-----------|------|
| `settings.json` | 전역 설정 (모델, 권한, 플러그인, hooks) |
| `CLAUDE.md` | 전역 지침 (v2.9) |
| `statusline.py` | 상태 표시줄 스크립트 |
| `commands/` | 슬래시 명령어 (9개) |
| `agents/` | 서브에이전트 (3개) |

### 슬래시 커맨드 목록

| 커맨드 | 용도 |
|--------|------|
| `/commit` | 변경사항 커밋 |
| `/push` | 커밋 + 푸시 |
| `/pull` | git pull |
| `/pr` | PR 생성 |
| `/init-memory` | Memory Bank 초기화 |
| `/sync-memory` | Memory Bank 동기화 |
| `/worktree-new` | Git Worktree 생성 |
| `/worktree-list` | Worktree 목록 |
| `/worktree-remove` | Worktree 삭제 |

### 에이전트 목록

| 에이전트 | 용도 |
|----------|------|
| `verify-work` | PR 전 코드 검증 |
| `code-simplifier` | 코드 단순화 검토 |
| `memory-bank-synchronizer` | Memory Bank 동기화 |

## 설치 방법

### Windows (PowerShell)
```powershell
# sync 폴더 내용을 ~/.claude로 복사
Copy-Item -Path "$env:USERPROFILE\.claude\sync\*" -Destination "$env:USERPROFILE\.claude\" -Recurse -Force
```

### macOS/Linux
```bash
cp -r ~/.claude/sync/* ~/.claude/
```

### 선택적: 개별 파일만 복사
```powershell
# Windows
Copy-Item "$env:USERPROFILE\.claude\sync\settings.json" "$env:USERPROFILE\.claude\"
Copy-Item "$env:USERPROFILE\.claude\sync\CLAUDE.md" "$env:USERPROFILE\.claude\"
Copy-Item -Recurse "$env:USERPROFILE\.claude\sync\commands\*" "$env:USERPROFILE\.claude\commands\" -Force
Copy-Item -Recurse "$env:USERPROFILE\.claude\sync\agents\*" "$env:USERPROFILE\.claude\agents\" -Force
```

## 클라우드 동기화

### OneDrive
```powershell
# sync 폴더를 OneDrive에 저장하고 심볼릭 링크 생성
New-Item -ItemType Junction -Path "$env:USERPROFILE\.claude\sync" -Target "$env:USERPROFILE\OneDrive\claude-sync"
```

### GitHub
```bash
# sync 폴더를 별도 레포지토리로 관리
cd ~/.claude/sync
git init
git remote add origin <your-repo-url>
git push -u origin main
```

## 주의사항

**동기화 금지 파일:**
- `.credentials.json` (인증 정보)
- `history.jsonl` (대화 기록)
- `plugins/` (캐시됨)

## 버전

- **설정 버전**: 2.9
- **업데이트**: 2026-01-03
