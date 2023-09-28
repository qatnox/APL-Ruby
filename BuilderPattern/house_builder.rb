# frozen_string_literal: true

class HouseBuilder
  def build_walls
    raise NotImplementedError, "#{self.class} did not define the method 'build_walls'"
  end

  def build_doors
    raise NotImplementedError, "#{self.class} did not define the method 'build_doors'"
  end

  def build_windows
    raise NotImplementedError, "#{self.class} did not define the method 'build_windows'"
  end

  def build_roof
    raise NotImplementedError, "#{self.class} did not define the method 'build_roof'"
  end

  def get_house
    raise NotImplementedError, "#{self.class} did not define the method 'get_house'"
  end
end

