class Bear

  attr_reader :name, :type

  def initialize(name,type)
    @name = name
    @type = type
    @food_collection = []
  end

  def get_food_from_river(river)

    fish = river.remove_fish()
    @food_collection << fish if !fish.nil?

  end

  def food_count
    return @food_collection.count
  end

  def roar
    return "ROOOAARrrrr"
  end

end
