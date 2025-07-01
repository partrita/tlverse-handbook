# `tlverse` 핸드북 

[![Render Quarto Project and Release PDF](https://github.com/tlverse/tlverse-handbook/actions/workflows/quarto-render.yml/badge.svg)](https://github.com/tlverse/tlverse-handbook/actions/workflows/quarto-render.yml)

Mark van der Laan, Jeremy Coyle, Nima Hejazi, Ivana Malenica, Rachael Phillips, Alan Hubbard가 저술한 [**`R`을 활용한 타겟 러닝: 인과 데이터 과학 핸드북**](http://tlverse.org/tlverse-handbook) GitHub 리포지토리에 오신 것을 환영합니다. 이 리포지토리는 커뮤니티로부터 피드백(및 정오표)을 투명하게 요청하기 위해 공개적으로 제공되었습니다.

이 책은 [`Quarto`](https://quarto.org/)를 사용하여 제작되었습니다. `Quarto` 사용 방법에 대한 자세한 정보는 [quarto.org](https://quarto.org/)를 참조하십시오.
Github action을 통해 PDF 파일을 빌드하여 릴리즈하며, Quarto Pub 또는 GitHub Pages를 통해 온라인에서도 내용을 확인할 수 있도록 설정할 수 있습니다. (현재 온라인 게시는 이 README 업데이트 범위에 포함되지 않습니다.)

**주요 변경 사항:**
- Rmd 파일이 qmd 파일로 변환되어 `qmd_files/` 디렉토리에 저장됩니다.
- 프로젝트 설정은 `_quarto.yml` 파일에서 관리됩니다.
- GitHub Actions 워크플로우 (`.github/workflows/quarto-render.yml`)가 Quarto 프로젝트를 렌더링하고 PDF를 생성하여 GitHub Releases에 게시합니다.

로컬에서 책을 빌드하려면:
1. [Quarto CLI](https://quarto.org/docs/get-started/)를 설치합니다.
2. 필요한 R 패키지를 설치합니다 (`renv::restore()` 사용 권장).
3. 터미널에서 다음 명령어를 실행합니다:
   ```bash
   quarto render
   ```
   또는 특정 포맷으로 렌더링하려면:
   ```bash
   quarto render --to html
   quarto render --to pdf
   ```
생성된 파일은 `_book/` (HTML의 경우) 또는 지정된 출력 디렉토리 (PDF의 경우, GitHub Action에서는 `release_pdf/`)에 저장됩니다.
