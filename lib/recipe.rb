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

end
