
::: {.profile-header}
::: {.profile-copy}
<p class="profile-name" role="heading" aria-level="1">고영민</p>

<p class="headline">AI Product Engineer · Full-Stack Engineer (App, Web, AI)</p>

<p class="contact"><a href="mailto:ymkoh.dev@gmail.com">ymkoh.dev@gmail.com</a> · <a href="https://github.com/0minKoh">github.com/0minKoh</a> · <a href="https://0minkoh.github.io/">Portfolio</a></p>
:::

<img class="profile-photo" src="assets/profile_26.jpeg" alt="고영민 프로필 사진" width="160" height="206">
:::

## 소개

<div class="vision-block">
<p class="vision-label">VISION</p>
<p class="vision-title">누구나 기술의 혜택을 누릴 수 있도록.</p>
<p>기술이 존재하는 것과 사람들이 그 혜택을 누리는 것은 다릅니다. 지식, 비용, 시간, 언어와 인터페이스의 장벽을 낮춰 새로운 기술이 실제 삶과 업무의 변화로 이어지게 하는 것이 저의 장기적인 목표입니다.</p>
</div>

### 일하는 원칙 · 가장 작은 가치부터 끝까지

- **기술보다 사람의 장벽을 먼저 봅니다.** 사용자가 기술의 혜택을 누리지 못하는 이유에서 출발해 지식·비용·시간·인터페이스의 장벽을 찾습니다.
- **가장 작은 고객 가치부터 검증합니다.** 핵심 가설을 먼저 확인하고, 사용자 반응에 따라 기능과 기술을 확장합니다.
- **검증한 가치는 End-to-End로 완성합니다.** 기술적 의사결정부터 설계·개발·배포·운영까지 책임집니다.
- **사람과 조직의 변화 비용까지 설계합니다.** 익숙한 업무와 인터페이스를 존중하며 적은 변화로 효과를 낼 방법을 찾습니다.

## 경력

### 수파자 · Full-Stack Engineer (App, Web, AI)

2022.06 - 현재 · 정규직

사업·운영 담당자와 협업하며 담당 영역을 `Web → App → DX(Digital Transformation, 디지털 전환)/AX(AI Transformation, AI 전환) → AI Application → Native & Edge AI`로 확장했습니다. 담당한 프로젝트는 기술적 의사결정부터 설계, 개발, 배포, 운영까지 End-to-End로 수행했습니다.

::: {.resume-project}
#### 소방 히어로 멤버십 · 소방관과 후원사를 연결하는 인증 플랫폼

`구축 완료`

- **비즈니스**
  - 소방관과 첫 후원기업을 연결하는 단일 가설에서 출발해 누적 후원사(멤버십 제휴를 완료한 기업 수) **100개+**, 인증 회원 **10만+** 규모의 플랫폼으로 확장했습니다. 50개 이상의 후원사에 인증 API를 제공했습니다. <!-- DATA:M06,M07 -->
  - MAU(Monthly Active Users, 한 달 동안 1회 이상 활동한 고유 사용자 수) **1만**, 재방문율(기준 기간의 방문자 중 다시 방문한 사용자의 비율) **48%**를 확보했습니다. <!-- DATA:M08,M09 -->
- **기술**
  - iOS는 `Swift·SwiftUI`, Android는 `Kotlin`으로 WebView 기반 네이티브 앱을 개발했습니다.
  - `Django·Django REST Framework` 기반으로 회원·후원사·인증·혜택 도메인을 분리하고, `PostgreSQL·Redis·Celery`로 트랜잭션, 캐시·잠금, 비동기 작업을 구성했습니다. <!-- VERIFY-TECH:S01 -->
  - `OAuth 2.0` API에 버저닝, Scope 권한, Idempotency Key, `Redis` Token Bucket Rate Limit을 적용하고 Timeout·Exponential Backoff·Circuit Breaker로 중복 요청과 외부 장애에 대응했습니다. <!-- VERIFY-TECH:S02,S03 -->
  - `PaddleOCR` 기반 OCR(Optical Character Recognition, 이미지 문자 인식)을 별도의 AI 서버로 분리하는 MSA(Microservices Architecture, 기능별 서비스를 분리하고 API로 연결하는 구조)를 적용했습니다. Django 웹 서버와 AI 추론 서버의 자원 및 장애 영향을 분리해, 추론 부하가 회원·후원사 API의 응답 안정성에 미치는 영향을 줄였습니다.
