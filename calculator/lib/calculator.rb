class Calculator
  attr_reader       :total

  def initialize(total=0)
    @total        = total
  end
  def add(numbers)
    @total = numbers.reduce(:+)
  end
end   