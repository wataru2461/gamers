class CreateItems < ActiveRecord::Migration[6.1]
  
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.string :os, null: false
      t.string :cpu, null: false
      t.string :graphics, null: false
      t.string :memory, null: false
      t.string :storage, null: false
      t.boolean :is_active, null: false, default: true
      
      t.timestamps null: false
    end
  end
end
