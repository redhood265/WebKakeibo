# 一般的な機能を持つWeb家計簿

## URL

[Heroku] ※URLクリック後から5~15秒程経過したら画面表示されます

<https://warm-mountain-58583.herokuapp.com/>

## アプリ情報

Rails:5.2.4.3

Ruby:2.6.6

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

---

## Railsのコマンド等の備忘録

### Gem

```Rails
gem 'slim-rails'
gem 'html2slim'
gem 'bootstrap'
gem 'jquery-rails'
gem 'rails-i18n'
gem 'ransack'
gem 'chartkick'
```

### Bundle install

(※railsアプリのルートディレクトリの下のvendor/bundleディレクトリにインストール)  

```rails
bundle install --path vendor/bundle
```


モデル(単数形,先頭大文字で宣言。モデルの項目は小文字)

```Rails
- モデル作成
  - rails g model Category name:string
  - rails g model Trade exchange:integer name:string price:integer memo:text category:references

- モデルやコントローラー削除
  - rails destroy model xxx
  - rails destroy controller xxx
```

コントローラー(モデルの複数形を名前とする)

```Rails
rails g controller Trades
```

### DB

```Rails
rails db:create
rails db:migrate
rails db:migrate version=20191009125118
rails db:migrate:reset
rails db:seed
rails db:rollback
rails db:drop
```

### Railsサーバ起動

```rails
#デフォルトポート(3000番)
rails s
#ポート指定(3030番ポート)
rails s -p 3030
```

### その他(postgresql)

```txt
【データベース作成】※rails db:createでdevelop,testはDBが作成される
createuser user
createdb Kakeibo_development
createdb Kakeibo_test
createdb Kakeibo_production

【テーブルのデータ全削除(連番も初期化】
TRUNCATE TABLE <table_name> RESTART IDENTITY;

【データベースの削除】
dropdb データベース名
dropdb Kakeibo_development
dropdb Kakeibo_test
dropdb Kakeibo_production
```

---

## 色々な備忘録

### VSCodeのプラグイン

#### Markdown

- markdownlint
- Markdown All in One

#### Slim

- Slim
- Slim Lint

### カラーテーマ

- Noctis


#### html2slimのコマンド(既存のhtmlをslimに変換)  

```rails
bundle exec erb2slim app/views/ --delete
```


#### 個別のRailsアプリにインストールされているgemの一覧  

```rails
bundle list
```

---

## 今後追加したい機能(今後の作業メモ)

### 全体的

・デザインの見直し(ボタン同士が近くて誤クリックを招く等)
・カテゴリごとのチャート表示
・自動テスト機能の設定
・アカウント毎のWeb家計簿にする(管理者権限/ユーザー権限)
・PC/SP表示に対応する(レスポンシブ対応)
・

### 一覧画面

- indexは今月を含めた直近三ヶ月を表示
- indexでは今月にカテゴリ全てを購入している場合には、購入できませんとメッセージをずっと表示
- 利用月で既に購入した家電等はその月中ずっと画面に表示
- 各月の利用額を棒グラフで確認したい(JavaScriptでやりたい　JSのフレームワークやライブラリは好きなのを使う)

### ログ画面(データ貯まって見辛くなったら実装でも良さそう)

- データ表示は検索ボタンをクリック前 or 後？
- 検索ボタンをつけた理由は、データが増えた時に探したいデータを早く見つけるため

### メール機能

- 品物を購入後には、メールで連絡

### LINE機能

- BOTを利用して、LINE通知で承認したデータを通知及び月末にその月の利用金額を通知

### グラフ表示対応

- 利用技術候補
  - chartkick
  - chart.js
- ログ画面 or 一覧画面に設ける

### 搭載機能一覧(自分の知識不足を補えるようなものが良い)

- [x] 一覧画面
- [x] 新規作成画面
- [ ] ログ一覧画面(作成したデータを確認する画面))
- [ ] メール機能
- [ ] 画面上に編集用のウィンドウを出す(画面遷移なし)
- [ ] Lineでの通知機能(bot利用)
- [x] 利用額を棒グラフで表示(チャート画面を作成)
- [x] バリデーション
- [ ] スマホ表示に対応する
  - [ ] gemの選定(CSSで設定する場合には不要。Gemでやっても良いが)
- [ ] クラウドへのデプロイ(Heroku無料枠 or AWS無料枠)
- [ ] Rspecによるテストコード
- [ ] CI/CDによる自動テスト
- [ ] respond_toを利用した同一アクションでの処理の振る舞いを変える
- [ ] APIによる処理の実装

