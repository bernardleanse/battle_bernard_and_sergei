class Game

  
  def attack(player)
    change_hp(player)
  end

  def change_hp(player)
    player.hp -= 10
  end

end