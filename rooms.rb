require_relative 'songs'

class Rooms

  attr_reader :room_name, :room_name
  attr_accessor :song_playing

  def initialize(room_name,room_space, song_playing )
    @room_name = room_name
    @room_space = room_space
    @song_playing = song_playing
  end

end
