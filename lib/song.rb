class Song
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize
    @name = name
    @artist = artist
    @genre = genre
    @all << self
  end
  
end