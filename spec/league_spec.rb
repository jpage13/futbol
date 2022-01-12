require 'simplecov'
SimpleCov.start
require './lib/game_team'
require 'csv'
require './lib/game'
require './lib/game_team_tracker'

RSpec.describe do GameTeamTracker
  it 'exists' do
    game_path = './data/game_teams_stub.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker).to be_a(GameTeamTracker)
  end

  it 'can count teams' do
    game_path = './data/game_teams_stub.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.count_of_teams).to eq(5)
  end

  it 'can tell best offense' do
    game_path = './data/game_teams_stub.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path}
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.offense("best")).to eq("FC Dallas")
  end

  it 'can tell worst offense' do
    game_path = './data/game_teams_stub.csv'
    team_path = './data/teams.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path
    }
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.offense("worst")).to eq("Sporting Kansas City")
  end

  it 'find highest scoring visitor' do
    game_path = './data/game_teams_stub.csv'
    team_path = './data/teams.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path
    }
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.scoring_visitor("best")).to eq("FC Dallas")
  end

  it 'find lowest scoring visitor' do
    game_path = './data/game_teams_stub.csv'
    team_path = './data/teams.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path
    }
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.scoring_visitor("worst")).to eq("Sporting Kansas City")
  end

  it 'find highest scoring home' do
    game_path = './data/game_teams_stub.csv'
    team_path = './data/teams.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path
    }
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.home_scoring("best")).to eq("FC Dallas")
  end

  it 'find lowest scoring home team' do
    game_path = './data/game_teams_stub.csv'
    team_path = './data/teams.csv'
    locations = {
      games: './data/games_stub.csv',
      teams: './data/teams.csv',
      game_teams: game_path
    }
    game_tracker = GameTeamTracker.new(locations)
    expect(game_tracker.home_scoring("worst")).to eq("Sporting Kansas City")
  end
end
