# Class for drawing the map
class Map
  attr_reader :map
  def initialize
    @map = bm_read
  end

  def bang!(put)
    first_elem = letter_index(put.slice!(0))
    second_elem = put.to_i - 1
    unless first_elem < 10 && second_elem < 10
      print "You entered incorrect coordinates\n"
      return
    end
    hit(first_elem, second_elem)
  end

  private

  def letter_index(letter)
    letters = ('A'..'J').to_a
    letters.index letter.upcase
  end

  def bm_read
    arr = IO.read('battlemap.txt').split("\n")
    arr.map { |e| e.split('') }
  end

  def hit(first_elem, second_elem)
    unless @map[first_elem][second_elem] == 's'
      @map[first_elem][second_elem] = '0'
      return
    end
    @map[first_elem][second_elem] = 'x'
  end
end
