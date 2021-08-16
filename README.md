# アプリケーション名

MOTTAINAI

## 概要

DIYの作品を投稿して、コメントができる。

## 制作背景(意図)

ゴミ問題を解決する為に、劣化したり壊れた物を捨てるのではなく  
DIYを通し自身が行うことで物を永遠に使い続けられることを伝えたいと  
思い作成しました。

## 本番環境

https://mottainai-36118.herokuapp.com

Basic認証

- ユーザ名：takashi
- パスワード：7563

ログイン情報 (テスト用)

- Eメール :takashi.t1001@gmail.com
- パスワード：7563yui

## DEMO


## 実装予定の内容

- SNS認証
- 複数枚の画像投稿

# DB設計

## users テーブル設計

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |

### Association

- has_many :creations
- has_many :comments

## creations テーブル設計

| Column      | Type       | Options                       |
| ----------- | ---------- | ----------------------------- |
| title       | string     | null: false                   |
| category_id | integer    | null: false                   |
| cost        | integer    | null: false                   |
| material    | string     | null: false                   |
| tool        | string     | null: false                   |
| description | text       | null: false                   |
| trigger     | text       | null: false                   |
| user        | references | null: false, foreign_key:true |

### Association

- has_many :comments
- belongs_to :user
- has_one_attached :image

## comments テーブル設計

| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| text     | text       | null: false                   |
| user     | references | null: false, foreign_key:true |
| creation | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :creation
