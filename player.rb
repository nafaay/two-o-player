class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def get_life
    @life
  end

  def reduce_life
    @life -= 1
  end

  def name
    @name
  end

end