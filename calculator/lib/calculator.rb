class Calculator
  attr_reader       :total

  def initialize(total=0)
    @total        = total
  end
  
  def add(numbers)
    @total = numbers.reduce(:+)
  end
  
  def clear
    @total = 0
  end
  
  def subtract(numbers)
    @total = numbers.reduce(numbers[0] * 2) { |x, num| x - num }
  end

end   