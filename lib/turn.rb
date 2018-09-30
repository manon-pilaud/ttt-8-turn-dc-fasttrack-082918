# code your #valid_move? method here
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
 
def input_to_index(user_input)
    user_input.to_i - 1
end
 
def move(board, index, value = "X")
    board[index] = value
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    return false 
  elsif index > 8 || index< 0
    return nil
  else 
    return true 
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true 
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, value= "X")
    display_board(board)
  else
    turn(board)
  end
end