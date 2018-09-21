require_relative 'songs'

class Rooms

  attr_accessor :room_name, :room_space, :room_occupancy, :song_playing

  def initialize(room_name,room_space, room_occupancy, song_playing)
    @room_name = room_name
    @room_space = room_space
    @room_occupancy = room_occupancy
    @song_playing = song_playing
  end


end
