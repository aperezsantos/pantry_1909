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

  

end
