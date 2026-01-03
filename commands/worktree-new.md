# Git Worktree 생성

병렬 Claude 세션을 위한 새 Git Worktree를 생성합니다.

## 사용 시나리오

- 기능 A 작업 중 기능 B를 병렬로 개발
- 버그 수정을 메인 작업과 분리
- 실험적 변경을 안전하게 테스트

## 실행할 작업

1. **현재 상태 확인**
   - `git status` - 커밋되지 않은 변경 확인
   - `git branch -a` - 기존 브랜치 확인

2. **Worktree 생성**
   - 브랜치명 결정 (예: `feature/parallel-task`)
   - 위치 결정 (예: `../project-worktree-1`)
   - `git worktree add <경로> -b <브랜치명>`

3. **환경 파일 복사** (해당 시)
   - `.env.local` 복사
   - 기타 gitignore된 설정 파일 복사

4. **결과 안내**
   - 새 worktree 경로 안내
   - 해당 폴더에서 새 Claude 세션 시작 방법 안내

## 예시

```bash
# feature/login 브랜치로 새 worktree 생성
git worktree add ../myproject-login -b feature/login

# 기존 브랜치로 worktree 생성
git worktree add ../myproject-hotfix hotfix/critical-bug
```

## 주의사항

- 같은 브랜치로 여러 worktree 생성 불가
- worktree 삭제 전 변경사항 커밋/스태시 필요
- 원본 저장소와 worktree는 같은 git 히스토리 공유
