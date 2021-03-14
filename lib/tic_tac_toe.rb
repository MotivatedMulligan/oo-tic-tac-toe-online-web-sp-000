class TicTacToe
 attr_accessor :player, :token, :board

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
  def initialize#(board = nil)
  @board = Array.new(9, " ")#[" "," "," "," "," "," "," "," "," "] #board || Array.new(9, " ")
  end

  def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(input)
  index = input.to_i - 1
  end
  def move(index, play_token = "X")
  @board[index] = play_token
  end
  def position_taken?(index)
    @board[index] !=" "
  end
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end

  def turn_count
  end
  def current_player
  end
  def turn
  end
  def won?
  end
  def full?
  end
  def draw?
  end
  def over?
  end
  def winner
  end


end
