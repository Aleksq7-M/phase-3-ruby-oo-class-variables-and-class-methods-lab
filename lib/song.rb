require 'pry'

class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count 
        freq = Hash.new(0)
        @@genres.each {|genre| freq[genre] += 1}
        freq
    end

    def self.artist_count
        freq = Hash.new(0)
        @@artists.each {|artist| freq[artist] += 1}
        freq
    end

    binding.pry
end

single_ladies = Song.new('All the Single Ladies', 'Beyonce', 'Pop')