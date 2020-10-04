class Artist
    attr_accessor :name, :genre, :songs

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre1)
        Song.new(name, self, genre1)
    end

    def songs
        Song.all.select {|item| item.artist == self}
    end

    def genres
        genre2 = []
        if Song.all.each do |item|
            item.artist == self
            genre2 << item.genre
            end
        end
        genre2
    end


end