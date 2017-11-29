require_relative 'map'
require_relative 'draw_map'

arr = Map.new
map_builder = DrawMap.new(arr.map)
map_builder.draw_map

put = nil
until put == 'end'
  puts 'Put the coordinates in the form like  A1'
  put = gets.chomp
  arr.bang!(put)
  map_builder.draw_map
end
