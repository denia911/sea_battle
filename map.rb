# Class for drawing the map
class Map
  attr_reader :map
  def initialize
    @map = (1..10).map { Array.new(10) { |_| '.' } }
    @battlemap = IO.read('battlemap.txt')
  end

  def letter_index(letter)
    letters = ('A'..'J').to_a
    letters.index letter
  end

  def beng(put_arr)
    coordinates(put_arr)
    unless (0..10).to_a.include?(@f_el && @s_el)
      print "You entered incorrect coordinates\n"
      return
    end
    map[@f_el][@s_el] = @battlemap[@f_el * 10 + @s_el + @f_el]
  end

  def coordinates(put_arr)
    @f_el = letter_index(put_arr[0].to_s.upcase)
    @s_el = put_arr[1].to_i - 1
  end
end
