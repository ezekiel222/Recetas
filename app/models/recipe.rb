class Recipe < ApplicationRecord
  has_many :line_items, inverse_of: :order
  belongs_to :user, required: true
  belongs_to :category, required: true
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
