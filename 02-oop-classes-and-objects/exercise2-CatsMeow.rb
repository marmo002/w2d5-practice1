class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  # methods
  def eats_at
    if @meal_time > 12
      time = @meal_time - 12
      "#{time}PM"
    else
      "#{@meal_time}AM"
    end
  end

  def meow
    "My name is #{@name} and I eat #{@preferred_food.downcase} at #{eats_at}"
  end

end

toby = Cat.new("Toby", "Meat", 9)
marley = Cat.new("Marley", "Sweets", 23)

puts toby.meow
puts marley.meow
