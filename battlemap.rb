require_relative 'map'
# Class for drawing the ships
class BattleMap
  def draw_battlemap
    arr = Map.new.create_map
    arr = arr.map do |line|
      line.map do |elem|
        elem = 0 unless elem != '.'
        elem
      end
    end
    draw_ship(arr)
    arr
  end

  private

  def draw_ship(arr)
    vert = 1
    4.times { vert = one_deck(vert, arr) }
    3.times { vert = two_deck(vert, arr) }
    2.times { vert = three_deck(vert, arr) }
    four_deck(vert, arr)
  end

  def four_deck(vert, arr)
    gorizont = rand(1..7)
    deck = gorizont + 4
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
  end

  def three_deck(vert, arr)
    gorizont = rand(1..8)
    deck = gorizont + 3
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
    vert += 1
    vert
  end

  def two_deck(vert, arr)
    gorizont = rand(1..9)
    deck = gorizont + 2
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
    vert += 1
    vert
  end

  def one_deck(vert, arr)
    gorizont = rand(1..10)
    arr[vert][gorizont] = 'x'
    vert += 1
    vert
  end
end
