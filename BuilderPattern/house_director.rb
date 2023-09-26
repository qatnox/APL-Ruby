# frozen_string_literal: true

class HouseDirector
  def construct(builder)
    builder.build_walls
    builder.build_doors
    builder.build_windows
    builder.build_roof
  end
end


