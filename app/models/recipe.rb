class Recipe < ApplicationRecord
  def self.search(titulo)
  if titulo
    where('titulo LIKE ?', "#{titulo}")
  else
    all
  end
  end
  has_many :line_items, inverse_of: :order
  belongs_to :user, required: true
  belongs_to :category, required: true
  # Favorited by users
  has_many :favorite_recipes # just the 'relationships'
  has_many :favorited_by, through: :favorite_recipes, source: :user # the actual users favoriting a recipe
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  mount_uploader :image, ImageUploader
end
