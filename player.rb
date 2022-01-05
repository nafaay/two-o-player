class Player
  attr_reader :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def get_life
    @life
  end

  def name
    @name
  end

end