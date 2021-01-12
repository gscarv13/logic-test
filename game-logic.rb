class Player
  attr_writer :name
  attr_reader :name

  def initialize(option = 'X')
    @name = ''
    @option = option
  end
end

class Board

  attr_writer :squares
  attr_reader :squares

  def initialize(players)
    @players = players
    @squares = [Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'), Square.new('1'),]
  end

  def print_board
    puts "[ #{@squares[0]} ] [ #{@squares[1]} ] [ #{@squares[2]} ]"
    puts "[ #{@squares[3]} ] [ #{@squares[4]} ] [ #{@squares[5]} ]"
    puts "[ #{@squares[6]} ] [ #{@squares[7]} ] [ #{@squares[8]} ]"
  end

  def change_square(str)
    
    flag = true
    while flag
      if 0 < str.to_i < 9 
      p 'That is not a valid number!'

      else
        index = str.to_i - 1
        @squares[index] = Square.new()
        flag = false
      end
    end
  end
end

class Square
  def initialize(char = nil)
    @char = char
  end

  def to_s
    @char
  end
end
