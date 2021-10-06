class Player
  attr_reader :name, :hp
  DEAFULT_HP = 100
  def initialize(name, hp = DEAFULT_HP)
    @name = name
    @hp = hp
  end
end


# p = Player.new('bernard', moves: [:fight, :scratch, ""]) messing round