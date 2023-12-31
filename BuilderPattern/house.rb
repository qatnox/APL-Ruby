# frozen_string_literal: true

require_relative 'concrete_house_builder'
require_relative 'house_director'

class House
  attr_accessor :foundation, :walls, :doors, :windows, :roof

  def initialize
    @foundation = nil
    @walls = []
    @doors = []
    @windows = []
    @roof = nil
  end

  def to_s
    result = "House Elements:\n\n"
    result += "Foundation: #{@foundation}\n"
    result += "Walls: #{@walls}\n"
    result += "Doors: #{@doors}\n"
    result += "Windows: #{@windows}\n"
    result + "Roof: #{@roof}\n"
  end
end

builder = ConcreteHouseBuilder.new
director = HouseDirector.new
director.construct(builder)
house = builder.get_house
puts house.to_s
