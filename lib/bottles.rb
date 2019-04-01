class Bottles
  attr_reader :song
 @bottles = (1..99).to_a

  def self.verse(number)
    current = number
    next_bottle = number >= 2 ? (number - 1) : "no more"
      verse = ""
      if current >= 3
        verse += "#{current} bottles of beer on the wall, #{current} bottles of beer.\nTake one down and pass it around, #{next_bottle} bottles of beer on the wall."
      end
      if current == 2
        verse  += "#{current} bottles of beer on the wall, #{current} bottles of beer.\nTake one down and pass it around, #{next_bottle} bottle of beer on the wall."
      end
      if current == 1
        verse += "#{current} bottle of beer on the wall, #{current} bottle of beer.\nTake one down and pass it around, #{next_bottle} bottles of beer on the wall."
      end

      return verse
  end

  def self.song
    song = []
    @bottles.reverse.each do |bottle|
      song << verse(bottle)
    end
    return song
  end
end

puts Bottles.verse(98)