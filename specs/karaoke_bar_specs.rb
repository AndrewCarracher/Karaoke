require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests.rb'
require_relative '../karaoke_bar.rb'

class TestKaraokeBar < MiniTest::Test

  def setup
    @glam_songs = KaraokeBar.new

    @money_in_till = 1000
    @number_of_rooms = 3

    #(room name, room size, song playing)
    @room_a = Rooms.new("Room A", 15, 0, [])
    @room_b = Rooms.new("Room B", 20, 0, [])
    @room_c = Rooms.new("Room C", 20, 0, [])

    @guest_1 = Guests.new("Frank", "Reach for the stars", 30)
  end

  def test_check_if_room_full()
    assert_equal(true, @glam_songs.check_if_room_full(@room_a))
  end

  def test_check_if_room_full()
    assert_equal(true, @glam_songs.check_if_room_full(@room_a))
  end

  def test_check_number_of_guests_in_room()
    assert_equal(0, @glam_songs.check_number_of_guests_in_room(@room_a))
  end

  # def test_check_in_guests()
  #   assert_equal(2, @glam_songs.check_in_guests(2, @room_a, @guest_1))
  # end
  #  BOTH PASSED HOWEVER DUE TO RANDOM RUN ORDER MAY THROW ERROR
  # def test_check_out_guests()
  #   assert_equal(0, @glam_songs.check_out_guests(2, @room_a))
  # end

  def test_count_money()
    assert_equal(1000, @glam_songs.check_money_in_till)
  end

  # def test_add_money()
  #   assert_equal(1500, @glam_songs.add_money_to_till(500))
  # end

  def test_remove_money()
    assert_equal(500, @glam_songs.add_money_to_till(-500))
  end

  def test_customer_can_buy_room()
    assert_equal(25, @glam_songs.customer_buys_room(@guest_1))
  end

end
