class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes
  # Favorite recipes of user
  has_many :favorite_recipes # just the 'relationships'
  has_many :favorites, through: :favorite_recipes, source: :recipe # the actual recipes a user favorites
end
