# CI/CD 정적 사이트 배포 예제

**교육용 샘플입니다. 실제 운영 프로젝트 이력이 아닙니다.**

## 구성
- `site/index.html`: 배포 대상 정적 웹페이지
- `scripts/check_site.py`: 파이썬 표준 라이브러리 기반 HTML 스모크 테스트
- `.github/workflows/pages.yml`: push 시 검증 후 GitHub Pages로 배포

## 로컬 테스트
```bash
python3 scripts/check_site.py
python3 -m http.server 8000 --directory site
```

## 실제 배포
1. **이 `cicd/` 폴더 안의 내용**을 별도 GitHub 저장소의 루트로 복사합니다 (`.github` 숨김 폴더 포함).
2. Pages 설정의 Source를 **GitHub Actions**로 변경합니다.
3. 기본 브랜치 `main`에 푸시하면 테스트 후 사이트를 배포합니다.
4. 현재 포트폴리오 저장소에 워크플로를 그대로 설치하지 마세요. 두 사이트의 배포 설정이 충돌할 수 있습니다.

실제 운영 사용 시 액션 버전 고정(SHA pinning), 보호된 환경, 승인 정책을 추가로 검토하세요.
