choice = ""
playerscore = 0
computerscore = 0

VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
VICTORY = {
  "rock" => ["lizard", "scissors"], 
  "paper" => ["rock", "spock"], 
  "scissors" => ["paper", "lizard"], 
  "spock" => ["rock", "scissors"], 
  "lizard" => ["spock", "paper"]
}

def update_string(string)
  if string.downcase.start_with?('r')
    'rock'
  elsif string.downcase.start_with?('p')
    'paper'
  elsif string.downcase.start_with?('sp')
    'spock'
  elsif string.downcase.start_with?('l')
    'lizard'
  elsif string.downcase.start_with?('sc')
    'scissors'
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  VICTORY[first.to_s].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You Win\n")
  elsif win?(computer, player)
    prompt("Computer Wins\n")
  else
    prompt("It's a tie\n")
  end
end

prompt("Welcome to Rock, Paper, Spock, Lizard, Scissors.")
prompt("First to three wins")

loop do
  loop do
    loop do
      prompt("Choose one: rock(r), paper(p), spock(sp), lizard(l), scissors(sc)")
      choice = Kernel.gets().chomp()
      choice = update_string(choice)

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt("That's not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{choice} and the computer chose #{computer_choice}")

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      playerscore += 1
    elsif win?(computer_choice, choice)
      computerscore += 1
    else
    end

    prompt("Your score: #{playerscore}")
    prompt("Computer score: #{computerscore}\n")
    
    if playerscore == 3
      prompt("You are the grandwinner")
      break
    elsif computerscore == 3
      prompt("The computer is the grandwinner")
      break
    end
  end
  prompt("Would you like to play again?")
  again = gets.chomp
  break unless again.downcase().start_with?("y")
  playerscore = 0
  computerscore = 0
end

prompt("Thank you for playing! Goodbye.")
