class Artist
  attr_accessor :name
  @@song_count = 0

  def initialize(name)
    @songs = []
    @name = name
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    song.artist.name = name
    @songs << song
    @@song_count += 1
  end

  def Artist.song_count
    @@song_count
  end

end
