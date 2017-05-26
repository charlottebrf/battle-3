class Game

  attr_reader :attacker, :defender, :players

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
    change_attacker
  end

  private

  def change_attacker
    @attacker = @players.reverse[0]
  end

end
