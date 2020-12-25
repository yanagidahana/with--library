 # with-library 
 
 # URL
 http://54.150.173.35/
 
 # ログインID
 hana878787zzz@gmail.com
 
 # パスワード　
 Yana8787

# 概要
スマホを片手に本をアウトプットするアプリ。効率よく本を読むことができ、勉強率、仕事率UP!
アウトプットした内容は後から見返すことができ何処でも勉強可能！

（追加）他人のオススメの本もランキングと感想付きで探すことができます。リンク先から気になった本を買うことも可能！
（追加）また、お近くの本を読めるスペースも検索可能です。


# 制作背景(意図)
私が本を読む時に１番時間をかけていることはアウトプットをすることです。
いつも読みながら大切なところに蛍光ペンで色をつけ後から見返してメモ等にまとめていました。
必要な時に見つけられなかったり、ペンがなければまとめずらかったり
何処か不便さを感じていました。
そんな気持ちから少しでも効率よく本を読むことが出来て知識を増やせるようになれば良いという気持ちから作成しました。

# DEMO
書籍登録フォーマット
file:///Users/yanagidahana/Desktop/%E6%9B%B8%E7%B1%8D%E7%99%BB%E9%8C%B2%E3%83%95%E3%82%A9%E3%83%BC%E3%83%A0.png
アウトプットフォーマット
file:///Users/yanagidahana/Desktop/%E3%82%A2%E3%82%A6%E3%83%88%E3%83%95%E3%82%9A%E3%83%83%E3%83%88%E7%94%BB%E9%9D%A2.png



# 工夫したポイント
いつでもどこでもスマホ１台で簡単にアウトプットを出来るようにしました。
また、アウトプットした本をすぐに見返せるようにしたことです。


# 課題や今後実装したい機能
近くの本を読める空間をGoogleマップのAPIを導入して検索出来るようにすること。
他人のアウトプットした本を閲覧することを可能にしてそこから気になった本を購入することが可能になる。

 
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
| syuppan                 | integer    | null: false                          |
| read_id                 | string     | null: false                          |
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


