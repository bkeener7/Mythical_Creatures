class Werewolf

  attr_reader :name, :location, :human, :wolf, :hungry
  def initialize(name, location = "")
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
  end

  def consume(victim)
    if @human == false
        victim.eaten
        @hungry = false
    else
    end
  end

  def wolf?
    wolf
  end

  def human?
    human
  end

  def hungry?
    hungry
  end

  def change!
    @human = !@human
    @wolf = !@wolf
    @hungry = !@hungry
  end
end

class Victim
  attr_reader :status
  def initialize
    @status = :alive
  end

  def eaten
    @status = :dead
  end
end
