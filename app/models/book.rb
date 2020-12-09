class Book < ApplicationRecord
  def change
    create_table :books do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
