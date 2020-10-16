class Artist
    attr_accessor
    attr_reader :name
    attr_writer

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def genres
        # working = []
        # self.songs.each do |song_by_this_artist|
        #    working << song_by_this_artist.genre
        # end
        # return working
        self.songs.map do |song_by_this_artist|
            song_by_this_artist.genre
        end
    end

end
