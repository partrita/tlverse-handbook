# `tlverse` 핸드북 

Mark van der Laan, Jeremy Coyle, Nima Hejazi, Ivana Malenica, Rachael Phillips, Alan Hubbard가 저술한 [**`R`을 활용한 타겟 러닝: 인과 데이터 과학 핸드북**](http://tlverse.org/tlverse-handbook) GitHub 리포지토리에 오신 것을 환영합니다.

이 프로젝트는 이제 **Quarto**와 **Pixi**를 사용하여 관리됩니다.

## 주요 특징
- **Quarto**: 최신 출판 시스템을 사용하여 HTML 책을 렌더링합니다.
- **Pixi**: R, Quarto 및 모든 시스템 의존성(OpenSSL, XML2 등)을 일관되게 관리합니다.
- **GitHub Actions**: 푸시 시 자동으로 GitHub Pages에 배포됩니다.

## 로컬 개발 환경 설정

1. [pixi](https://pixi.sh)를 설치합니다.
2. 리포지토리를 클론하고 다음 명령어를 실행하여 환경을 구축합니다:
   ```bash
   pixi run setup-r
   ```
   이 명령어는 필요한 모든 R 패키지(tlverse 포함)를 설치합니다.

## 책 렌더링

- **미리보기**:
  ```bash
  pixi run preview
  ```
- **HTML 렌더링**:
  ```bash
  pixi run render
  ```

생성된 파일은 `_book/` 디렉토리에 저장됩니다.
