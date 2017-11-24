# Class for drawing the map
class Map
  attr_reader :map
  def initialize
    @map = (1..10).map { Array.new(10) { |_| '.' } }
  end

  def letter_index(letter)
    letters = ('A'..'J').to_a
    letters.index letter
  end
end
