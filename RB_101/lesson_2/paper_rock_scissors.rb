VALID_CHOICES = ['rock', 'paper', 'scissors', 'Spock', 'lizard']
choice = ""

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  first == "rock" && second == "scissors" ||
    first == "paper" && second == "rock" ||
    first == "scissors" && second == "paper" ||
    

  end

def lose?(first, second)
  second == "rock" && first == "scissors" ||
    second == "paper" && first == "rock" ||
    second == "scissors" && first == "paper"
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win")
  elsif lose?(player, computer)
    prompt("Computer Wins")
  else
    prompt("It's a tie")
  end
end

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice} and the computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Would you like to play again?")
  again = gets.chomp

  break unless again.downcase.include?("y")
end

prompt("Thank you for playing! Goodbye.")
