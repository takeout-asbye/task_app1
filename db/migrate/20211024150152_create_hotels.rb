class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :introduction
      t.bigint :price
      t.string :address
      t.integer :user_id
      t.string :image_id

      t.timestamps
    end
  end
end
