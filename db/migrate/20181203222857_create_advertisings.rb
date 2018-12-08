class CreateAdvertisings < ActiveRecord::Migration[5.2]
  def change
    create_table :advertisings do |t|
      t.integer :user_id
      t.string :name
      t.string :location
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
