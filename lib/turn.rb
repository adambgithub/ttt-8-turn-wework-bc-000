board = [" "," "," "," "," "," "," "," "," "]
  
def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

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
  user_input = gets
  index = input_to_index(user_input)
  if valid_move?(board,index)
    display_board(board)
  else
    turn(board)
  end
end



  