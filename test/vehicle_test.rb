require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/passenger.rb'
require_relative '../lib/vehicle.rb'

class VehicleTest < Minitest::Test 
  def setup
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
  end

  def test_it_exist
    assert_instance_of Vehicle, @vehicle
  end

  def test_it_has_a_year
    assert_equal "2001", @vehicle.year
  end

  def test_it_has_a_make
    assert_equal "Honda", @vehicle.make
  end

  def test_it_has_a_model
    assert_equal "Civic", @vehicle.model
  end

  def test_start_with_no_passengers
    assert_equal [], @vehicle.passengers
  end

  def test_add_passengers_method
    assert_equal [], @vehicle.passengers

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @vehicle.add_passenger(charlie)
    assert_equal [charlie], @vehicle.passengers

    jude = Passenger.new({"name" => "Jude", "age" => 20})
    @vehicle.add_passenger(jude)
    assert_equal [charlie, jude], @vehicle.passengers
  end

  def test_num_adults_method
    assert_equal 0, @vehicle.num_adults

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @vehicle.add_passenger(charlie)
    assert_equal 1, @vehicle.num_adults

    jude = Passenger.new({"name" => "Jude", "age" => 20})
    @vehicle.add_passenger(jude)
    assert_equal 2, @vehicle.num_adults

    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    @vehicle.add_passenger(taylor)
    assert_equal 2, @vehicle.num_adults

  end

  def test_speeding_question_method
    assert_equal false, @vehicle.speeding?
  end

  def test_speed_method 
    assert_equal false, @vehicle.speeding?
    @vehicle.speed
    assert_equal true, @vehicle.speeding?
  end

end