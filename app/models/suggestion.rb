class Suggestion < ApplicationRecord
  enum filter: {SaltSwitch: 1, GlutenSwitch: 2, FatSwitch: 3, EnergySwitch: 4, SugarSwitch:5 }
  enum original_food_id: {Potato_Chips: 1, Chocolate_Cookies: 2, Pasta: 3, Vanilla_Ice_Cream: 4, Chocolate_Cookies: 5 }
  enum health_suggestion_id: {Kale_Chips: 6, Zucchini_Chips: 7, Sweet_Potato_Chips: 8, Baked_Beet_Chips: 9, Oatmeal_Cookies: 10, Almond_Cookies: 11, Buckwheat_Cookies: 12, Granola_Cookies: 13, Chickpea_Pasta: 14, Quinoa_Pasta: 15, Brown_Rice_Pasta: 16, Corn_Pasta: 17, Non_Fat_Frozen_Yogurt: 18, Frozen_Bananas: 19, Coconut_Granita: 20, Almond_Milk_Popsicle: 21, Carrot_Cake: 22, Lemon_Cake: 23, Pumpkin_Cake: 24, Banana_Cake: 25}
  belongs_to :original_food, class_name: "Food" # "bad" food, assumes that there is a original_food_id, return a Food Object
  belongs_to :health_suggestion, class_name: "Food" # "good" food
end
