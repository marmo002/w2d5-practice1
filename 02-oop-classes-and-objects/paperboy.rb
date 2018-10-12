class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  # READERS(GETTERS)
  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

  #METHODS
  def quota
    experience / 2 + 50
  end

  def deliver(start_address, end_address)
    no_deliveries = end_address - start_address + 1

    case quota <=> no_deliveries

    when -1
      regular_deliveries = quota * 0.25
      extra_deliveries = (no_deliveries - quota) * 0.50
      @experience += no_deliveries
      @earnings += regular_deliveries + extra_deliveries
    when 0
      @experience += quota
      @earnings += quota * 0.25
    when 1
      @experience += no_deliveries
      @earnings += no_deliveries * 0.25 - 2
    end

  end

  def report
    "I'm #{ name }. I've delivered #{ experience } papers, and I've erned $#{ earnings } so far!"
  end

end

martin = Paperboy.new("Martin")

puts martin.quota
puts
puts martin.deliver(101, 160)
puts
puts martin.earnings
puts
puts martin.report
puts
puts
puts martin.quota
puts
puts martin.deliver(1, 75)
puts
puts martin.earnings
puts
puts martin.report
