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

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, current_player)
     @board[index] = current_player
   end

   def position_taken?(index)
     @board[index] != " "
   end

   def valid_move?(index)
     index.between?(0,8) && !position_taken?(index)
   end

   def turn_count()
     counter = 0
     @board.each do | mark |
       if mark == "X" || mark == "O"
         counter += 1
       end
     end
     counter
   end

   def current_player
     current = ""
     if turn_count % 2 == 0
       current = "X"
     else
       current = "O"
     end
     current
   end

end
