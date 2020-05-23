class CreateGundams < ActiveRecord::Migration[6.0]
  def change
    create_table :gundams do |t|
      t.string :name
      t.integer :attack
      t.integer :hp
      t.string :img_url
      t.string :rarity
      t.string :description

      t.timestamps
    end
  end
end
