class StringCalculator
  def self.add(number)
    return 0 if number.empty?
    return number.to_i if number.length == 1
  end
end
  