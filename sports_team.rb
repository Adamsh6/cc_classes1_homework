# Now we would like you to make a class that represents a sports team.
#
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

class SportsTeam

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, player_array, coach)
    @team_name = team_name
    @players = player_array
    @coach = coach
    @points = 0
  end

  def add_player(player_name)
    @players << player_name
  end

  def has_player?(player_name)
    return @players.include?(player_name)
  end

  def match_update(outcome)
    @points +=1 if outcome == "win"
  end
end
