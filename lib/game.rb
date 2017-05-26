class Game

  attr_reader :attacker, :defender

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacker = @players[0]
    @defender = @players[1]
  end

  def attack(opponent)
    opponent.receive_damage
    switch_turns
  end

  def switch_turns
    @defender = @attacker
    set_attacker
  end

  private

  def set_attacker
    @attacker = @players.reverse[0]
  end

end
