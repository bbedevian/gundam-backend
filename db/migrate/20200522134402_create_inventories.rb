class CreateInventories < ActiveRecord::Migration[6.0]
  def change
    create_table :inventories do |t|
      t.integer :user_id
      t.integer :item_id
      t.boolean :in_use

      t.timestamps
    end
  end
end
