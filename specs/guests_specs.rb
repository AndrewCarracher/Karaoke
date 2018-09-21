require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class TestGuests < MiniTest::Test

  def setup
    @guest_1 = Guests.new("Frank", "Reach for the stars", 30)
  end

  def test_faverouite_song
    assert_equal("Wooo!", @guest_1.favourite_song( "Reach for the stars", "Reach for the stars" ) )
  end

end
