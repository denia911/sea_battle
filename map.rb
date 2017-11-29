# Class for drawing the map
class Map
  attr_reader :map
  def initialize
    @map = bm_read
  end

  def bang!(put)
    f_el = letter_index(put.slice!(0))
    s_el = put.to_i - 1
    unless (0..10).to_a.include?(f_el && s_el)
      print "You entered incorrect coordinates\n"
      return
    end
    hitting(f_el, s_el)
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

  def hitting(f_el, s_el)
    unless @map[f_el][s_el] == 's'
      @map[f_el][s_el] = '0'
      return
    end
    @map[f_el][s_el] = 'x'
  end
end
