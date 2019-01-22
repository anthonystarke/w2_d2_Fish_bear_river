require 'minitest/autorun'
require 'minitest/rg'
require_relative('../river.rb')
require_relative('../fish.rb')

class Minitest::Test

  def setup

    school_of_fish = []

    @fish_1 = Fish.new("Joe")
    school_of_fish << @fish_1

    @fish_2 = Fish.new("Ross")
    school_of_fish << @fish_2

    @fish_3 = Fish.new("Sarah")
    school_of_fish << @fish_3

    @river = River.new("Amazon",school_of_fish)
  end

  def test_river_name
    assert_equal("Amazon",@river.name)
  end

  def test_fish_in_river
    assert_equal(3,@river.fish_count)
  end

  def test_river_remove_fish
    @river.fish_collection.pop()
    assert_equal(2,@river.fish_count)
  end

end
