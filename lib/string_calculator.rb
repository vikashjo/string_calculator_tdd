require 'byebug'
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiter = ','
    if numbers.start_with?('//')
      delimiter, numbers = numbers[2..].split('\n')
    end
    
    nums = numbers.gsub('\n', delimiter).split(delimiter).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
    nums.sum  
  end
end