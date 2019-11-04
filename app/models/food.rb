class Food < ApplicationRecord
  enum default_filter: {SaltSwitch: 1, GlutenSwitch: 2, FatSwitch: 3, EnergySwitch: 4, SugarSwitch:5, SaltSwitch: 6, SaltSwitch: 7, SaltSwitch: 8, SaltSwitch: 9, SugarSwitch: 10, SugarSwitch: 11, SugarSwitch: 12, SugarSwitch: 13, GlutenSwitch: 14, GlutenSwitch: 15, GlutenSwitch: 16, GlutenSwitch: 17, FatSwitch: 18, FatSwitch: 19, FatSwitch: 20, FatSwitch: 21, EnergySwitch: 22, EnergySwitch: 23, EnergySwitch: 24, EnergySwitch: 25}
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

  # #def selected_options(filter)
  #   healthy_options.where("suggestions.filter = ?", filter)
  # end
end
