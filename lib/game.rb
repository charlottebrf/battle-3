class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack
    @players[1].receive_damage
    switch_turns
  end

  private

  def switch_turns
    players.reverse!
  end

end
