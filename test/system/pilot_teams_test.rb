require "application_system_test_case"

class PilotTeamsTest < ApplicationSystemTestCase
  setup do
    @pilot_team = pilot_teams(:one)
  end

  test "visiting the index" do
    visit pilot_teams_url
    assert_selector "h1", text: "Pilot Teams"
  end

  test "creating a Pilot team" do
    visit pilot_teams_url
    click_on "New Pilot Team"

    fill_in "Championship", with: @pilot_team.championship_id
    fill_in "Pilot", with: @pilot_team.pilot_id
    fill_in "Team", with: @pilot_team.team_id
    click_on "Create Pilot team"

    assert_text "Pilot team was successfully created"
    click_on "Back"
  end

  test "updating a Pilot team" do
    visit pilot_teams_url
    click_on "Edit", match: :first

    fill_in "Championship", with: @pilot_team.championship_id
    fill_in "Pilot", with: @pilot_team.pilot_id
    fill_in "Team", with: @pilot_team.team_id
    click_on "Update Pilot team"

    assert_text "Pilot team was successfully updated"
    click_on "Back"
  end

  test "destroying a Pilot team" do
    visit pilot_teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pilot team was successfully destroyed"
  end
end
