class Dose < ApplicationRecord

  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  #validates_uniqueness_of :dose_id, scope: [:cocktail_id, :ingredient_id ]
  validates :ingredient_id, uniqueness: { scope: :cocktail_id }
end
