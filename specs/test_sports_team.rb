require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < Minitest::Test

  def setup
    @team = SportsTeam.new("Tulsa Drillers", ["Mitch", "Rick", "Jim", "Greg"], "Wilkerson")
  end

  def test_get_team_name
    assert_equal("Tulsa Drillers", @team.team_name)
  end

  def test_get_players
    assert_equal(["Mitch", "Rick", "Jim", "Greg"], @team.players)
  end

  def test_get_coach_name
    assert_equal("Wilkerson", @team.coach)
  end

  def test_set_coach_name
    @team.coach = "Stuckey"

    assert_equal("Stuckey", @team.coach)
  end

  def test_add_player
    @team.add_player("Dave")

    assert_equal(5, @team.players.length)
  end

  def test_has_player_true
    assert_equal(true, @team.has_player?("Greg"))
  end

  def test_has_player_false
    assert_equal(false, @team.has_player?("Adam"))
  end

  def test_get_points
    assert_equal(0, @team.points)
  end

  def test_match_update_win
    @team.match_update("win")
    assert_equal(1, @team.points)
  end

  def test_match_update_loss
    @team.match_update("loss")
    assert_equal(0, @team.points)
  end

end
