
class Game
  attr_reader :players, :turn

  def initialize(player1, player2)
    @players = [player1,player2]
    @turn = rand(0..1)
  end

  def game_over?
    players[0].hp <= 0 || players[1].hp <=0
  end

  def attack(index)
    players[index].attack(players[index-1])
    new_turn
  end

  def new_turn
    p @turn
    @turn = (@turn - 1).abs
  end
end
