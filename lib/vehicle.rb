class Vehicle
  attr_reader :year, :make, :model, :passengers
  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @passengers = []
    @speeding = false
  end

  def add_passenger person
    @passengers << person
  end

  def num_adults
    result = 0
    @passengers.each do |person|
      if person.adult?
        result += 1
      end
    end
    result
  end

  def speeding?
    @speeding
  end

  def speed
    @speeding = true
  end

end