class Dragon

  attr_reader :name, :color, :rider
  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = 0
  end

  def eat
    @hungry += 1
  end

  def hungry?
    return true if @hungry <= 2
    false
  end

end
