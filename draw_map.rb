# Class for drawing map
class DrawMap
  def initialize(arr)
    @arr = arr
  end

  def draw_map
    print "#{(0..10).to_a.join(' ')}\n"
    s_arr = ('A'..'J').to_a
    count = -1
    f_map = no_shot(@arr)
    f_map.map { |elem| print "#{s_arr[count += 1]} #{elem.join(' ')}\n" }
  end

  def no_shot(arr)
    arr.map do |line|
      line.map do |elem|
        elem = '.' unless elem != 's'
        elem
      end
    end
  end
end
