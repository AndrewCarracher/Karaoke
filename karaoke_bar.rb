class KaraokeBar

  attr_accessor :money_in_till, :room_space, :number_of_rooms

  def initialize(money_in_till, room_space, number_of_rooms)
    @money_in_till = money_in_till
    @room_space = room_space
    @number_of_rooms = number_of_rooms
  end

end
