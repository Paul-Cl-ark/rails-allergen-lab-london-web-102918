class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :allergens, through: :ingredients

  def ingredient_number
    ingredients.length
  end

  def self.sort_by_ingredient_number
    Recipe.all.sort_by{|r| r.ingredient_number}
  end

end
