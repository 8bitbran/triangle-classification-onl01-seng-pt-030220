class Triangle
  
  class TriangleError < StandardError 
    def message 
      "An error message"
    end
  end
  
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z
  end 
  
  def kind 
    if @x == @y && @y == @z
      :equilateral 
    elsif @x == @y || @x == @z || @z == @y 
      :isosceles 
    elsif @x != @y && @x != @z && @y != @z 
      :scalene 
    else
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    end 
  end 
  
end
