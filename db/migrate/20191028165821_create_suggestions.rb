class CreateSuggestions < ActiveRecord::Migration[6.0]
  def change
    create_table :suggestions do |t|
      t.integer :original_food_id
      t.integer :health_suggestion_id
      t.integer :filter

      t.timestamps
    end
  end
end
