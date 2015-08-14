module Game

  def find_winner(human_move)

  end

  def get_computer_move
    move = Random.rand(3)
    if move == 0
      "Rock"
    elsif move == 1
      "Paper"
    elsif move == 2
      "Scissors"
    end
  end

  def compare_moves(human_move)
    computer_move = get_computer_move
    if player_move == computer_move
      :tie
    else
      if player_move == "Rock"
        computer_move == "Scissors" ? :human : :computer
      elsif player_move == "Scissors"
        computer_move == "Paper" ? :human : :computer
      elsif player_move == "Paper"
        computer_move == "Rock" ? :human : :computer
      end
    end
  end
end
