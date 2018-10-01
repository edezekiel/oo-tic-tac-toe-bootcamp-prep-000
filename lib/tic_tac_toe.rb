class TicTacToe

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " ", ]

  end

  WIN_COMBINATIONS = [
    [0,1,2], # Top row
    [3,4,5],  # Middle row
    [6,7,8],
    [1,4,7],
    [0,3,6],
    [2,5,8],
    [6,4,2],
    [0,4,8],
  ]
end
