class CreateDietFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :diet_foods do |t|
      t.integer :food_id
      t.integer :diet_id

      t.timestamps
    end
  end
end
