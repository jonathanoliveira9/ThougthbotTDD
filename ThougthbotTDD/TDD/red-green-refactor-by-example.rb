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
end

describe Calculator do
  describe '#add' do
    it 'return the sum of its two arguments' do
      calc = Calculator.new
      expect(calc.add(5, 10)).to eq(15)
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