- **인사이트**
  - 첫 고객 가치를 검증한 뒤 실제 이용 지표에 따라 기능과 기술 구조를 확장하는 제품 원칙을 세웠습니다.

:::

::: {.resume-project}
#### Voice AI · 자체 음성 합성으로 구현한 실시간 대화

`종료`

- **비즈니스**
  - 자체 TTS의 A/B 선호도(동일 문장의 블라인드 비교에서 자체 모델을 선택한 비율)는 상용 API 대비 **4.2배**였지만, 고객 전환율(검증 고객 중 실제 도입으로 이어진 비율)은 **1% 미만**이었습니다. <!-- DATA:M12,M13 -->
- **기술**
  - `VoxCPM2·nano_vllm`에 Model Warm-up, Continuous Batching, KV Cache와 Backpressure를 적용해 GPU 메모리와 Tail Latency를 제어했습니다. <!-- VERIFY-TECH:V01 -->
  - LLM 문장 청킹과 TTS 병렬 합성, Buffer·Cancellation으로 Streaming Pipeline을 구성하고, TTFA(Time to First Audio, 요청부터 첫 음성 프레임 전달까지의 시간)를 **2.8초에서 0.9초로 68% 단축**했습니다. <!-- DATA:M10,M11 --><!-- VERIFY-TECH:V02,V04 -->
  - `Silero VAD(Voice Activity Detection, 음성 구간 감지)`와 `WebRTC(Web Real-Time Communication, 실시간 음성 통신)`를 이용해 발화 종료·끼어들기와 네트워크 변동을 처리했습니다. <!-- VERIFY-TECH:V03 -->
- **인사이트**
  - 기술 성능과 시장 수요는 별도로 검증해야 하며, 원천 기술 확보보다 고객의 핵심 수요를 먼저 확인해야 한다는 기준을 얻었습니다.

:::

::: {.resume-project}
#### AX · 비개발자의 반복 업무를 줄이는 AI 업무 자동화

`구축 완료`

- **비즈니스**
  - 기존 문의 채널과 담당자의 최종 승인 절차를 유지하면서 CS(Customer Support, 고객 지원) 반복 업무의 **일평균 처리시간을 180분에서 30분으로 단축**하고 **월 3,000건**의 조회·분류·답변 초안을 지원했습니다. <!-- DATA:M14,M15 -->
- **기술**
  - `Django` CRM(Customer Relationship Management, 고객 관계 관리)에 광고 데이터, 개인화 이메일, LLM 답변, Slack 알림과 백업을 통합하고 원본·집계 데이터를 분리해 재처리할 수 있게 설계했습니다. <!-- VERIFY-TECH:A01 -->
  - `Celery·Redis` Queue를 업무별로 분리하고 Idempotent Task, Retry, Time Limit과 Chunk 단위 DB 처리를 적용해 대량 작업의 부분 실패와 자원 점유를 제한했습니다. <!-- VERIFY-TECH:A02,A03 -->
  - Computer Use macOS 앱에 RAG(Retrieval-Augmented Generation, 검색한 사내 문서를 답변 근거로 제공하는 방식), Tool Allowlist, PII Masking과 Human-in-the-loop를 적용하고 실행 과정을 Audit Log로 남겼습니다. <!-- VERIFY-TECH:A04,A05 -->
- **인사이트**
  - 새로운 채널을 추가하기보다 익숙한 업무 흐름 안의 반복 작업을 줄일 때 기술 도입의 학습 비용과 저항을 낮출 수 있었습니다.

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
- **교육**
  - 인프런 지식공유자: 공개 강의 수(수강 신청이 가능한 상태의 강의 수) **6개**, 누적 수강생(강의별 수강 등록 인원의 합계) **8,000명+**, 평균 평점(공개된 수강평 점수의 5점 만점 평균) **4.7/5.0** <!-- DATA:M16,M17,M18 -->
- **출판**
  - 《A+를 부르는 요즘 대학생의 AI 공부법》, 제이펍, 2026.08 출간
  - 《OpenAI Codex 바이브코딩》, 제이펍, 집필 중 · 2026.08 계약
  - 《AI 활용 자격증 공부법》, 시대고시기획, 집필 중 · 2026.06 계약

:::

### 개인 프로젝트 · 새로운 접근 가능성을 검증하다

::: {.resume-project}
#### Action Chain + Agent Marketplace · 성공한 AI 작업을 재사용 가능한 스킬로

