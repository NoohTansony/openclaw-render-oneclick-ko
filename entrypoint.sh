#!/usr/bin/env bash
set -euo pipefail

PORT="${PORT:-10000}"
TOKEN="${OPENCLAW_GATEWAY_TOKEN:-$(openssl rand -hex 16)}"
TG_ENABLED="${OPENCLAW_CHANNELS_TELEGRAM_ENABLED:-true}"
TG_TOKEN="${TELEGRAM_BOT_TOKEN:-}"

mkdir -p /root/.openclaw

cat > /root/.openclaw/openclaw.json <<EOF
{
  "agents": {
    "defaults": {
      "model": {
        "primary": "openai/gpt-4.1-mini"
      },
      "workspace": "/root/.openclaw/workspace"
    }
  },
  "channels": {
    "telegram": {
      "enabled": ${TG_ENABLED},
      "dmPolicy": "open",
      "allowFrom": ["*"],
      "groupPolicy": "open",
      "botToken": "${TG_TOKEN}"
    }
  },
  "gateway": {
    "mode": "local",
    "bind": "lan",
    "port": ${PORT},
    "auth": {
      "mode": "token",
      "token": "${TOKEN}"
    }
  }
}
EOF

# OPENAI_API_KEY is read from environment by provider SDK.
exec openclaw gateway --port "${PORT}"
