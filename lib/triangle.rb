class Triangle
  
  def initialize(length1,length2,length3)
  if  length_valid(length1,length2,length3) && sum_length(length1,length2,length3)
    @length1= length1
    @length2= length2
    @length3= length3
  else
    raise TriangleError
  end
end
def kind
 count=[@length1,@length2,@length3].uniq.length
 if count==3
  :scalene
 elsif count ==2
  :isosceles
 else
  :equilateral
 end
end

  def length_valid(length1,length2, length3)
    if length1 > 0 && length2 >0 && length3 > 0
      return true
    else
      return false
    end 
  end
  
def sum_length(length1,length2,length3)
  if ((length1+length2) > length3 && 
    length2+length3 > length1 &&
    length3+ length1> length2)
    return true
  else
    return false
  end
end

  class TriangleError < StandardError
  end


end
