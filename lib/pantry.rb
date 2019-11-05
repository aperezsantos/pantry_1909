class Pantry
  attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient_name)
    if @stock[ingredient_name]
      ingredient_name
    else
      0
    end
  end

  def restock(ingredient_name, amount)
    @stock[ingredient_name] = amount
    # require "pry"; binding.pry
    # @ingredients_required[ingredient] = amount
  end


end
