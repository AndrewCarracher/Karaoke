require_relative 'rooms'

class KaraokeBar

  attr_accessor :money_in_till, :room_space, :number_of_rooms

  def initialize(money_in_till, number_of_rooms)
    @money_in_till = 1000
    @number_of_rooms = 3

    #(room name, room size, song playing)
    @room_a = Rooms.new("Room A", 15, [])
    @room_b = Rooms.new("Room B", 20, [])
    @room_c = Rooms.new("Room C", 20, [])
  end



end
