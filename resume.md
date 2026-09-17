
::: {.profile-header}
::: {.profile-copy}
<p class="profile-name" role="heading" aria-level="1">고영민</p>

<p class="headline">AI Product Engineer · Full-Stack Engineer (App, Web, AI)</p>

<p class="career-summary">5년차 엔지니어 · 총 경력 4년 3개월</p>

<p class="personal-info">2003년생 · <a href="tel:+821068510661">+82 10-6851-0661</a></p>

<p class="contact"><a href="mailto:ymkoh.dev@gmail.com">ymkoh.dev@gmail.com</a> · <a href="https://github.com/0minKoh">github.com/0minKoh</a> · <a href="https://0minkoh.github.io/">웹 이력서</a></p>
:::

<img class="profile-photo" src="assets/profile_26.jpeg" alt="고영민 프로필 사진" width="160" height="206">
:::

## 소개

::: {.summary-block}
### Summary

창업을 계기로 아이디어를 직접 구현하는 엔지니어의 길에 들어섰습니다. 현재 수파자에서 웹·모바일·AI 제품의 설계부터 배포·운영까지 맡고 있으며, **MAU 10만 명의 멤버십 플랫폼**과 **문의·상담 일평균 처리시간을 180분 → 30분으로 줄인 CS 자동화**를 구현했습니다. 정규직 근무와 학업을 병행하며 **한양대학교 서울캠퍼스 경영학부를 평점 4.45/4.5로 조기·학부 수석 졸업**했습니다. 제품 개발과 학습 경험을 **수강생 8,000명 이상의 AI 교육**과 제이펍 등 출판사와의 도서 집필로 이어가고 있습니다. <!-- VERIFIED:M08,M14 — 2026.09.09 사용자 제공 --><!-- 학부 수석 졸업: 2026.09.14 사용자 직접 확인 -->

:::

<div class="vision-block">
<p class="vision-label">VISION</p>
<p class="vision-title">누구나 기술의 혜택을 누릴 수 있도록.</p>
</div>

### 일하는 원칙 · 가장 작은 가치부터 끝까지

- **작은 고객 가치부터 검증합니다.** 사용자의 기존 업무와 도입 부담을 살피고, 핵심 가설을 먼저 확인합니다.
- **측정으로 기술을 선택합니다.** 실제 환경의 품질·속도·메모리·비용을 비교해 제품 제약에 맞는 구성을 결정합니다.
- **구현 이후의 판단까지 책임집니다.** 설계·개발·배포·운영을 맡고, 기술 성능과 사용자 반응을 구분해 개선·채택·보류를 판단합니다.

## 경력

### 수파자 · Full-Stack Engineer (App, Web, AI)

2022.06 - 현재 · 4년 3개월 · 정규직 <!-- 경력 산정 기준: 2026.09, 입사 월 기준 -->

사업·운영 담당자와 협업하며 담당 영역을 `Web → App → DX(Digital Transformation, 디지털 전환)/AX(AI Transformation, AI 전환) → AI Application → Native & Edge AI`로 확장했습니다. 담당한 프로젝트는 기술적 의사결정부터 설계, 개발, 배포, 운영까지 End-to-End로 수행했습니다.

::: {.resume-project}
#### 소방 히어로 멤버십 · 소방관과 후원사를 연결하는 인증 플랫폼

`구축 완료`

- **비즈니스**
  - 소방관과 첫 후원기업을 연결하는 단일 가설에서 출발해 누적 후원사 **100개+**, 인증 회원 **10만+** 규모의 플랫폼으로 확장했습니다. 50개 이상의 후원사에 인증 API를 제공했습니다. <!-- VERIFIED:M06,M07 — 2026.09.09 사용자 확인: 실제 성과 -->
  - MAU **10만 명**, 재방문율 **48%**를 확보했습니다. <!-- VERIFIED:M08 — 2026.09.09 사용자 제공 --><!-- DATA:M09 -->
