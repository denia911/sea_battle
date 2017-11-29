require_relative 'map'
require_relative 'map_drawer'

map = Map.new
map_builder = MapDrawer.new(map)
map_builder.draw

put = nil
until put == 'end'
  puts 'Put the coordinates in the form like  A1'
  put = gets.chomp
  map.bang!(put)
  map_builder.draw
end
