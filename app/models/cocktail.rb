class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo

  include PgSearch::Model
    pg_search_scope :global_search,
      against: :name,
      associated_against: {
        ingredients: :name
      },
      using: {
        tsearch: { prefix: true }
      }
end
