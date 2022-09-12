# テーブル設計

## users テーブル

| Column                | Type   | Options                   |
| --------------------- | ------ | ------------------------- |
| nickname              | string | null: false               |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false               |

- has_many :posts

## posts テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | -------------------------------|
| title            | string     | null: false                    |
| text             | text       | null: false                    |
| image            | text       | null: false                    |
| date             | text       | null: false                    |
| address          | text       | null: false                    |
| evaluation       | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

- belongs_to :user