- **기술**
  - iOS는 `Swift·SwiftUI`, Android는 `Kotlin`으로 WebView 기반 네이티브 앱을 개발했습니다.
  - `Django·Django REST Framework` 기반으로 회원·후원사·인증·혜택 도메인을 분리하고, `PostgreSQL·Redis·Celery`로 트랜잭션, 캐시·잠금, 비동기 작업을 구성했습니다. <!-- VERIFY-TECH:S01 -->
  - 후원사 인증 API의 과도한 요청으로부터 서버 자원을 보호하기 위해 `OAuth 2.0` API에 `Redis` 기반 Token Bucket Rate Limit(일정 속도로 보충되는 토큰으로 요청량을 제한)을 적용했습니다. <!-- VERIFY-TECH:S02,S03 — 적용 전후 부하·응답 결과는 미확인, 검증 후 보완 -->
  - OCR(Optical Character Recognition, 이미지 문자 인식) 추론 부하가 회원·후원사 API에 영향을 주지 않도록 `PaddleOCR` 추론 서버를 Django 웹 서버에서 분리했습니다. 자원과 장애 영향을 격리해 웹 API의 응답 안정성에 미치는 영향을 줄였습니다.
- **인사이트**
  - 첫 고객 가치를 검증한 뒤 실제 이용 지표에 따라 기능과 기술 구조를 확장하는 제품 원칙을 세웠습니다.

:::

::: {.resume-project}
#### Voice AI · 자체 음성 합성으로 구현한 실시간 대화

`종료`

- **비즈니스**
  - 자체 TTS(Text-to-Speech, 텍스트를 음성으로 합성)의 A/B 선호도는 상용 API 대비 **4.2배**였지만, 고객 전환율은 **1% 미만**이었습니다. <!-- DATA:M12,M13 -->
- **기술**
  - `VoxCPM2·nano_vllm`에 Model Warm-up, Continuous Batching, KV Cache와 Backpressure를 적용해 GPU 메모리와 Tail Latency를 제어했습니다. <!-- VERIFY-TECH:V01 -->
  - LLM 문장 청킹과 TTS 병렬 합성, Buffer·Cancellation으로 Streaming Pipeline을 구성하고, TTFA(Time to First Audio, 요청부터 첫 음성 프레임 전달까지의 시간)를 **2.8초에서 0.9초로 68% 단축**했습니다. <!-- DATA:M10,M11 --><!-- VERIFY-TECH:V02,V04 -->
  - `Silero VAD(Voice Activity Detection, 음성 구간 감지)`와 `WebRTC(Web Real-Time Communication, 실시간 음성 통신)`를 이용해 발화 종료·끼어들기와 네트워크 변동을 처리했습니다. <!-- VERIFY-TECH:V03 -->
  - 생성 음성의 전사 결과·자동 음질 평가·코사인 유사도를 평가하고, Best-of-N Selection(여러 생성 후보 중 평가 기준에 따라 최상위 결과를 선택)으로 어드민에 제공하는 파이프라인을 구현했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#7 -->
- **인사이트**
  - 기술 성능과 시장 수요는 별도로 검증해야 하며, 원천 기술 확보보다 고객의 핵심 수요를 먼저 확인해야 한다는 기준을 얻었습니다.

:::

::: {.resume-project}
#### AX · 문의·상담 처리시간을 줄이는 CS 자동화

`구축 완료`

- **비즈니스**
  - 문의·상담에 필요한 정보 조회·분류·답변 초안 작성을 자동화해 **일평균 처리시간을 180분 → 30분으로 단축**하고 **월 3,000건**을 지원했습니다. 기존 문의 채널과 담당자의 최종 승인 절차는 유지했습니다. <!-- VERIFIED:M14,M15 — 2026.09.09 사용자 확인: 실제 성과 -->
