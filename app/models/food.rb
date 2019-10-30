class Food < ApplicationRecord
  has_many :healthy_connections, class_name: "Suggestion", foreign_key: "original_food_id"
  has_many :healthy_options, through: :healthy_connections, source: :health_suggestion

  has_many :unhealthy_connections, class_name: "Suggestion", foreign_key: "health_suggestion_id"
  has_many :unhealthy_options, through: :unhealthy_connections, source: :original_food
  has_many :diet_foods
  has_many :diets, through: :diet_foods

  def default_options
    # healthy_connections.where(filter: default_filter).map {|suggestion| suggestion.health_suggestion }
    healthy_options.where("suggestions.filter = ?", default_filter)
  end
end
