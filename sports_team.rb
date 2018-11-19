class Team

  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def can_set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    return @players.push(new_player)
  end

  def check_player(player_to_check)
    @players.include? player_to_check
  end

  def check_for_result(game_result)
    @points += 1 if game_result == "win"
  end

end
