class Genre
    attr_accessor
    attr_reader :name
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(name)
        @name = name
        save
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        artists_in_genre = []
        Song.all.each do |song|
            if song.genre == self
                artists_in_genre << song.artist
            end
        end
        return artists_in_genre
    end

end
