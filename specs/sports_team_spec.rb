require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TeamTest < MiniTest::Test

  def setup()
    @team = Team.new("Philly Warriors", ["Dee", "Mac", "Dennis"], "Frank", 0)
  end

  def test_team_has_name
    team_name = @team.team_name()
    assert_equal("Philly Warriors", team_name)
  end

  def test_team_has_players
    players = @team.players()
    assert_equal(["Dee", "Mac", "Dennis"], players)
  end

  def test_team_has_coach
    coach = @team.coach()
    assert_equal("Frank", coach)
  end

  def test_can_set_coach
    @team.coach = "Charlie"
    coach = @team.coach()
    assert_equal("Charlie", coach)
  end

  def test_add_new_player
    players = @team.add_new_player("Gail")
    assert_equal(["Dee", "Mac", "Dennis", "Gail"], players)
  end

  def test_check_player
    result = @team.check_player("Mac")
    assert_equal(true, result)
  end

  def test_check_for_result
    result = @team.check_for_result("win")
    assert_equal(1, result)
  end


end
