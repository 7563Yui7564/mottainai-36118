class CreateCreations < ActiveRecord::Migration[6.0]
  def change
    create_table :creations do |t|
      t.string      :title,           null: false
      t.integer     :category_id,     null: false
      t.integer     :cost,            null: false
      t.string      :material,        null: false
      t.string      :tool,            null: false
      t.text        :description,     null: false
      t.text        :trigger,         null: false
      t.references  :user,            null: false, foreign_key:true
      t.timestamps
    end
  end
end
