require_relative 'map'
require_relative 'battlemap'
require_relative 'draw_map'

arr = Map.new
drawmap = DrawMap.new(arr.map)
drawmap.draw_map

battle_map = BattleMap.new

put = nil
until put == 'end'
  puts 'Put the coordinates in the form like  A.1'
  put = gets.chomp
  put_arr = put.split('.')
  f_el = Map.new.letter_index(put_arr[0].to_s.upcase)
  s_el = put_arr[1].to_i - 1
  arr.map[f_el][s_el] = battle_map.map[f_el][s_el]
  drawmap.draw_map
end
