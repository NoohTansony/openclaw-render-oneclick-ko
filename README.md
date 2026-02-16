# 원클릭 OpenClaw on Render 🇰🇷

한국 사용자를 위한 **원클릭 OpenClaw 배포 템플릿**입니다.

> 목표: "원 클릭으로 당신의 OpenClaw를 가져보세요"

## 🚀 원클릭 배포

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy?repo=https://github.com/NoohTansony/openclaw-render-oneclick-ko)

## 무엇이 배포되나요?

- Render Web Service 1개 (Docker)
- OpenClaw Gateway (PORT 환경변수 사용)
- 헬스체크 엔드포인트: `/`

## 사전 준비

1. OpenAI API Key
2. Telegram Bot Token (선택)

## Render 환경변수

배포 시 아래 값들을 넣어주세요.

- `OPENAI_API_KEY` (필수)
- `TELEGRAM_BOT_TOKEN` (선택)
- `OPENCLAW_GATEWAY_TOKEN` (선택, 미입력시 자동 생성)
- `OPENCLAW_CHANNELS_TELEGRAM_ENABLED` (기본값: `true`)

## 사용 방법

배포가 끝나면 Render 로그에서 Gateway가 기동된 것을 확인하세요.

- Health: `https://<your-service>.onrender.com/`
- 최초 실행 후 대시보드에서 모델/채널 설정을 추가로 확인하세요.

## 주의

- 이 템플릿은 **간단한 스타터**입니다.
- 실제 운영 전에는 접근제어, IP 제한, 토큰/비밀 관리, 백업 정책을 추가하세요.

## 라이선스

MIT
