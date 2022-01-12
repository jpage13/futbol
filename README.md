# Futbol

Welcome to the README for the Futbol project.

## Project Description


 - We used data from a fictional soccer league to do analysis on team performance given specific season or across multiple seasons.
 - We wanted to see determined statistics such as best and worst performances, best and worst coaches, most and least accurate teams, most and least tackles, etc.
 - Anything of value in terms of gathering information on a team to be able to gauge their performance was tracked and used.
 - The dataset was gathered using CSV files. Since the data set was so large, we broke down the CSV files into smaller ones to test bits of data rather than the entire thing. This helped as we weren't using the entire 5000 plus data points every time we wanted to test our methods.


### Goals

Some of the main goals from this project were:
- Building classes with single responsibilities
- Writing organized legible code using the DRY method
- Using Test Driven Development to help reduce amount of errors and improve code quality
- Designing Object Oriented Solutions to problems
- Practice algorithmic thinking
- Working in a group environment to foster teamwork
- Using Pull Requests to collaborate with multiple partners with comments to mimic a real life work setting

====Directory====

___Class Files___


- calculator.rb        :
- data_collector.rb    :   
- game_team.rb         :
- game_team_tracker.rb :  
- game_tracker.rb      :
- season_tracker.rb    :
- stat_tracker.rb      :
- statistics.rb        :
- team.rb              :
- team_tracker.rb      :

___Spec Files___


- game_spec.rb            : manages the tests for our game class
- league_spec.rb          : manages the tests for our league class
- season_tracker_spec.rb  : manages the tests for our season tracker class
- stattracker_spec.rb     : manages the tests for our stat tracker class
- team_spec.rb            : manages the tests for our team spec class

___Data Files___


- average_goals_by_season.csv : CSV file containing the data for the average goals by season
- game_teams.csv              : CSV file that contains game team data with data such as home or away, coach, etc.
- game_teams_stub.csv         : CSV dummy file created to contain game team data with home or away, coach, shots, goals, etc
- games.csv                   : CSV file containing the data for season, home and away team id, home and away goals, etc.
- games_stub.csv              : CSV dummy file created that contains some data for season, home and away team id, home and away goals, etc.
- games_stub_2.csv            : CSV dummy file created that contains some data for season, home and away team id, home and away goals, etc.
- teams.csv                   : CSV file containing the data for franchise id, team name, stadium, etc.
- teams_stub.csv              : CSV dummy file created to hold some of the data for franchise id, team name, etc.

___Additional Files___

- runner.rb            : runs the project
- README.md            : what you are currently reading, explains the project


___Contributors___

Greg Flaherty || github: gregoryjflaherty

Joe Galvin || github: jwgalvin

Adrian Campos || github: adriancampos29

Jimmy Page || github: jpage13
