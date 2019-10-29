class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :stars
      t.integer :energy
      t.decimal :fat
      t.decimal :saturated_fat
      t.decimal :sugar
      t.integer :sodium
      t.integer :default_filter

      t.timestamps
    end
  end
end
