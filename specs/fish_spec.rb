require 'minitest/autorun'
require 'minitest/rg'
require_relative('../fish.rb')

class Minitest::Test

  def setup
    @fish = Fish.new("Joe")
  end

  def test_fish_name
    assert_equal("Joe",@fish.name)
  end

end
