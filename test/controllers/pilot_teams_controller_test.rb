require "test_helper"

class PilotTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pilot_team = pilot_teams(:one)
  end

  test "should get index" do
    get pilot_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_pilot_team_url
    assert_response :success
  end

  test "should create pilot_team" do
    assert_difference('PilotTeam.count') do
      post pilot_teams_url, params: { pilot_team: { championship_id: @pilot_team.championship_id, pilot_id: @pilot_team.pilot_id, team_id: @pilot_team.team_id } }
    end

    assert_redirected_to pilot_team_url(PilotTeam.last)
  end

  test "should show pilot_team" do
    get pilot_team_url(@pilot_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_pilot_team_url(@pilot_team)
    assert_response :success
  end

  test "should update pilot_team" do
    patch pilot_team_url(@pilot_team), params: { pilot_team: { championship_id: @pilot_team.championship_id, pilot_id: @pilot_team.pilot_id, team_id: @pilot_team.team_id } }
    assert_redirected_to pilot_team_url(@pilot_team)
  end

  test "should destroy pilot_team" do
    assert_difference('PilotTeam.count', -1) do
      delete pilot_team_url(@pilot_team)
    end

    assert_redirected_to pilot_teams_url
  end
end
