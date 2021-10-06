class Player
  attr_reader :name, :hp
  DEFAULT_HP = 100
  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.change_hp
  end

  def change_hp
    @hp -= 10
  end

end


# p = Player.new('bernard', moves: [:fight, :scratch, ""]) messing round