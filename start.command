#!/bin/bash
cd "$(dirname "$0")"
PORT=8080
URL="http://127.0.0.1:${PORT}"
if ! curl -sf -o /dev/null --max-time 2 http://127.0.0.1:11434/api/tags; then
  echo "Ollama 沒有在 http://127.0.0.1:11434 回應。請先開啟 Ollama。"
fi
echo "開啟 ${URL}"
echo "按 Ctrl+C 可關閉這個頁面伺服器。"
open "$URL"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
