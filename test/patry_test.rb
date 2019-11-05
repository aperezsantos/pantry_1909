require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'
require './lib/recipe'
require './lib/ingredient'

class PantryTest < Minitest::Test

  def setup
    @pantry = Pantry.new
    @cheese = Ingredient.new("Cheese", "C", 50)
    @mac = Ingredient.new("Macaroni", "oz", 200)
    @mac_and_cheese = Recipe.new("Mac and Cheese")
  end

  def test_it_exists

    assert_instance_of Pantry, @pantry
  end

  def test_it_starts_with_nothing
    expected = {}
    assert_equal expected, @pantry.stock
  end

  def test_it_can_check_stock

    assert_equal 0, @pantry.stock_check(@cheese)
  end

  def test_it_can_restock_ingredients
      @pantry.restock(@cheese, 5)
      @pantry.restock(@cheese, 10)

    assert_equal 15, @pantry.stock_check(@cheese)
  end
end
