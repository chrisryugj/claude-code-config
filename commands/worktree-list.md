# Git Worktree 목록

현재 프로젝트의 모든 Git Worktree를 조회합니다.

## 실행할 작업

1. **Worktree 목록 조회**
   ```bash
   git worktree list
   ```

2. **각 Worktree 상태 확인**
   - 각 worktree의 현재 브랜치
   - 커밋되지 않은 변경사항 여부
   - 마지막 커밋 정보

3. **정리된 목록 출력**

## 출력 예시

```
## Git Worktrees

| 경로 | 브랜치 | 상태 |
|------|--------|------|
| /path/to/main | main | clean |
| /path/to/feature | feature/login | 3 files modified |
```