`진행 중`

- **비즈니스**
- **기술**
  - 대화를 DAG(Directed Acyclic Graph, 단계 의존성을 표현하는 비순환 그래프)로 구조화하고 Secret 분리, Sandbox 실행, Checkpoint와 결과 Schema 검증을 구성했습니다. <!-- VERIFY-TECH:P01 -->
- **기술 검증**
  - 50개 흐름을 10회 이상 재실행해 성공률(검증 조건을 충족한 실행 비율) **100%**, 토큰 절감률(기존 실행 대비 토큰 감소 비율) **67%**를 확인했습니다. <!-- DATA:M19,M20 -->

:::

::: {.resume-project}
#### OnDevice Bible Diary · 나의 기기 안에서 완성하는 AI 묵상

`진행 중`

- **비즈니스**
- **기술**
  - `SwiftUI·Kotlin`, 4-bit 양자화, Token Streaming, 로컬 암호화 저장소로 모바일 추론 구조를 설계했습니다. <!-- DATA:M21,M22 --><!-- VERIFY-TECH:P02 -->
- **인사이트**
  - 프라이버시와 서버 비용 절감뿐 아니라 기기별 메모리·발열·응답 품질을 함께 검증하고 있습니다.

:::

::: {.resume-project}
#### AI 모의신검 · 복잡한 신체검사규칙을 개인 맞춤 안내로

`종료`

- **비즈니스**
  - 해석하기 어려운 병역 신체검사규칙을 개인 상황에 맞는 안내로 바꿔 일평균 조회수 **1,000회**, 일 최대 조회수 **4,000회**를 기록했습니다. <!-- DATA:M23,M24 -->
- **기술**
  - 규정을 Embedding·Vector DB에 색인하고 RAG(Retrieval-Augmented Generation, 검색한 원문을 답변 근거로 제공하는 방식), 메타데이터 필터와 원문 인용으로 환각을 제한했습니다. <!-- VERIFY-TECH:P03 -->
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
- **인사이트**
  - 감정 대화에서는 프라이버시보다 대화 품질과 몰입감이 더 중요한 가치일 수 있다고 판단해 보류했습니다.

:::

## 학력

### 한양대학교 경영대학 경영학부 · 경영학사

2021.02 - 2025.08 · GPA(Grade Point Average, 전체 수강 과목의 가중 평균 평점) 4.45/4.5 · 7학기 조기졸업

- 2022년 하반기부터 주 40시간 이상 정규직 근무와 학업을 병행했습니다.
- AI를 학습 과정에 적용해 학기 평점(해당 학기에 이수한 전체 과목의 가중 평균) **5개 학기 연속 4.5/4.5**를 기록하고, 검증한 학습법을 강의와 도서로 확장했습니다. <!-- DATA:M25 -->
- ADsP(데이터분석 준전문가), 한국데이터산업진흥원

## 스킬

- **Backend:** Python, Django, Django REST Framework, FastAPI, Celery, Gunicorn, REST API, OAuth 2.0
- **Architecture:** MSA(Microservices Architecture, 기능별 서비스 분리) — Django 웹 서버와 AI 추론 서버의 API 연동, 자원·장애 격리
- **Mobile:** Swift, SwiftUI, Kotlin
- **Frontend:** HTML5, CSS3, Bootstrap, JavaScript, TypeScript, jQuery
- **Data & Messaging:** PostgreSQL, MySQL, Redis, Kafka
- **AI & Realtime:** PaddleOCR, LLM(Large Language Model), RAG(Retrieval-Augmented Generation), Vector DB, vLLM, VoxCPM2, qwen3-tts, TTS(Text-to-Speech), VAD(Voice Activity Detection), WebRTC, On-device LLM, Quantization
- **Reliability & Performance:** Rate Limiting, Idempotency, Caching, Async Queue, Backpressure, Circuit Breaker, Graceful Shutdown, P50·P95 Latency Profiling
- **Cloud & DevOps:** AWS(Amazon Web Services), GCP(Google Cloud Platform), Docker, Nginx, GoCD, Git
- **Observability & Testing:** Structured Logging, Request Tracing, Metrics·Alerting, Unit·Integration·Load Test <!-- VERIFY-TECH:S07 -->
- **Automation:** BeautifulSoup, Selenium, SMTP(Simple Mail Transfer Protocol), Google Workspace API, Slack API, Computer Use
