class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string   :title,          null: false
      t.text     :impressions,    null: false
      t.integer  :lank_id,        null: false
      t.integer  :category_id,    null: false
      t.string   :author,         null: false
      t.string   :syuppan,        null: false
      t.integer  :read_id ,       null: false
      t.timestamps
    end
  end
end
