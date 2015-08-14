require 'pry'

def return_result(human_choice)
  game_results = {}
  result = find_winner(human_choice)

end

def find_winner(human_choice)
  computer_choice = get_computer_choice
  result = compare_choices(human_choice, computer_choice)
  result
end

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

def compare_choices (human_choice, computer_choice)
  result = nil
  if human_choice == computer_choice
    result = :tie
  else
    if human_choice == "Rock"
      result = computer_choice == "Scissors" ? :human : :computer
    elsif human_choice == "Scissors"
      result = computer_choice == "Paper" ? :human : :computer
    elsif human_choice == "Paper"
      result = computer_choice == "Rock" ? :human : :computer
    end
  end
  result
end

binding.pry
