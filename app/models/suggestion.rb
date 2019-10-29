class Suggestion < ApplicationRecord
  belongs_to :original_food, class_name: "Food" # "bad" food, assumes that there is a original_food_id, return a Food Object
  belongs_to :health_suggestion, class_name: "Food" # "good" food
end
