class Numeric
  def to_roman
    result = ''
    digits = self.to_s.chars.map(&:to_i)

    # handle 1000s
    if digits.length == 4
      result += 'M' * digits.first
    end

    # handle 100s
    if digits.length >= 3
      result = convert_to_roman(digits[-3], 'C', 'D', 'M', result)
    end

    # handle 10s
    if digits.length >= 2
      result = convert_to_roman(digits[-2], 'X', 'L', 'C', result)
    end

    # handle 1s
    result = convert_to_roman(digits[-1], 'I', 'V', 'X', result)
    result
  end

  private

  def convert_to_roman(val, single, mid, upper, result_string)
    if val == 9
      result_string += "#{single}#{upper}"
      val = 0
    elsif val >= 5
      result_string += mid
      val -= 5
    elsif val == 4
      result_string += "#{single}#{mid}"
      val = 0
    end
    result_string += single * val
    result_string
  end
end

module BookKeeping
  VERSION = 2
end
