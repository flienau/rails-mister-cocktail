class Cocktail < ApplicationRecord
  has_attachment :photo
  validates :name, uniqueness: true, presence: true
  has_many :doses, :dependent => :destroy
  has_many :ingredients, through: :doses


end
