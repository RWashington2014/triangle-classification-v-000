class Triangle
  attr_accessor :side_1, :side_2, :side_3

    def initialize(side_1, side_2, side_3)
      @side_1 = side_1
      @side_2 = side_2
      @side_3 = side_3
    end

    def kind
      if !self.is_triangle?(side_1, side_2, side_3)
        raise TriangleError
      elsif self.side_1 != self.side_2 && self.side_1 != self.side_3 && self.side_2 != self.side_3
        :scalene
      elsif self.side_1 == self.side_2 && self.side_1 == self.side_3
        :equilateral
      else
        :isosceles
      end
    end
    
    def is_triangle?(a,b,c)
      sorted = [a,b,c].sort
      greatest_side = sorted.pop
      greatest_side < sorted.sum
    end
end # => End Triangle class

class TriangleError < StandardError

end
