# DB設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | --------------            |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nickname           | string  | null: false               |
| second_name        | string  | null: false               |
| first_name         | string  | null: false               |
| second_kana        | string  | null: false               |
| first_kana         | string  | null: false               |
| birthday           | date    | null: false               |

### Association

* has_many :items
* has_many :purchases


## items テーブル

| Column          | Type       | Options                          |
| ----------      | --------   | ------------------------------   |
| product_name    | string     | null: false                      |
| explanation     | text       | null: false                      |
| category_id     | integer    | null: false                      |
| condition_id    | integer    | null: false                      |
| load_id         | integer    | null: false                      |
| area_id         | integer    | null: false                      |
| shipping_day_id | integer    | null: false                      |
| selling_price   | integer    | null: false                      |
| user            | references | null: false, foreign_key: true   |
### Association

belongs_to :user
has_one :purchase


## purchases テーブル

| Column   | Type       | Options                             |
| ---------| -------    | --------------                      |
| user     | references | null: false,  foreign_key: true     |
| item     | references | null: false,  foreign_key: true     |

### Association

belongs_to :user
belongs_to :item
has_one : information



## informations テーブル

| Column             | Type       | Options                        |
| ----------         | --------   | ------------------------------ |
| postal_code        | string     | null: false                    |
| area_id            | integer    | null: false                    |
| city_name          | string     | null: false                    |
| address            | string     | null: false                    |
| building_name      | string     |                                |
| telephone_number   | string     | null: false                    |
| purchase           | references | null: false, foreign_key: true |
### Association

belongs_to :purchase
