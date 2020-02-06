class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses, dependent: :delete

  validates :name, uniqueness: true
end
