# Class for drawing the map
class Map
  def create_map
    arr = create_first_map
    first_string = 'A'
    arr.map do |elem|
      unless elem == arr[0]
        elem[0] = first_string
        first_string = first_string.next
      end
    end
    arr
  end

  def draw_map(arr)
    arr.map { |elem| print "#{elem.join(' ')}\n" }
  end

  private

  def create_first_map
    arr = []
    11.times do
      arr << Array.new(11) { |_| '.' }
    end
    arr[0] = (1..10).to_a.unshift('.')
    arr
  end
end
