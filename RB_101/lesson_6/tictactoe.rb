=begin
def join_or

this method adds an or at the end of the display options.
i think it will use two seperate join() methods, the last of which is called on the final element in the array.
it may make more sense to build this one from the ground up using an each_with index with an if gate for when the index value is the final
value. 

def keep_score(player, computer)
  keeps score of games, first player to 5 wins  

computer AI defense, here we update the selection method for the computer, it actively blocks lines where we already have two boxes marked
I think the key to solving this one will be found in the detect_winner method. update the logic so that if two of the array values are 
already selected, it pick the third. 

computer AI offense, reverse the logic, if the computer already has 2 in a row, then if automatically picks the third square. 
  
=end
require "pry"


WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[2, 5, 8], [1, 4, 7], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]
INTIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"

def prompt(message)
  puts ">> #{message}"
end

def display_board(brd, player_score, computer_score)
  system "clear"
  puts "Player: #{player_score}, Computer: #{computer_score}"
  puts "First to 5 wins!"
  puts "You're the #{PLAYER_MARKER}'s. Computer is #{COMPUTER_MARKER}'s."
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

def intialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INTIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INTIAL_MARKER }
end

def joinor(arr, delimeter = ",", conjunct = "or")
  str = ""
  arr.each do |num, index|
    if arr.size == 1
      str = "#{num}"
    elsif num == arr[-1]
      str = str + "#{delimeter} #{conjunct} #{num}"
    elsif num == arr[0]
      str = "#{num}"
    else 
      str = str + "#{delimeter} #{num}"
    end
  end
  str
end

def board_full?(brd)
  empty_squares(brd) == []
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def ai_offense(brd)
  WINNING_LINES.each do |line|
    score = 0
    if brd[line[0]] == COMPUTER_MARKER
      score +=1
    end
    if brd[line[1]] == COMPUTER_MARKER
      score += 1
    end
    if brd[line[2]] == COMPUTER_MARKER
      score += 1
    end
    #binding.pry
    if score == 2
      if brd[line[0]] == INTIAL_MARKER
        brd[line[0]] = COMPUTER_MARKER
        return true
        
      elsif brd[line[1]] == INTIAL_MARKER
        brd[line[1]] = COMPUTER_MARKER
        return true

      elsif brd[line[2]] == INTIAL_MARKER
        brd[line[2]] = COMPUTER_MARKER
        return true
      end
    end
  end
  return false
end

def ai_defense(brd)
  
  WINNING_LINES.each do |line|
    score = 0
    if brd[line[0]] == PLAYER_MARKER
      score +=1
    end
    if brd[line[1]] == PLAYER_MARKER
      score += 1
    end
    if brd[line[2]] == PLAYER_MARKER
      score += 1
    end
    #binding.pry
    if score == 2
      if brd[line[0]] == INTIAL_MARKER
        brd[line[0]] = COMPUTER_MARKER
        return true
        
      elsif brd[line[1]] == INTIAL_MARKER
        brd[line[1]] = COMPUTER_MARKER
        return true

      elsif brd[line[2]] == INTIAL_MARKER
        brd[line[2]] = COMPUTER_MARKER
        return true
      end
    end
  end
  return false
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd[line[0]] == PLAYER_MARKER &&
       brd[line[1]] == PLAYER_MARKER &&
       brd[line[2]] == PLAYER_MARKER
      return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER &&
          brd[line[1]] == COMPUTER_MARKER &&
          brd[line[2]] == COMPUTER_MARKER
      return "Computer"
    end
  end
  nil
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that is not a valid square"
  end

  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  if brd[5] == INTIAL_MARKER
    brd[5] = COMPUTER_MARKER
  elsif ai_offense(brd)
  elsif ai_defense(brd)
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  
  end
end

loop do
  player_score = 0
  computer_score = 0
  loop do
    board = intialize_board
    who = [1,0]
    
      if who.sample == 1
        loop do
          computer_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
          display_board(board, player_score, computer_score)
          prompt "Computer goes first!"

          player_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
        end
          
      else 
        loop do 
          display_board(board, player_score, computer_score)
          prompt "You go first!"
          
          player_places_piece!(board)
          break if someone_won?(board) || board_full?(board)

          computer_places_piece!(board)
          break if someone_won?(board) || board_full?(board)
        end
      end
      
    display_board(board, player_score, computer_score)

    if someone_won?(board)
      prompt "#{detect_winner(board)} won!"
      if detect_winner(board) == "Player"
        player_score += 1
      else 
        computer_score += 1
      end
    else
      prompt "It's a tie"
    end

    if player_score == 5
      prompt "PLAYER REIGNS SUMPREME!"
      break
    elsif computer_score == 5
      prompt "COMPUTER REIGNS SUMPREME!"
      break
    end
  end

  prompt "Do you want to play again?(y or n)"
  ans = gets.chomp
  break unless ans.downcase.start_with?("y")
end

prompt "Thanks for playing!"
