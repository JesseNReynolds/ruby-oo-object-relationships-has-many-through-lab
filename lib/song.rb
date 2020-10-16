class Song
    attr_accessor
    attr_reader :name, :artist, :genre
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save
    end

end
