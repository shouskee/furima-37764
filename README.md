# DB設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | --------------            |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null:   |false            |
| nickname           | string  | null:   |false            |
| name               | string  | null:   |false            |
| birthday           | integer | null:   |false            |

### Association

* has_many :items
* has_many :purchases


## items テーブル

| Column         | Type    | Options                         |
| ----------     | --------| --------------------------------|
| product_name   | text    | null: | false                   |
| explanation    | text    | null: | false                   |
| category       | string  | null: | false                   |
| condition      | string  | null: | false                   |
| load           | string  | null: | false                   |
| area           | string  | null: | false                   |
| days           | string  | null: | false                   |
| selling _price | integer | null: | false                   |

### Association

belongs_to :user
has_one :purchase


## purchases テーブル

| Column         | Type   | Options       |
| ---------      | -------| --------------|
| buyer          | string | null: false   |
| purchase_goods | string | null: false   |

### Association

belongs_to :user
belongs_to :item
has_one : send



## informations テーブル

| Column             | Type    | Options                         |
| ----------         | --------| --------------------------------|
| postal_code        | integer | null: | false                   |
| prefectures        | string  | null: | false                   |
| municipalities     | string  | null: | false                   |
| address            | string  | null: | false                   |
| building_name      | string  | null: | true                    |
| telephone_number   | string  | null: | false                   |

### Association

belongs_to :purchase
