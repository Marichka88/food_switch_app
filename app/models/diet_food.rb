class DietFood < ApplicationRecord
  belongs_to :food
  belongs_to :diet 

end
