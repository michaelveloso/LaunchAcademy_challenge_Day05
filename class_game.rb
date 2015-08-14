require 'pry'

class Game

  attr_reader :player_choice, :computer_choice
  def initialize (player_choice)
    @player_choice = player_choice
    @computer_choice = get_computer_choice
  end

  def winner
    result = compare_choices(player_choice, computer_choice)
    result
  end

  def loser
    result = compare_choices(player_choice, computer_choice)
    if result == :computer
      result = :player
    elsif result == :player
      result = :computer
    end
    result
  end

  def summary
    if winner == :player
      "#{player_choice} beats #{computer_choice}. Player wins!"
    elsif winner == :computer
      "#{computer_choice} beats #{player_choice}. Computer wins!"
    else
      "Tie. Yawn."
    end
  end

  private

  def get_computer_choice
    computer_choice_rand = Random.rand(3)

    if computer_choice_rand == 0
      choice = "Rock"
    elsif computer_choice_rand == 1
      choice = "Scissors"
    elsif computer_choice_rand == 2
      choice = "Paper"
    end
  end

  def compare_choices (player_choice, computer_choice)
    result = nil
    if player_choice == computer_choice
      result = :tie
    else
      if player_choice == "Rock"
        result = computer_choice == "Scissors" ? :player : :computer
      elsif player_choice == "Scissors"
        result = computer_choice == "Paper" ? :player : :computer
      elsif player_choice == "Paper"
        result = computer_choice == "Rock" ? :player : :computer
      end
    end
    result
  end
end
