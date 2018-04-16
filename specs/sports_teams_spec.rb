require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_sports_team_name
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
      assert_equal("Tigers", sports_team.team_name())
  end

  def test_sports_player_name
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
      assert_equal(["David", "Steve", "Sam"], sports_team.player_name())
  end

  def test_sports_coach_name
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
      assert_equal("John", sports_team.coach_name())
  end

  def test_sports_player_name_add
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
    new_total_number_of_the_team = sports_team.player_add_name("Mike").length
    assert_equal(4, new_total_number_of_the_team)
  end

  def test_sports_player_name_exist__true
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
    assert_equal(true, sports_team.sports_player_name_exist("Steve"))
  end

  def test_sports_player_name_exist__false
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
    assert_equal(false, sports_team.sports_player_name_exist("Mike"))
  end

  def test_sports_team_point
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John", 0)
    assert_equal(0, sports_team.team_point)
  end


  def test_sports_team_point__win
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John", 0)
    team_result = sports_team.team_win_or_lose("win")
    assert_equal(3, team_result)
  end

  def test_sports_team_point__lose
    sports_team= SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John", 0)
    team_result = sports_team.team_win_or_lose("lose")
    assert_equal(0, team_result)
  end

end
