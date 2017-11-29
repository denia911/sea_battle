require_relative 'map'
require_relative 'draw_map'

arr = Map.new
drawmap = DrawMap.new(arr.map)
drawmap.draw_map

put = nil
until put == 'end'
  puts 'Put the coordinates in the form like  A.1'
  put = gets.chomp
  put_arr = put.split('.')
  arr.beng(put_arr)
  drawmap.draw_map
end
