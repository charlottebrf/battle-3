class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @curent_turn = player_1
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

  def switch_turns(current_turn)
  p  @players.select { |player| player != current_turn }
  p  @players.reject { |player| player == current_turn }
  end

end