- **기술**
  - `Django` 기반 고객 관리 시스템에 LLM(Large Language Model, 대규모 언어 모델) 답변 초안과 Slack 알림을 연동해 CS 담당자의 문의·상담 처리를 지원했습니다. <!-- VERIFY-TECH:A01 -->
  - Computer Use macOS 앱에 RAG(Retrieval-Augmented Generation, 검색한 사내 문서를 답변 근거로 제공하는 방식), Tool Allowlist, PII Masking과 Human-in-the-loop를 적용하고 실행 과정을 Audit Log로 남겼습니다. <!-- VERIFY-TECH:A04,A05 -->
  - 검색 결과의 적합성을 평가한 뒤 피드백에 따라 쿼리를 재작성·재검색하는 반복 검색을 구현했습니다. Agent 실행 결과에도 사전 정의한 기준에 따른 Runtime Evaluation(실행 시점의 결과 적합성 평가) 단계를 추가했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#1,6 -->
  - 도구 호출 인자 오류는 원인 분석 후 인자를 재생성하고, 정보가 부족하면 사용자에게 확인하는 복구 루프를 구현했습니다. 도구별 안전 정책에 따라 자동 실행과 사용자 승인 후 실행을 구분했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#3,4 -->
  - N턴 주기의 비동기 Context Compaction(대화 요약으로 컨텍스트를 압축)을 구현하고, 가용 메모리에 따라 백그라운드 병렬 요약·대화 종료 후 지연 처리·다음 대화 전 동기 처리로 실행 시점을 전환하도록 설계했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#2 -->
- **인사이트**
  - CS 담당자의 기존 채널과 최종 판단을 유지하면서 정보 조회와 답변 준비를 자동화해, 업무 방식의 변경 부담을 낮추면서 처리시간을 줄였습니다.

:::

## 주요 경험

### 창업 · 학습 환경의 격차를 줄이는 첫 가설

::: {.resume-project}
#### 부스트캠퍼스 · 학습 공간의 제약을 넘는 온라인 독서실

`종료`

2021.06 - 2022.05 · CEO · 3-4명 팀

- **가설과 실행**
  - 코로나19 시기의 학습 격차를 보며 학습 환경이 성적에 영향을 준다는 가설을 세웠습니다. 오프라인 모임이 제한된 상황에서 독서실 환경을 온라인으로 재현하고, 대학생 멘토가 여러 학생의 학습을 관리하는 서비스를 기획해 처음 시장검증에 도전했습니다.
- **외부 인정**
  - **2022 예비창업패키지**, **2021 생애최초 창업지원**, **2021 한양대학교 & 성동 캠퍼스타운 창업지원**에 선정되었습니다.
  - **2021 HUBS 창업경진대회 최우수상**, **2021 한양대학교 & 코맥스 창업경진대회 우수상**을 수상했습니다.
- **인사이트**
  - 제품 개발·운영·그로스 마케팅 등 사업 실행 역량의 부족으로 종료했습니다. 약 6개월간 개발을 집중 학습하며 아이디어를 직접 구현하는 엔지니어로 전환했습니다.

:::

### 교육·출판 · 기술 지식의 진입 장벽을 낮추다

::: {.resume-project}
#### 강의와 집필 · 실무에서 검증한 AI 활용법을 학습 콘텐츠로

`활동 중`

- **활동**
  - AI를 활용해 일과 학업을 병행한 방법, 제품을 만들며 검증한 개발 지식을 누구나 따라 할 수 있는 콘텐츠로 전환하고 있습니다.
  - 개인 Codex CLI 활용에서 Orchestrator–Worker(작업 분해·취합 담당과 실행 담당을 나누는 구조) 기반 멀티 Agent 워크플로우를 구성했습니다. 중복되지 않는 하위 작업의 병렬 실행과 목표 달성 여부에 따른 재분배 노하우를 인프런 강의와 집필 중인 도서에 반영했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#5 — 자체 프레임워크 개발이 아닌 개인 도구 활용·교육 경험 -->
