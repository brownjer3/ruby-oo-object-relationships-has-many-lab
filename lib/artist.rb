require 'pry'
class Artist
    attr_accessor :name
    attr_writer :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song_obj)
        song_obj.artist = self
    end

    def add_song_by_name(song_name)
        Song.new(song_name).artist = self
    end

    def self.song_count
        Song.all.count
    end


end