# Class for drawing map
class DrawMap
  def initialize(arr)
    @arr = arr
  end

  def draw_map
    print "#{(0..10).to_a.join(' ')}\n"
    s_arr = ('A'..'J').to_a
    count = -1
    @arr.map { |elem| print "#{s_arr[count += 1]} #{elem.join(' ')}\n" }
  end
end
