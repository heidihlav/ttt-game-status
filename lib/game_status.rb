require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]

]

def won?(board)
  WIN_COMBINATIONS.find { 
    |array| board[array[0]] == board[array[1]] && 
    board[array[1]] == board[array[2]] &&
    position_taken?(board, array[1])
  }
end


def full?(board)
  board.none? {|token|
    token ==  " "
  }
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
binding.pry
  # token = won?(board)
  # position_taken?(board, index)

  # token[1]
end

# token = over?(board)
