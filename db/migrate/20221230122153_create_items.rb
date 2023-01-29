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
      t.string :connection, null: false
      t.string :resolution, null: false
      t.string :polling_rate, null: false
      t.string :size, null: false
      t.string :memory_bus, null: false
      t.string :memory_type, null: false
      t.string :core_clock, null: false
      t.string :memory_clock, null: false
      t.string :monitor_output, null: false
      t.string :chip, null: false
      t.string :response_speed, null: false
      t.string :refresh_rate, null: false
      t.string :input_terminal, null: false
      t.string :key_layout, null: false
      t.string :key_switch, null: false
      t.string :quote_source, null: false
      t.boolean :is_active, null: false, default: true
      
      t.timestamps null: false
    end
  end
end
