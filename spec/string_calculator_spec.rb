require 'spec_helper'
require 'string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns the number itself for a single number' do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it 'returns the sum of two numbers' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of multiple numbers' do
      expect(StringCalculator.add('1,2,3')).to eq(6)
    end
    
    it 'returns the sum with new lines between numbers' do
      expect(StringCalculator.add('4\n5')).to eq(9) 
    end

    it 'support different delimiters' do
      expect(StringCalculator.add('//;\n1;2')).to eq(3)
    end

    it 'raise and exception with negative numbers' do
      expect{StringCalculator.add('1,-2')}.to raise_error('Negative numbers not allowed: -2')
    end
  end
end