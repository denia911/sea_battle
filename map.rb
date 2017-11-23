class Map
  def create_map
  arr = []
  11.times do
    arr << Array.new(11){ |_| '.'}
  end
  arr[0] = (1..10).to_a.unshift('.')
  s = 'A'
  arr.map do |e|
    unless e == arr[0]
      e[0] = s
      s = s.next
    end
  end
    return arr
  end

  def draw_map(arr)
    arr.map{ |e| print "#{e.join(' ')}\n" }
  end
end
