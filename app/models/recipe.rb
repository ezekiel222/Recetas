class Recipe < ApplicationRecord
  has_many :line_items, inverse_of: :order
  belongs_to :user, required: true
  belongs_to :category, required: true
end
