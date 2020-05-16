class FoodItem < ApplicationRecord
  belongs_to :consumed_list, required: false
end
