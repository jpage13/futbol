require 'simplecov'
SimpleCov.start
require './lib/team'
require './lib/team_tracker'


RSpec.describe do TeamTracker
  it 'exists' do
    game_path = './data/game_teams_stub.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker).to be_a(TeamTracker)
  end

  it 'tests team info' do
    game_path = './data/game_teams_stub.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expected = {'team_id' => "1",
          'franchise_id' => "23",
          'team_name' =>"Atlanta United",
          'abbreviation' => "ATL",
          'link' => "/api/v1/teams/1"}
    expect(team_tracker.team_info("1")).to eq(expected)
  end

  it 'tests best season' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.season_outcome("6", "best")).to eq("20132014")
  end

  it 'tests worst season' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.season_outcome("6", "worse")).to eq("20142015")
  end

  it 'tests average_win_percentage' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.average_win_percentage("6")).to eq(0.49)
  end

  it 'tests most goals scored' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.goals_scored("18", 'most')).to eq(7)
  end

  it 'tests fewest_goals_scored' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.goals_scored("18", 'fewest')).to eq(0)
  end

  it 'tests favorite opponent' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.opponent_results("18", 'favorite')).to eq("DC United")
  end

  it 'rival' do
    game_path = './data/game_teams.csv'
    locations = {
      games: './data/games.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    team_tracker = TeamTracker.new(locations)
    expect(team_tracker.opponent_results("18", 'rival')).to eq("Houston Dash").or(eq("LA Galaxy"))
  end
end
