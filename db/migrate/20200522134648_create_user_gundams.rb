class CreateUserGundams < ActiveRecord::Migration[6.0]
  def change
    create_table :user_gundams do |t|
      t.integer :user_id
      t.integer :gundam_id
      t.integer :slot1
      t.integer :slot2
      t.integer :slot3
      t.integer :slot4

      t.timestamps
    end
  end
end
