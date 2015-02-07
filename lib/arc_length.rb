require_relative 'arc_length/version'

module ArcLength
  class Circle
    def initialize(radius)
      @radius = radius
    end

    def circumference
      2 * Math::PI * @radius
    end

    def calculate_arc_length(arc_measure)
      circumference * (arc_measure.to_f/360)
    end
  end
end