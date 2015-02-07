require_relative 'arc_length/version'

module ArcLength
  class Circle

    def initialize(radius)
      @radius = radius
    end

    def calculate_arc_length(arc_measure)
      begin
        circumference * (arc_measure.to_f/360)
      end
    rescue TypeError
      raise ArgumentError
    end

    private
    def circumference
      2 * Math::PI * @radius
    end

  end
end