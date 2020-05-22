class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :attack_bonus
      t.integer :hp_bonus
      t.integer :price
      t.string :rarity
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
