
class Game
  attr_reader :players, :turn, :winner


  def initialize(player1, player2)
    @players = [player1,player2]
    @turn = 0
    @winner = nil
  end

  def game_over?
    players[0].hp <= 0 || players[1].hp <=0
  end

  def attack(index)
    new_turn
    players[index].attack(players[index-1])
  end

  def new_turn
    p @turn
    @turn = (@turn - 1).abs
  end

  def winner_setter
    players[0].hp > 0 ? players[0].name : players[1].name 
  end

end
