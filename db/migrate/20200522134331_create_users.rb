class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :balance, default: 100
      t.integer :level, default: 0

      t.timestamps
    end
  end
end
