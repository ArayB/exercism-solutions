# Makes a song about beer.
class BeerSong
  def verse(n)
    return none_verse if n.zero?
    standard_verse(n)
  end

  def verses(start_verse, end_verse)
    start_verse.downto(end_verse).map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def standard_verse(n)
    "#{n} #{container(n)} of beer on the wall, " +
      "#{n} #{container(n)} of beer.\n" +
      "Take #{pronoun(n)} down and pass it around, " +
      "#{quantity(n - 1)} #{container(n - 1)} of beer on the wall.\n"
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end

  def quantity(number)
    if number.zero?
      'no more'
    else
      number.to_s
    end
  end

  def pronoun(number = :FIXME)
    if number == 1
      'it'
    else
      'one'
    end
  end


  def none_verse
    'No more bottles of beer on the wall, ' +
      "no more bottles of beer.\n" +
      'Go to the store and buy some more, ' +
      "99 bottles of beer on the wall.\n"
  end
end

module BookKeeping
  VERSION = 3
end
