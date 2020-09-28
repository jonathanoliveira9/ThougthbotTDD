require 'rspec/autorun'

class Calculator
  def add(a, b)
    a + b
  end

  def factorial(n)
    if n.zero?
      1
    else
      (1..n).reduce(:*)
    end
  end

  def multiply(a, b)
    a * b
  end
end

describe Calculator do
  describe '#add' do
    it 'return the sum of its two arguments' do
      calc = Calculator.new
      expect(calc.add(5, 10)).to eq(15)
    end
  end

  describe '#multiply' do
    it 'returns 12 given 4 and 3' do
      calc = Calculator.new
      expect(calc.multiply(4, 3)).to eq(12)
    end
  end

  describe '#factorial' do
    it 'returns 1 when given 0' do
     calc = Calculator.new
     expect(calc.factorial(0)).to eq(1)
    end

    it 'returns 120 when given 5' do
      calc = Calculator.new
      expect(calc.factorial(5)).to eql(120)
    end
  end
end
