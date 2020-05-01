class Game
  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def attack(player)
    player.recieve_damage
  end

  def switch_turns
   @current_turn == @player_2 ? @current_turn = @player_1 :
                                @current_turn = @player_2
 end 

 def opposing_player
   @current_turn == @player_1 ? @player_2 : @player_1
 end
end
