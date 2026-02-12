# twn-zed

[twn](https://github.com/twn-lang/twn) プログラミング言語のための [Zed](https://zed.dev) エディタ拡張機能です。

## 機能

- `.twn` ファイルのシンタックスハイライト
- Tree-sitter による高速な構文解析

## インストール方法

現在、開発中のため Zed の拡張機能パネルからは直接インストールできません。以下の手順でローカル拡張機能として読み込んでください。

1. このリポジトリをクローンします。
2. Zed を開き、コマンドパレット (`Ctrl+Shift+P` / `Cmd+Shift+P`) を開きます。
3. `extensions: install dev extension` を選択します。
4. クローンした `twn-zed` フォルダを選択します。

## 開発者向け：ビルドと更新

### 準備

Rust の WASM ターゲットが必要です。

```bash
rustup target add wasm32-wasip1
```

### ビルド

変更を反映させるには、拡張機能を WASM にビルドする必要があります。

```bash
cargo build --release --target wasm32-wasip1
```

ビルド後、Zed で `window: reload` を実行すると変更が反映されます。

### 文法の更新について

この拡張機能は [tree-sitter-twn](https://www.google.com/url?sa=E&source=gmail&q=https://github.com/twn-lang/tree-sitter-twn) を参照しています。
命令の追加など、文法自体を更新した場合は以下の手順が必要です：

1. `tree-sitter-twn` リポジトリで `tree-sitter generate` し、GitHub へプッシュする。
2. プッシュした最新のコミットハッシュを取得する。
3. このリポジトリの `extension.toml` にある `commit` フィールドを取得したハッシュに書き換える。

```toml
[grammars.twn]
repository = "https://github.com/twn-lang/tree-sitter-twn"
commit = "最新のコミットハッシュ"
```

## ライセンス

[MIT License](https://www.google.com/search?q=LICENSE)
