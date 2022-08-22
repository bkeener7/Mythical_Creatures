class Centaur

  attr_reader :name, :breed, :cranky, :standing
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @tired = 0
  end

  def shoot
    if
      @cranky == true
      "NO!"
    elsif
      @tired < 2
      @tired += 1
      "Twang!!!"
    elsif
      @tired = 2
      @tired += 1
      @cranky = true
    end
  end

  def run
    if
      @tired < 2
      @tired += 1
      "Clop clop clop clop!"
    elsif
      @tired = 2
      @tired += 1
      @cranky = true
    end
  end

  def sleep
    if
      @standing == true
      "NO!"
    end
  end

  def cranky?
    # return @cranky = true if @tired >= 3
    cranky
  end

  def standing?
    standing
  end
end
