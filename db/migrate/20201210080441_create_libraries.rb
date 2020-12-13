class CreateLibraries < ActiveRecord::Migration[6.0]
  def change
    create_table :libraries do |t|
      t.string       :title,       null: false
      t.text         :impressions, null: false
      t.integer      :category_id, null: false
      t.text         :lank_id,    null: false
      t.string       :author,     null: false
      t.integer      :syuppan,    null: false
      t.string       :read_id,    null: false
      t.string       :outputs,    null: false
      t.references   :user,       foreign_key: true  
      t.timestamps
    end
  end
end


