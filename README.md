## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| nickname           | string | null: false |

### Association

- has_many :vocabularies

## vocabularies テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| word    | string     | null: false                    |
| meaning | string     | null: false                    |
| level   | integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
