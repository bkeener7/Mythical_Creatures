class Wizard

  attr_reader :name, :bearded, :rested
  def initialize(name, bearded = true, rested = 0)
    @name = name
    @bearded = bearded
    @rested = rested
  end

  def bearded?
    return true if @bearded == true
    false
  end

  def incantation(message)
      "sudo #{message}"
    end

  def rested?
    return true if @rested <= 2
    false
  end

  def cast
    @rested += 1
    "MAGIC MISSLE!"
  end


end
