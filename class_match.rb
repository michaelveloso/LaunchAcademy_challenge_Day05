class Match

  def initialize
    @player_wins = 0
    @computer_wins = 0
    @wins_needed = 2
  end

  def player_won
    @player_wins += 1
  end

  def computer_won
    @computer_wins += 1
  end

  def winner?
    if @player_wins == @wins_needed
      return :player
    elsif @computer_wins == @wins_needed
      return :computer
    end
    :none
  end

  def print_score
    score_string = ""
    score_string << "<b>Player    Score</b><br>"
    score_string <<    "Human:    #{@player_wins}<br>"
    score_string <<    "Computer: #{@computer_wins}<br>"
    score_string
  end


end
