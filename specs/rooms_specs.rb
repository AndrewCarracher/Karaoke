require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'

class TestRooms < MiniTest::Test

  def setup
    @song = "Reach for the stars"
    @room_a = Rooms.new("Room A", 15, 0, [])
  end

  def test_add_song_to_playlist
    assert_equal("added", @room_a.add_song_to_room(@song))
  end

end
