require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/passenger.rb'

class PassengerTest < Minitest::Test 
  def setup
    @passenger = Passenger.new({"name" => "Charlie", "age" => 18})
  end

  def test_it_exist
    assert_instance_of Passenger, @passenger
  end

  def test_has_a_name
    assert_equal "Charlie", @passenger.name
  end

  def test_has_an_age
    assert_equal 18, @passenger.age
  end

  def test_adult_method
    assert_equal true, @passenger.adult?

    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    assert_equal false, taylor.adult?
  end

  def test_driver_question_method 
    assert_equal false, @passenger.driver?
  end

  def test_drive_method
    assert_equal false, @passenger.driver?
    @passenger.drive
    assert_equal true, @passenger.driver?
  end
end