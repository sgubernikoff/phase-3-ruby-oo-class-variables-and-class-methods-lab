require 'pry'
class Song

attr_reader :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
end

def self.genres
    @@genres.uniq
end

def self.genre_count 
    genres_count = Hash.new
    @@genres.each do |a|
        if genres_count[a]
            genres_count[a] += 1
        else genres_count[a] = 1
        end
    end
    genres_count
end

def self.artist_count 
    artists_count = Hash.new
    @@artists.each do |a|
        if artists_count[a]
            artists_count[a] += 1
        else artists_count[a] = 1
        end
    end
    artists_count
end

end