# frozen_string_literal: true

require_relative 'house_builder'

class ConcreteHouseBuilder < HouseBuilder
  def initialize
    @house = House.new
  end

  def build_foundation
    @house.foundation = 'Concrete Foundation'
  end

  def build_walls
    @house.walls << 'Brick Wall' << 'Brick Wall' << 'Brick Wall' << 'Brick Wall'
  end

  def build_doors
    @house.doors << 'Metal Door'
  end

  def build_windows
    @house.windows << 'Glass Window' << 'Glass Window' << 'Glass Window' << 'Glass Window'
  end

  def build_roof
    @house.roof = 'Brown Wooden Roof'
  end

  def get_house
    @house
  end
end

