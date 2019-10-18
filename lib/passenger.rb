class Passenger
  attr_reader :name, :age
  def initialize(hash)
    @name = hash["name"]
    @age = hash["age"]
    @is_driver = false
  end

  def adult?
    @age >= 18 ? true : false
  end 

  def driver?
    @is_driver
  end

  def drive
    @is_driver = true
  end
end