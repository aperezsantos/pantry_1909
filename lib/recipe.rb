class Recipe
  attr_reader :name, :ingredients_required

  def initialize(recipe_name)
    @name = recipe_name
    @ingredients_required = {}
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
  end

  def amount_required(ingredient_requirement)
    @ingredients_required[ingredient_requirement]
  end

  def ingredients
    @ingredients_required.map do |ingredient_object, amount_required|
      ingredient_object
    end
  end

  def total_calories
    ingredients.map do |ingredient|
      ingredient.calories * @ingredients_required[ingredient]
      # require "pry"; binding.pry
    end.sum
  end
end
