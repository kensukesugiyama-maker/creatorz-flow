# CREATOR'ZZ 入会フロー（GitHub Pages）

公開URL: https://kensukesugiyama-maker.github.io/creatorz-flow/

## 編集する場所

- **本文・スタイル・タブ切り替え**はすべて **`index.html`** 1ファイルにあります（上部の `<style>` と、その下の HTML）。

## ローカルでプレビュー（ブラウザが自動で開く）

`creatorz-flow` フォルダで:

```bash
chmod +x open-local.sh   # 初回だけ
./open-local.sh
```

既定は **http://127.0.0.1:8765/** 。ポートを変える場合は `PORT=9000 ./open-local.sh`。

**Cursor / VS Code**: コマンドパレット（`Cmd+Shift+P`）→ **Tasks: Run Task** → **CREATOR'ZZ flow: ブラウザでプレビュー**（ワークスペースが `Cursorくん` のとき）。

`creatorz-flow` だけをフォルダとして開いている場合は **ブラウザでプレビュー（ローカルサーバー）** を選ぶ。

---

手動でサーバーだけ立てる場合:

```bash
# Python 3
python3 -m http.server 8080
# ブラウザで http://127.0.0.1:8080 を開く
```

```bash
# Node が入っている場合
npx --yes serve .
```

Finder から `index.html` をブラウザにドラッグしても表示できます（一部の相対パスや将来の JS がある場合は上記の方が安全です）。

## サイトに反映（GitHub Pages）

1. `index.html` を保存する。
2. コミットして `main` にプッシュする。

```bash
git add index.html
git commit -m "docs: 入会フローの文言を更新"
git push origin main
```

GitHub リポジトリの **Settings → Pages** で、ソースが `main` ブランチの `/ (root)` になっていることを確認してください。
