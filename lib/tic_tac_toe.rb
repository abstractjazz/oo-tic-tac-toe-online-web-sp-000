class TicTacToe

WIN_COMBINATIONS = [

  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8],

  ]

def initialize
@board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", ]
end


def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(index, character)
  @board[index] = character
end

def position_taken?(index) # code your #position_taken? method here!
  if @board[index] == " " || @board[index] =="" || @board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(index)
  if index.between?(0,8) && !position_taken?(index)
    return true
  end
end

def turn
  puts "Please enter 1-9:"
  the_string_they_put_in = gets.strip
  their_desired_position = input_to_index(the_string_they_put_in)
    if valid_move?(board, their_desired_position)
    move(board, their_desired_position, current_player(board))
    display_board(board)
    else
    turn(board)
    end
end

def turn_count(board)
  move_count = 0
  board.each do |ex_or_o|
  if ex_or_o == "O" || ex_or_o == "X"
      move_count += 1
    end
  end
  move_count
end





























end
