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

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end
end
































end
