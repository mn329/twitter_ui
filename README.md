# twitter_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Refactoring Summary

- ファイル構成を整理し、`constants/`・`theme/`・`data/`・`models/` ディレクトリを追加して責務ごとに分離しました。
- UI コンポーネント名を用途に合わせて改名（例: `MyHomePage` → `HomePage`、`CardWidget` → `TweetCardWidget`）し、再利用性を向上しました。
- `TweetCardWidget` にツイート情報を渡せるパラメータ（アカウント名・日付・本文）を追加し、テキストやアイコンサイズなどのハードコード値を `AppConstants` に集約しました。
- アプリのテーマ設定を `AppTheme` として切り出し、`MaterialApp` から独立管理できるようにしました。
- ダミーデータを `SampleTweets` として定義し、`Tweet` モデルを通じて `ListView` に表示する構造に変更しました。
- テストコードを新しいクラス名（`TwitterApp`）に合わせて更新しました。
