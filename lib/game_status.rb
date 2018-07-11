# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  #Vertical Wins
  [0,1,2],
  [3,4,5],
  [6,7,8],
  #Horizontal Wins
  [0,3,6],
  [1,4,7],
  [2,5,8],
  #Diagonal Wins
  [0,4,8],
  [2,4,6]
]

def won(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]


    if board[win_index_1] == "X" &&  board[win_index_2]  == "X" &&  board[win_index_3]  == "X"
      win_combination
    else
      false
    end
  end
end
