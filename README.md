# 一般的な機能を持つWeb家計簿

## URL

[Heroku] ※URLクリック後から5~15秒程経過したら画面表示されます

<https://warm-mountain-58583.herokuapp.com/>

## アプリ情報

Rails:

Ruby:

PostgreSQL

## 機能一覧

## データ構造

- categories
  - exchange: 収入/支出の判定値
  - name: 勘定科目名を格納

- trades
  - exchange: 収入/支出の判定値
  - category_id: 勘定科目のID
  - name: 項目名
  - price: 金額

## Railsのコマンドメモ

- モデル作成
  - rails g model Category name:string
  - rails g model Trade exchange:integer name:string price:integer memo:text category:references

- モデルやコントローラー削除
  - rails destroy model xxx
  - rails destroy controller xxx

- DB系のコマンド
  - rails db:create
  - rails db:migrate
  - rails db:seed

## DB系のコマンドメモ

psql -d Kakeibo_development

dropdb Kakeibo_development
dropdb Kakeibo_test

## 今後追加したい機能

・デザインの見直し(ボタン同士が近くて誤クリックを招く等)
・カテゴリごとのチャート表示
・自動テスト機能の設定
・アカウント毎のWeb家計簿にする(管理者権限/ユーザー権限)
・PC/SP表示に対応する(レスポンシブ対応)
・
