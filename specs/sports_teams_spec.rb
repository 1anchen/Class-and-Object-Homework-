require("minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def setup
    @teammate = SportsTeam.new("Tigers", ["David", "Steve", "Sam"], "John",0)
  end

  def test_sports_team_name

      assert_equal("Tigers", @teammate.team_name())
  end

  def test_sports_player_name

      assert_equal(["David", "Steve", "Sam"], @teammate.player_name())
  end

  def test_sports_coach_name

      assert_equal("John", @teammate.coach_name())
  end

  def test_sports_player_name_add

    new_total_number_of_the_team = @teammate.player_add_name("Mike").length
    assert_equal(4, new_total_number_of_the_team)
  end

  def test_sports_player_name_exist__true

    assert_equal(true, @teammate.sports_player_name_exist("Steve"))
  end

  def test_sports_player_name_exist__false

    assert_equal(false, @teammate.sports_player_name_exist("Mike"))
  end

  def test_sports_team_point

    assert_equal(0, @teammate.team_point)
  end


  def test_sports_team_point__win

    team_result = @teammate.team_win_or_lose("win")
    assert_equal(3, team_result)
  end

  def test_sports_team_point__lose

    team_result = @teammate.team_win_or_lose("lose")
    assert_equal(0, team_result)
  end

end
