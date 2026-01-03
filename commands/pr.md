# PR 생성

변경사항을 분석하고 GitHub PR을 생성합니다.

## 실행할 작업

1. **상태 확인** (병렬 실행)
   - `git status` - 변경된 파일 확인
   - `git diff` - 스테이지되지 않은 변경사항
   - `git diff --cached` - 스테이지된 변경사항
   - `git log -5 --oneline` - 최근 커밋 확인

2. **브랜치 분석**
   - `git branch --show-current` - 현재 브랜치
   - `git diff main...HEAD` - main 대비 전체 변경사항
   - `git log main..HEAD --oneline` - 포함될 커밋들

3. **변경사항 종합 분석**
   - 모든 커밋 메시지 분석 (최신만 아니라 전체)
   - 변경된 파일들의 역할과 영향 파악
   - 주요 변경 내용 요약

4. **PR 생성**
   - 필요시 커밋 추가
   - 원격에 푸시 (`git push -u origin HEAD`)
   - `gh pr create` 실행

## PR 본문 형식

```markdown
## Summary
- 변경사항 1
- 변경사항 2
- 변경사항 3

## Test plan
- [ ] 테스트 항목 1
- [ ] 테스트 항목 2
```

## 주의사항

- 커밋되지 않은 변경사항 있으면 먼저 커밋 제안
- main/master 브랜치에서는 새 브랜치 생성 제안
- PR 제목은 변경 내용을 명확히 반영
