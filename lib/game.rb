class Game

  attr_reader :player_1, :player_2, :attacker, :defender

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacker = player_1
    @defender = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(opponent)
    opponent.receive_damage
    switch_turns
  end

  private

  def switch_turns
    if @attacker == player_1
      @attacker = player_2
      @defender = player_1
    else
      @attacker = player_1
      @defender = player_2
    end
  end

end
