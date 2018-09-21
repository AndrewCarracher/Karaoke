class Guests

  attr_accessor :guest_name, :favourite_song, :wallet

  def initialize( guest_name, favourite_song, wallet )
    @guest_name = guest_name
    @favourite_song = favourite_song
    @wallet = wallet
  end

  def favourite_song( favourite_song, song_playing )
    return "Wooo!" if @favourite_song == song_playing
  end

  def check_wallet()
    return wallet
  end

  def buy_room(guest, cost_of_room)
    check_wallet
    if wallet - cost_of_room >= 0
      @wallet -= cost_of_room
    else
      return "not enough money"
    end
  end

end
