# Ollama WebUI

單檔網頁聊天介面，連到你電腦上的 [Ollama](https://ollama.com)。預設模型是 **gpt-oss:20b**。

可以開新對話、切換舊對話、重新命名、刪除、串流回覆，以及展開模型的思考過程。對話存在瀏覽器的 localStorage，不會上傳。

## 啟動

1. 打開 Ollama（或執行 `ollama serve`）。
2. 確認模型在本機：

   ```bash
   ollama pull gpt-oss:20b
   ```

3. 用本機網址開啟頁面。直接雙擊 HTML 時，瀏覽器會擋住對 Ollama 的連線。

   macOS 可雙擊 `start.command`。

   或在這個資料夾執行：

   ```bash
   python3 -m http.server 8080 --bind 127.0.0.1
   ```

4. 打開 [http://127.0.0.1:8080](http://127.0.0.1:8080)。

## 操作

- **新對話**：側欄按鈕，或 `Shift+Command+O`（Windows / Linux 為 `Ctrl+Shift+O`）
- **送出**：Enter。換行是 Shift+Enter
- **停止**：生成時按圓形按鈕
- **思考等級**：頂部選單，對應 gpt-oss 的 low / medium / high
- **模型**：頂部下拉，清單來自 Ollama 的 `/api/tags`

Ollama 位址預設是 `http://127.0.0.1:11434`，可在設定裡修改。
