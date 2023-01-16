class Triangle
  # write code here

  attr_reader = :x, :y, :z  ##why does this throw an error when the variable /= "@"

  def initialize(x, y, z)
    @x = x 
    @y = y
    @z = z 
  end 

  def kind
    validate_triangle
    if @x == @y && @y == @z 
      :equilateral
    elsif @x != @y && @y != @z && @x != @z
      :scalene
    elsif @x == @y || @y ==@z || @x == @z
      :isosceles
    end 
    # :equilateral
    # :isosceles
    # :scalene
  end

  def greater_than_zero? ## ? since we're checking 
    @x>0 && @y>0 && @z>0
  end 

  def triangle_sum_rule? 
    @x+@y>@z && @y+@z>@x && @x+@z>@y 
  end 

  def validate_triangle 
    raise TriangleError unless greater_than_zero? && triangle_sum_rule?
  end

  class TriangleError < StandardError
  end 

end
