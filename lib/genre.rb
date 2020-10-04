class Genre

    attr_accessor :name, :genre, :song, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|item| item.genre == self}
    end

    def artists
       artist = []
        if Song.all.each do |item| 
            item.genre == self
            artist << item.artist
            end
        end
        artist
    end

end