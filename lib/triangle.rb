class Triangle
  
  class PartnerError < StandardError 
  
  end
  
  attr_accessor :x, :y, :z
  
  def initialize(x, y, z)
    @x = x 
    @y = y 
    @z = z
  end 
  
  def kind 
    triangle? 
    if @x == @y && @y == @x 
      :equilateral 
    elsif @x == @y || @x == @z || @z == @y 
      :isosceles 
    else 
      :scalene 
    end 
  end 
  
  
end
