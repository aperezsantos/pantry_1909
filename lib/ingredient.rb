class Ingredient
  attr_reader :name, :unit, :calories

  def initialize(ingredient, measurement_type, calorie_amount)
    @name = ingredient
    @unit = measurement_type
    @calories = calorie_amount
  end

end
