require_relative 'songs'

class Rooms

  attr_accessor :room_name, :room_space, :room_occupancy, :playlist

  def initialize(room_name,room_space, room_occupancy, playlist)
    @room_name = room_name
    @room_space = room_space
    @room_occupancy = room_occupancy
    @playlist = playlist
  end

  def add_song_to_room(song)
    @playlist << song
    return "added"
  end


end
