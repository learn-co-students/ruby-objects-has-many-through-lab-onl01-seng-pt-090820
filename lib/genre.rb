require 'pry'

class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all do |song|
      song.genre == self
    end
  end

  def artists
    Artist.all.select do |artist|
      artist.genres.select do |genre|
        genre == self
      end
    end
  end




    #musician = songs.select do |song|
      #song.artist
  #end
  #binding.pry


end
