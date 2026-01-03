# Git Worktree 삭제

더 이상 필요 없는 Git Worktree를 정리합니다.

## 실행할 작업

1. **현재 Worktree 목록 확인**
   ```bash
   git worktree list
   ```

2. **삭제할 Worktree 확인**
   - 해당 worktree의 변경사항 확인
   - 커밋되지 않은 변경이 있으면 경고

3. **Worktree 삭제**
   ```bash
   git worktree remove <경로>
   ```

   또는 강제 삭제:
   ```bash
   git worktree remove --force <경로>
   ```

4. **브랜치 정리** (선택적)
   - 병합된 브랜치 삭제 제안
   - `git branch -d <브랜치명>`

## 주의사항

- 삭제 전 변경사항 확인 필수
- 병합되지 않은 브랜치는 별도 처리 필요
- `--force` 사용 시 변경사항 유실 가능

## 일괄 정리

```bash
# 이미 삭제된 폴더의 worktree 기록 정리
git worktree prune
```
