require 'byebug'
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    delimiter = ','
    if numbers.start_with?('//')
      delimiter, numbers = numbers[2..].split('\n')
    end
    
    numbers.gsub('\n', delimiter).split(delimiter).map(&:to_i).sum    
  end
end