# Hayden Yoon — GitHub Pages Portfolio

빌드 도구나 외부 패키지 없이 작동하는 반응형 개발자 포트폴리오 샘플입니다.

## 파일 구조

```text
.
├── index.html
├── .nojekyll
└── assets/
    ├── style.css
    ├── main.js
    └── favicon.svg
```

## 수정할 내용

1. `index.html`의 `<title>`, 자기소개, 기술 스택을 개인 정보에 맞게 수정합니다.
2. `PROJECT / 001` ~ `003`은 **실제 수행 이력이 아닌 예시**입니다. 공개 가능한 실제 프로젝트 설명과 수치로 교체하세요.
3. `index.html`에서 `YOUR_EMAIL@example.com`을 자신의 이메일로 교체하세요.
4. `index.html`에서 `YOUR_USERNAME`을 자신의 GitHub ID로 교체하세요.
5. 실제 고객사 이름, 계정 번호, 내부 구성, 자격 증명은 게시하지 마세요.

## 로컬 확인

`index.html`을 브라우저에서 열면 됩니다. 또는 다음 명령으로 로컬 서버를 시작합니다.

```bash
python3 -m http.server 8000
```

브라우저에서 http://localhost:8000 방문.

## GitHub Pages 배포

1. GitHub에서 Public Repository를 만듭니다. 예: `portfolio`.
2. 이 폴더의 파일을 **Repository 루트**에 업로드/커밋합니다.
3. Repository → Settings → Pages → Build and deployment → Source: `Deploy from a branch`.
4. Branch: `main`, Folder: `/(root)` 선택 후 Save.
5. 배포 완료 후 `https://YOUR_USERNAME.github.io/portfolio/`에 접속합니다.

저장소 이름이 `YOUR_USERNAME.github.io`이면 주소는 `https://YOUR_USERNAME.github.io/`입니다.

## 기술 사양

- HTML5, CSS3, Vanilla JavaScript
- 외부 CDN이나 빌드 의존성 없음
- 모바일 내비게이션, 키보드 포커스, reduced-motion 지원
- GitHub Pages 프로젝트 경로와 사용자 루트 경로 모두 지원 (상대 경로)
