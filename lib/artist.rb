class Artist

  attr_accessor :name, :songs
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    self.add_song
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if(self.name.nil?)
      Artist.new(name)
    else
      self.all.find {|artist| artist.name == name}
    end
  end

  def print_songs
    self.songs.each {|song| print "#{song.name}\n" }
  end
end
