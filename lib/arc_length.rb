require_relative 'arc_length/version'

module ArcLength
  class Circle
    def initialize(radius)
      @radius = radius
    end

    def calculate_arc_length(arc_measure)
      (2 * Math::PI * @radius) * (arc_measure.to_f/360)
    end
  end
end