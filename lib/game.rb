 class Game
   attr_reader :players

   def initialize(player1, player2)
     @players = [player1,player2]
   end

   def game_over?
     players[0].hp <= 0 || players[1].hp <=0
   end

   def attack(index)
     players[index].attacks(players[index-1])
   end
 end
