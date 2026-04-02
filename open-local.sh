#!/usr/bin/env bash
# CREATOR'ZZ 入会フロー — ローカルプレビュー（ブラウザを開く）
set -euo pipefail
cd "$(dirname "$0")"
PORT="${PORT:-8765}"
URL="http://127.0.0.1:${PORT}/"

echo "→ ${URL} で表示します（終了は Ctrl+C）"
( sleep 0.7 && open "${URL}" ) &
exec python3 -m http.server "${PORT}"
