require_relative 'map'
require_relative 'battlemap'

first_map = Map.new

arr = first_map.create_map
first_map.draw_map(arr)

battle_map = BattleMap.new.draw_battlemap

put = nil
until put == 'end'
  puts 'Put the coordinates in the form like  A.1'
  put = gets.chomp
  put_arr = put.split('.')
  case put_arr[0].to_s.upcase
  when 'A'
    f_el = 1
  when 'B'
    f_el = 2
  when 'C'
    f_el = 3
  when 'D'
    f_el = 4
  when 'E'
    f_el = 5
  when 'F'
    f_el = 6
  when 'G'
    f_el = 7
  when 'H'
    f_el = 8
  when 'I'
    f_el = 9
  when 'J'
    f_el = 10
  end
  s_el = put_arr[1].to_i
  arr[f_el][s_el] = battle_map[f_el][s_el]
  first_map.draw_map(arr)
end
