require_relative 'map'
# Class for drawing the ships
class BattleMap
  attr_reader :map
  def initialize
    @map = (1..10).map { Array.new(10) { |_| 0 } }
    draw_ship(@map)
  end

  private

  def draw_ship(arr)
    vert = 0
    4.times { vert = one_deck(vert, arr) }
    3.times { vert = two_deck(vert, arr) }
    2.times { vert = three_deck(vert, arr) }
    four_deck(vert, arr)
  end

  def four_deck(vert, arr)
    gorizont = rand(0..6)
    deck = gorizont + 4
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
  end

  def three_deck(vert, arr)
    gorizont = rand(0..7)
    deck = gorizont + 3
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
    vert += 1
    vert
  end

  def two_deck(vert, arr)
    gorizont = rand(0..8)
    deck = gorizont + 2
    until deck == gorizont
      arr[vert][gorizont] = 'x'
      gorizont += 1
    end
    vert += 1
    vert
  end

  def one_deck(vert, arr)
    gorizont = rand(0..9)
    arr[vert][gorizont] = 'x'
    vert += 1
    vert
  end
end
