class Centaur

  attr_reader :name, :breed, :cranky, :standing, :laying
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @tired = 0
    @laying = false
  end

  def shoot
    if
      @cranky == true or @laying == true
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
    if @laying == true
      "NO!"
    elsif
      @tired < 2
      @tired += 1
      "Clop clop clop clop!"
    elsif
      @tired = 2
      @tired += 1
      @cranky = true
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def sleep
    if
      @standing == true
      "NO!"
    else
      @tired = 0
      @cranky = false
    end
  end

  def laying?
    laying
  end

  def cranky?
    cranky
  end

  def standing?
    standing
  end
end
