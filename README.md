 # with-library 

# 概要
スマホを片手に本をアウトプットするアプリ。効率よく本を読むことができ、勉強率、仕事率UP!
アウトプットした内容は後から見返すことができ何処でも勉強可能！
他人のオススメの本もランキングと感想付きで探すことができます。リンク先から気になった本を買うことも可能！
また、お近くの本を読めるスペースも検索可能です。


# 制作背景(意図)
私が本を読む時に１番時間をかけていることはアウトプットをすることです。
いつも読みながら大切なところに蛍光ペンで色をつけ後から見返してメモ等にまとめていました。
必要な時に見つけられなかったり、ペンがなければまとめずらかったり
何処か不便さを感じていました。
そんな気持ちから少しでも効率よく本を読むことが出来て知識を増やせるようになれば良いという気持ちから作成しました。

# 工夫したポイント
とにかく簡単にアウトプット出来るようにしました。
また、それぞれの本は「どういう内容なのか」「学べることは何か」がすぐに見返せるようにしたことです。


# 課題や今後実装したい機能
近くの本を読める空間をGoogleマップのAPIを導入して検索出来るようにしたい。
いつでも何処でも最高の空間で本が読めるようにする。


 
# DB設計
=======

## users table
| Column             | Type           | Options                |
|--------------------|----------------|------------------------|
| nickname           | string         |  null: false           |
| email              | string         |  null: false,unique: true |
| encrypted_password | string         |  null: false           |

### Association
* has_many :librarys
* has_many :outputs



# librarys テーブル
| Column             | Type           | Options                |
|--------------------|----------------|------------------------|
| title                   | string     | null: false                          |
| impressions             | text       | null: false                          |
| category_id             | integer    | null: false                          |
| lank_id                 | text       | null: false                          |
| author                  | string     | null: false                          |
| syuppan_id              | integer    | null: false                          |
| read                    | string     | null: false                          |
| user                    | references | null: false                          |

### Association
* belongs_to :user
* has_many   :outputs



## outputs テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| library | references | null: false, foreign_key: true |

### Association
- belongs_to :library
- belongs_to :user


