# Class for drawing the map
class Map
  attr_reader :map
  def initialize
    @map = read_battlemap
  end

  def bang!(put)
    latitude = letter_index(put.slice!(0))
    longitude = put.to_i - 1
    unless latitude < 10 && longitude < 10
      print "You entered incorrect coordinates\n"
      return
    end
    hit(latitude, longitude)
  end

  private

  def letter_index(letter)
    letters = ('A'..'J').to_a
    letters.index letter.upcase
  end

  def read_battlemap
    map = IO.read('battlemap.txt').split("\n")
    map.map { |e| e.split('') }
  end

  def hit(latitude, longitude)
    a = @map[latitude][longitude]
    if a == 's'
      a = 'x'
    else a = '0'
    end
    @map[latitude][longitude] = a
  end
end
