class Rover

  def initialize(x_coordinate, y_coordinate, direction)
    
    @x_coordinate, @y_coordinate, @direction = x_coordinate, y_coordinate, direction

  end

  # READERS
  def x
    @x_coordinate
  end

  def y
    @y_coordinate
  end

  def d
    @direction
  end

  def current_position
    "#{x} #{y} #{d}"
  end

  # INSTANCE METHODS
  def read_instructions(letter)
    case letter
    when "m"
      move
    when "l"
      turn("l")
    when "r"
      turn("r")
    end
  end

  def move
    case @direction
    when "n"
      @y_coordinate += 1
    when "s"
      @y_coordinate -= 1
    when "w"
      @x_coordinate -= 1
    when "e"
      @x_coordinate += 1
    end
  end

  def check_index(number)
    if number > 3
      0
    elsif number < -4
      3
    else
      number
    end
  end

  def turn(letter)
    points = %w[n e s w]

    e = points.index(@direction)

    if letter == "l"

      @direction = points[ check_index(e - 1) ]

    elsif letter == "r"

      @direction = points[ check_index(e + 1) ]

    end

  end

  def instructions(string)
    string.downcase.chars.each { |letter| read_instructions(letter) }
    current_position
  end


end


m = Rover.new(1, 2, "n")
puts
puts "Start position: #{ m.current_position }"
puts
puts "Final position: #{m.instructions("LMLRMLMLMM")}"
puts
puts "****************************************"
puts
y = Rover.new(3, 3, "e")

puts "Start position: #{ y.current_position }"
puts
puts "Final position: #{ y.instructions("MMRMMRMRRM") }"
