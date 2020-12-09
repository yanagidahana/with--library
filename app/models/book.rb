class Book < ApplicationRecord
  has_many :book_users
  has_many :users, through: :book_users

 # def change
  #  create_table :books do |t|
   #   t.string :name, null: false
    #  t.timestamps
   # end
  #end
end
