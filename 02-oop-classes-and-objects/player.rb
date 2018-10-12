class Player

  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  # READERS
  def lives
    @lives
  end

  def coins
    @gold_coins
  end

  def health
    @health_points
  end

  #CLASS METHODS
  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1

    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage

    if health < 1
      @lives -= 1
      @health_points = 10
      if @lives < 1
        restart
      end
    end
  end

  def restart
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

end

martin = Player.new

def check(martin)
  puts
  puts "lives: #{martin.lives}"
  puts "coins: #{martin.coins}"
  puts "health: #{martin.health}"
  puts
end


check(martin)

martin.do_battle(2)

check(martin)

martin.do_battle(10)

check(martin)

martin.collect_treasure

check(martin)

martin.do_battle(10)
martin.do_battle(10)
check(martin)
martin.do_battle(10)
martin.do_battle(10)

check(martin)
