board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

user_input = "1" or "2" or "3" or "4" or "5" or "6" or "7" or "8" or "9"

def input_to_index(user_input)
  converted_input = user_input.to_i - 1 
end

def move(board, converted_input, value = "X")
  board[converted_input] = value
end

def position_taken?(board,index)
   if board[index] == " " or board[index] == "" or board[index] == nil
    false
  elsif board[index] == "X" or board[index] == "O"
    true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index)
    false
  elsif index <0 or index >8
    false
  else
    true
  end
end

def turn(board) 
  puts "Please enter 1-9:"
  gets user_input
  input_to_index(user_input)
  valid_move?(board,index)
  if false
    "plese inpur again"
  end
end
  