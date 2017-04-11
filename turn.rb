class Turn 
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switch_players
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end
    return @current_player
  end
end
