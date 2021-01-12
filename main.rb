require_relative 'game-logic'

# setup

  player1 = Player.new('X')
  player2 = Player.new('Y')

# Printing

# Welcome
puts ' --------------------------------------------------------------- '
puts ' ==============  Welcome to the TicTacToe !  =================== '
puts " Who's going to be the X ? (Please insert a nickname)"
player1.name = gets.chomp
puts 'player 1 is ' + player1.name
puts " Who's going to be the O ? (Please insert a nickname)"
player2.name = gets.chomp
puts 'player 2 is ' + player2.name
puts ' --------------------------------------------------------------- '

puts "Let's begin!"
# Start the game loop
board = Board.new

puts board.print_board

puts ' Player X <input nick> pick your move '
board.squares[gets.chomp.to_i - 1] 

puts board.print_board

puts ' Player O <input nick> pick your move '
board.squares[gets.chomp.to_i - 1] 

puts board.print_board

# Results!
puts ' ====================  The result is...  ======================== '
puts board.print_board

puts 'Congratulations! Player <input nick> is the Winner!'
puts 'Play again?'

gets.chomp

system "clear"
