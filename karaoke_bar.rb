require_relative 'rooms'
require_relative 'guests'

class KaraokeBar

  attr_accessor :money_in_till
  attr_reader :number_of_rooms, :room_cost

  def initialize()
    @money_in_till = 1000
    @number_of_rooms = 3
    @room_cost = 5
  end

  def check_if_room_full(room)
     if room.room_space >= 0 && room.room_occupancy >= 0
       return true
     else
       return false
     end
  end

  def check_number_of_guests_in_room(room)
    return room.room_occupancy
  end

  def check_in_guests(number_of_guests, room, guest)
    if check_if_room_full(room) == true
      customer_buys_room(guest)
      room.room_space -= number_of_guests
      room.room_occupancy += number_of_guests
      check_number_of_guests_in_room(room)
    else
      return "Sorry the room is full"
    end
  end

  def check_out_guests(number_of_guests, room)
    if check_number_of_guests_in_room(room) - number_of_guests < 0
      p "There are less than #{number_of_guests} people in #{room}"
      check_number_of_guests_in_room(room)
    else
      room.room_space += number_of_guests
      room.room_occupancy -= number_of_guests
      check_number_of_guests_in_room(room)
    end
  end

  def check_money_in_till()
    return @money_in_till
  end

  def add_money_to_till(money_to_be_added)
    @money_in_till += money_to_be_added
    check_money_in_till
  end

  def customer_buys_room(guest)
    guest.buy_room(guest.wallet, @room_cost,)
    add_money_to_till(@room_cost)
  end

end
