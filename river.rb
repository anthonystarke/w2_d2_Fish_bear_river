class River

  attr_reader :name
  attr_accessor :fish_collection

  def initialize(name,school_of_fish)
    @name = name
    @fish_collection = school_of_fish
  end

  def fish_count
    return @fish_collection.length()
  end

  def remove_fish()
    @fish_collection.pop
  end

  def get_fish
    @fishes.pop
  end

end
