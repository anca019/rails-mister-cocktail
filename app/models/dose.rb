class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true, uniqueness: { scope: [:cocktail],
    message: "There should be a unique dose for a given cocktail/ingredient couple" }
end
