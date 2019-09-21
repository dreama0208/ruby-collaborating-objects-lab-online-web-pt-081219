class Song

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    a = filename.split(" - ")
    artist_name = a[0]
    song_name = a[1]
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)

  end



end
