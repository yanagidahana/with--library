class CreateOutputs < ActiveRecord::Migration[6.0]
  def change
    create_table :outputs do |t|
      t.string  :content
      t.references :library, foreign_key: true
      t.references :user, foreign_key: true  
      t.timestamps
    end
  end
end