- **교육**
  - 인프런 지식공유자 [AI 지식 전달자](https://www.inflearn.com/users/1059861/@youngportfolio) · 수강생 **8,000명+** · 평점 **4.7/5.0** <!-- 2026.09.08 공개 프로필 확인: 수강생 8,346명, 평점 4.7 -->
- **출판**
  - **제이펍(Jpub) 등 출판사의 집필 제안으로 협업**을 시작해, AI 활용 지식을 도서로 확장하고 있습니다. <!-- 출판사 제안 경위: 2026.09.09 사용자 제공 -->
  - [《A+를 부르는 요즘 대학생의 AI 공부법》](https://www.yes24.com/product/goods/195125344) · 제이펍 · 2026.08 출간<br>제미나이·제미나이 노트북·퍼플렉시티·안티그래비티 등으로 수업 정리부터 시험·과제·발표까지 이어지는 AI 학습 루틴을 안내합니다.
    **[교보문고](https://product.kyobobook.co.kr/detail/S000220861442)·[예스24](https://www.yes24.com/product/goods/195125344)·[알라딘](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=400332321) 등 주요 서점에서 판매 중**입니다.
  - 《OpenAI Codex 바이브코딩》 · 제이펍 · 집필 중 · 2026.08 계약<br>ChatGPT 데스크톱 앱의 Chat Mode·Work Mode·Codex Mode를 활용한 AI 협업과 바이브코딩을 다룹니다. <!-- 활용 도구: 2026.09.08 저자 확인 -->
  - 《AI 활용 자격증 공부법》 · 시대고시기획 · 집필 중 · 2026.06 계약<br>Gemini Notebook(구 NotebookLM)과 Gemini·Gem을 활용한 자격증 시험 준비와 학습법을 안내합니다. <!-- 활용 도구: 2026.09.08 저자 확인 -->

:::

### 개인 프로젝트 · 새로운 접근 가능성을 검증하다

::: {.resume-project}
#### 이음 · 지역 기업의 디지털 격차를 줄이는 현장형 AX

`진행 중`

- **목표**
  - 강진·고흥 농산업 식품 중소기업 AX대전환 사업에 참여해, 디지털·IT 자원이 부족한 지역 기업을 위한 AX 솔루션을 개발하고 있습니다.
- **역할과 진행 내용**
  - **강진 지역 5개 기업의 AI 솔루션 정교화 컨설팅·개발을 담당**합니다. 교육생의 기초 제품을 기업별 업무에 맞춰 고도화하고, 현장에서 사용할 수 있는 수준으로 개선하는 것이 목표입니다. <!-- SOURCE:context/eum-project.md — 5개 기업 배정·개발 진행, 현장 도입 완료를 의미하지 않음 -->

:::

::: {.resume-project}
#### Action Chain + Agent Marketplace · 누구나 자신의 노하우를 Agent로 만들어 배포하다

`개발 중`

- **목표와 협업**
  - 누구나 자신의 노하우를 AI Agent로 만들고 손쉽게 배포할 수 있는 도구를 개발하고 있습니다. 전문 지식을 가진 사람이 직접 Agent를 제작·공유할 수 있도록 기술적 진입 장벽을 낮추는 것이 목표입니다.
  - **한양대학교 임보람 교수 Lab과 협업**하며 개발을 진행하고 있습니다. <!-- 2026.09.09 사용자 제공 -->
- **기술**
  - 대화를 DAG(Directed Acyclic Graph, 단계 의존성을 표현하는 비순환 그래프)로 구조화하고 Secret 분리, Sandbox 실행, Checkpoint와 결과 Schema 검증을 구성했습니다. <!-- VERIFY-TECH:P01 -->
- **기술 검증**
  - 50개 흐름을 10회 이상 재실행해 성공률 **100%**, 토큰 절감률 **67%**를 확인했습니다. <!-- DATA:M19,M20 -->

:::

::: {.resume-project}
#### AI 모의신검 · 복잡한 신체검사규칙을 개인 맞춤 안내로

`종료`

- **비즈니스**
  - 해석하기 어려운 병역 신체검사규칙을 개인 상황에 맞는 안내로 바꿔 일평균 조회수 **1,000회**, 일 최대 조회수 **4,000회**를 기록했습니다. <!-- DATA:M23,M24 -->
- **기술**
  - 규정을 Embedding·Vector DB에 색인하고 RAG(Retrieval-Augmented Generation, 검색한 원문을 답변 근거로 제공하는 방식), 메타데이터 필터와 원문 인용으로 환각을 제한했습니다. <!-- VERIFY-TECH:P03 -->
  - Vector DB의 상위 N개 검색 결과를 평가하고, 평가 피드백에 따라 쿼리를 재작성·재검색하는 파이프라인을 구현해 개인 상황에 맞는 규정 근거를 탐색하도록 구성했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#1 -->
- **인사이트**
  - 실제 정보 접근 장벽을 확인했지만 법적 위험과 낮은 확장성을 판단해 서비스를 종료했습니다.

:::

::: {.resume-project}
#### OnDevice Character Chat · 서버에 남기지 않는 AI 감정 대화

`보류`

- **비즈니스**
  - 대화 내용을 서버로 보내지 않는 감정 대화 환경의 수요를 검증했습니다.
- **기술**
  - `LiteRT·Gemma4 E2B QAT`와 Context Window·KV Cache·Streaming Decode 최적화로 기기 내 추론을 구현했습니다. <!-- VERIFY-TECH:P04 -->
  - 대화를 N턴마다 비동기로 요약하고, 기기의 가용 메모리에 맞춰 병렬·지연·동기 요약을 선택하는 실행 정책을 설계했습니다. 컨텍스트가 가득 차면 요약을 먼저 수행한 뒤 다음 대화를 시작하도록 구현했습니다. <!-- SOURCE:context/llm-agent-engineering-experience.md#2 -->
- **인사이트**
  - 감정 대화에서는 프라이버시보다 대화 품질과 몰입감이 더 중요한 가치일 수 있다고 판단해 보류했습니다.

:::

## 학력

### 한양대학교 서울캠퍼스 경영대학 경영학부 · 경영학사

2021.02 - 2025.08 · GPA 4.45/4.5 · 7학기 조기졸업 · 학부 수석 졸업

- 2022년 하반기부터 주 40시간 이상 정규직 근무와 학업을 병행했습니다.
- AI를 학습 과정에 적용해 **5개 학기 연속 평점 4.5/4.5**를 기록하고, 검증한 학습법을 강의와 도서로 확장했습니다. <!-- DATA:M25 -->
- ADsP(데이터분석 준전문가), 한국데이터산업진흥원

## 스킬

- **Backend:** Python, Django, Django REST Framework, FastAPI, Celery, Gunicorn, REST API, OAuth 2.0
- **Architecture:** MSA
- **Vibe Coding:** Codex, Claude, Antigravity
- **Mobile:** Swift, SwiftUI, Kotlin
- **Frontend:** HTML5, CSS3, Bootstrap, JavaScript, TypeScript, jQuery
- **Data & Messaging:** PostgreSQL, MySQL, Redis, Kafka
- **AI & Realtime:** PaddleOCR, LLM(Large Language Model), RAG(Retrieval-Augmented Generation), Vector DB, vLLM, VoxCPM2, qwen3-tts, TTS(Text-to-Speech), VAD(Voice Activity Detection), WebRTC, On-device LLM, Quantization
- **Reliability & Performance:** Rate Limiting, Idempotency, Caching, Async Queue, Backpressure, Circuit Breaker, Graceful Shutdown, P50·P95 Latency Profiling
- **Cloud & DevOps:** AWS(Amazon Web Services), GCP(Google Cloud Platform), Docker, Nginx, GoCD, Git
- **Observability & Testing:** Structured Logging, Request Tracing, Metrics·Alerting, Unit·Integration·Load Test <!-- VERIFY-TECH:S07 -->
- **Automation:** BeautifulSoup, Selenium, SMTP(Simple Mail Transfer Protocol), Google Workspace API, Slack API, Computer Use
