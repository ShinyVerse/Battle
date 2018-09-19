class Player
  attr_reader :name, :hp, :dead

  def initialize(name)
    @name = name
    @hp = 50
    @dead = false
  end

  def update_hp
    @hp -= 10
  end
end
