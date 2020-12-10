class Book < ApplicationRecord
  has_many :book_users
  has_many :users, through: :book_users

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :lank
  belongs_to_active_hash :read
  belongs_to_active_hash :category

  #空の投稿を保存できないようにする
  validates :title, :impressions, :author, presence: true

#ジャンルの選択が「--」の時は保存できないようにする
    validates :category_id, :lank_id, :read_id, numericality: { other_than: 0,} 
    
 # def change
  #  create_table :books do |t|
   #   t.string :name, null: false
    #  t.timestamps
   # end
  #end
end