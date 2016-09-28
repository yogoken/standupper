# 仕様書
## 1, サービス名
STANDUPPER.COM

#### 1-1 コンセプト
- ユーザーの好きなお笑い芸人の情報（最新のニュース、Youtube動画、Tweets）が集約されているメディア

#### 1-2 ターゲットユーザー
- 暇な時間帯にYoutubeやGoogleで好きなお笑い芸人を検索してニュースや動画を見る20代前半の若者。

#### 1-3 解決する問題
- わざわざYoutubeで好きな芸人の名前を入力して、見ていない動画を探す手間を省く
- 好きなお笑い芸人の最新情報を常に知ることができる

#### 1-4 例
- 夜のバイトから帰り、そろそろ寝る学生
- とりあえず時間を潰したい時

#### 1-5 見本サイト
http://horiemon.com/

#### 1-6 使用するBootstrap
media本体
- http://htmlstream.com/preview/unify-v1.9.6/Blog-Magazine/index.html
admin画面
- http://wrapbootstrap.com/preview/WB0R5L90S

#### 1-7 拡張案
お笑い芸人→芸能人

## 2, 見積り工数
- 期間

| 実装箇所 | 期間 |
|---|---|
| `フロントエンド` |5日|
| `バックエンド` |14日|
| `サーバーデプロイ` |4日|
| `フロントエンドとバックエンドのつなぎ` |4日|
| `予備日` |4日|

合計：31日
※別途AWSサーバー代 ???円/月が必要です。

##3, UI設計
◯管理画面UI(1枚)

◯ユーザー側UI(3枚)
- 芸人詳細
- 芸人登録ページ

■バックエンド機能
機能部分
ユーザー関連(10日)
- 登録, 編集, 削除
- 新規登録・ログイン機能(1日)
- 好きな芸人登録機能(3日)
  - 好きな芸人のタグが一覧で表示され、それをクリックするとその芸人のニュース、動画、呟きが用意しているViewのテンプレートに入る
- 管理画面(3日)

## テーブル設計

### Users

|column|説明|type|default|null|備考|
|---|---|---|---|---|---|
| `uuid` | ユーザーのセッション情報 | text |  | false | |
| `code_name` | コードネーム | string |  | true | |
| `avatar` | アバター | string | | false | Carrierwaveを利用|

### Geinins
| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
| `user_id` | 紐づくUserのid | references | | false | |
| `article_id` | 紐づくArticleのid | references | | false | |
| `name` | お笑い芸人名 | string | | false | |

- index
  - `user_id`
  - `article_id`
- 関連
  - `has_many :users`
  - `has_many :articles`


### Articles

| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
| `geinin_id` | 紐づくGeininのid | references |  | | |
| `title` | タイトル | string |  | false | |
| `body` | ニュース本文 | text |  | | |

- 関連
  - `belongs_to :geinin`

### Images

| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
| `article_id` | 紐づくnewsのid | references |  | | |
| `content` | 画像の識別子 | string |  | false | |
| `status` | メイン/サブの画像| text |  | |enumで管理|

- 関連
  - `belongs_to :article`



### Tags

- acts-as-taggable-on



### Likes

| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
| `user_id` | 紐づくUserのid | references | | false | |
| `geinin_id` | 紐づくGeininのid | references | | false | |
| `article_id` | 紐づくArticleのid | references | | false | |

- 関連
  - `belongs_to :user`
  - `belongs_to :article`


### Comments

| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
| `user_id` | 紐づくUserのid | references | | false | |
| `geinin_id` | 紐づくGeininのid | references | | false | |
| `article_id` | 紐づくArticleのid | references | | false | |

- 関連
  - `belongs_to :user`
  - `belongs_to :article`

### AdminUser
| column | 説明 | type | default | null | 備考 |
|---|---|---|---|---|---|
