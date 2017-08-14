class Numeric
  MAP = {
    hundreds: { single: 'C', mid: 'D', upper: 'M' },
    tens: { single: 'X', mid: 'L', upper: 'C' },
    digits: { single: 'I', mid: 'V', upper: 'X' }
  }.freeze

  def to_roman
    result = ''
    digits = self.to_s.chars.map(&:to_i)

    if digits.length == 4
      result += 'M' * digits.first
    end

    result = convert_to_roman(digits[-3], MAP[:hundreds], result)
    result = convert_to_roman(digits[-2], MAP[:tens], result)
    result = convert_to_roman(digits[-1], MAP[:digits], result)
    result
  end

  private

  def convert_to_roman(val, map, result_string)
    return result_string if val.nil?
    if val == 9
      result_string += "#{map[:single]}#{map[:upper]}"
      val = 0
    elsif val >= 5
      result_string += map[:mid]
      val -= 5
    elsif val == 4
      result_string += "#{map[:single]}#{map[:mid]}"
      val = 0
    end
    result_string += map[:single] * val
    result_string
  end
end

module BookKeeping
  VERSION = 2
end
