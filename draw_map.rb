# Class for drawing map
class DrawMap
  def initialize(arr)
    @arr = arr
  end

  def draw_map
    @arr.map { |elem| print "#{elem.join(' ')}\n" }
  end
end
