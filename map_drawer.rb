# Class for drawing map
class MapDrawer
  def initialize(map)
    @map = map.map
  end

  def draw
    print "#{(0..10).to_a.join(' ')}\n"
    map_header = ('A'..'J').to_a
    count = -1
    map_out = no_shot(@map)
    map_out.map { |elem| print "#{map_header[count += 1]} #{elem.join(' ')}\n" }
  end

  private

  def no_shot(map)
    map.map do |longitude|
      longitude.map do |elem|
        elem = '.' unless elem != 's'
        elem
      end
    end
  end
end
