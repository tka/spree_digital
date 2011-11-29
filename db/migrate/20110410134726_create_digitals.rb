class CreateDigitals < ActiveRecord::Migration
  
  def self.up
    create_table :spree_digitals do |t|
      t.integer :variant_id
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.timestamps
    end
    add_index :spree_digitals, :variant_id

    create_table :spree_digital_links, :force => true do |t|
      t.integer :digital_id
      t.integer :line_item_id
      t.string  :secret
      t.integer :access_counter
      t.timestamps
    end
    add_index :spree_digital_links, :digital_id
    add_index :spree_digital_links, :line_item_id
    add_index :spree_digital_links, :secret
  end

  def self.down
    drop_table :spree_digitals
    drop_table :spree_digital_links
  end
  
end
