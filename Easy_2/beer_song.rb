class BeerSong
  def verse(num)
    case num
    when 2..100
      multiple_left(num)
    when 1
      one_left(num)
    when 0
      zero_left
    end
  end

  def verses(first_verse, last_verse)
    output = ""
    first_verse.downto(last_verse) do |verse_number|
      output << verse(verse_number) 
      output << "\n" if verse_number > last_verse
    end
    output
  end

  def lyrics
    verses(99, 0)
  end

  def multiple_left(num)
    bottle = num - 1 == 1 ? "bottle" : "bottles"
    string = "#{num} bottles of beer on the wall, #{num} bottles of beer.\n" \
    "Take one down and pass it around, #{num -1} #{bottle} of beer on the wall.\n"
    string
  end

  def one_left(num)
    string = "#{num} bottle of beer on the wall, #{num} bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall." \
    "\n"
    string
  end

  def zero_left
    string = "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    string
  end
end

# BeerSong.new.verses(99, 98)