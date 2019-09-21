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
    a = filename.split("-")
    song_name = a[0]
    artist_name = a[1]
    song_new = Song.new(song_name)
    song_new.artist = artist_name
    song_new
  end

  def artist_name=(name)
    self.artist.find_or_create_by_name(name)
    self.artist.add_song(self.name)
  end


end
