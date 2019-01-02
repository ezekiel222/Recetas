class Recipe < ApplicationRecord
  has_many :line_items, inverse_of: :order
  belongs_to :user, required: true
  belongs_to :category, required: true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
end
