class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).grep(/\S+.mp3/)
  end

  def files

  end

  def import
    Dir
  end
end
