class Recipe < ApplicationRecord
  belongs_to :usuario
  belongs_to :category
end
