class CreateItems < ActiveRecord::Migration[6.1]
  
  def change
    create_table :items do |t|
      t.integer :genre_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :price, null: false
      t.string :os
      t.string :cpu
      t.string :graphics
      t.string :memory
      t.string :storage
      t.string :connection
      t.string :resolution
      t.string :polling_rate
      t.string :size
      t.string :memory_bus
      t.string :memory_type
      t.string :core_clock
      t.string :memory_clock
      t.string :monitor_output
      t.string :chip
      t.string :response_speed
      t.string :refresh_rate
      t.string :input_terminal
      t.string :key_layout
      t.string :key_switch
      t.text :quote_source, null: false
      t.boolean :is_active, null: false, default: true
      
      t.timestamps null: false
    end
  end
end
