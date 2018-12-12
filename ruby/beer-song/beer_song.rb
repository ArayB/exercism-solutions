# Makes a song about beer.
class BeerSong
  def verse(n)
    return two_verse if n == 2
    return one_verse if n == 1
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
    "#{n} bottles of beer on the wall, " +
      "#{n} bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "#{n - 1} bottles of beer on the wall.\n"
  end

  def two_verse
    "2 bottles of beer on the wall, " +
      "2 bottles of beer.\n" +
      'Take one down and pass it around, ' +
      "1 bottle of beer on the wall.\n"
  end

  def one_verse
    '1 bottle of beer on the wall, ' +
      "1 bottle of beer.\n" +
      'Take it down and pass it around, ' +
      "no more bottles of beer on the wall.\n"
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