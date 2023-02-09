
class Triangle
  # write code here
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    self.s1 = s1
    self.s2 = s2
    self.s3 = s3
  end
  def kind
    if valid_sides?
      if s1==s2 && s2==s3
        :equilateral
      elsif s1==s2 || s1==s3 || s2==s3
        :isosceles
      else s1!=s2 && s1!=s3 && s1!=s3
        :scalene
      end
    end
  end  
    def valid_sides?
      if s1<=0 || s2<=0 || s3<=0 || s1+s2<=s3 || s1+s3<=s2 || s2+s3<=s1
          raise TriangleError 
      else
        true  
      end
    end
      class TriangleError < StandardError
      end
    
end