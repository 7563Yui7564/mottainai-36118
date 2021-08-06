# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#テーブル設計

# users テーブル設計

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |

### Association

- has_many :creations
- has_many :comments

# creations テーブル設計

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

# comments テーブル設計

| Column   | Type       | Options                       |
| -------- | ---------- | ----------------------------- |
| text     | text       | null: false                   |
| user     | references | null: false, foreign_key:true |
| creation | references | null: false, foreign_key:true |

### Association

- belongs_to :user
- belongs_to :creation
