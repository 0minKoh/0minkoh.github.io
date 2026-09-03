# Quarto 이력서 사이트

Markdown 파일 하나를 원본으로 관리하면서 같은 내용의 웹 이력서와 A4 PDF를 생성하고, `main` 브랜치에 push할 때 GitHub Pages로 자동 배포하는 프로젝트입니다.

## 로컬 미리보기

[Quarto](https://quarto.org/docs/get-started/)를 설치한 뒤 저장소 루트에서 실행합니다.

```bash
quarto preview
```

웹 브라우저에 표시되는 로컬 주소에서 이력서와 PDF 다운로드 링크를 확인할 수 있습니다.

## 웹과 PDF 빌드

```bash
quarto render
```

빌드 결과는 `_site/index.html`과 `_site/resume.pdf`에 생성됩니다. PDF는 웹과 동일한 HTML 및 인쇄용 CSS를 Chromium으로 렌더링하므로 Chrome 또는 Chromium이 필요합니다.

## 파일별 역할

- `resume.md`: 웹과 PDF가 함께 사용하는 이력서 내용의 유일한 원본
- `index.qmd`: PDF 다운로드 링크를 표시하고 `resume.md`를 포함하는 HTML 진입 문서
- `_quarto.yml`: 사이트 주소, 출력 폴더, 언어 등 Quarto 프로젝트 설정
- `styles.css`: 반응형 화면 및 A4 인쇄가 공유하는 이력서 스타일
- `scripts/export-pdf.sh`: 렌더링된 HTML을 Chromium으로 인쇄해 PDF 생성
- `.github/workflows/publish.yml`: `main` push 시 GitHub Pages 자동 배포
- `assets/`: 추후 이미지 등 정적 파일을 둘 위치

## GitHub Pages 최초 설정

저장소의 **Settings → Pages → Build and deployment → Source**를 **GitHub Actions**로 선택합니다. 워크플로에는 배포에 필요한 최소 권한이 선언되어 있으므로 별도의 배포 브랜치는 필요하지 않습니다.

## 이력서 수정 및 배포

1. `resume.md`만 수정합니다.
2. `quarto render` 또는 `quarto preview`로 웹과 PDF를 확인합니다.
3. 변경 사항을 커밋하고 `main` 브랜치에 push합니다.
4. 저장소의 **Actions** 탭에서 `Publish Quarto resume` 워크플로가 완료됐는지 확인합니다.

배포 주소는 <https://0minkoh.github.io/>이며 PDF는 <https://0minkoh.github.io/resume.pdf>에서 제공됩니다.
