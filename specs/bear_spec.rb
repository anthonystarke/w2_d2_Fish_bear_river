require 'minitest/autorun'
require 'minitest/rg'
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class Minitest::Test

  def setup

    school_of_fish = []

    fish_1 = Fish.new("Joe")
    school_of_fish << fish_1

    fish_2 = Fish.new("Ross")
    school_of_fish << fish_2

    fish_3 = Fish.new("Sarah")
    school_of_fish << fish_3

    @river = River.new("Amazon",school_of_fish)

    @bear = Bear.new("Yogi","Grizzly")

  end

  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_type
    assert_equal("Grizzly", @bear.type)
  end

  def test_get_food
    assert_equal(3,@river.fish_count)
    @bear.get_food_from_river(@river)
    assert_equal(2,@river.fish_count)
  end

  def test_food_count
    assert_equal(0,@bear.food_count)
    @bear.get_food_from_river(@river)
    assert_equal(1,@bear.food_count)
  end

  def test_bear_to_roar
    assert_equal("ROOOAARrrrr",@bear.roar)
  end

end
