require 'pry'

class Song
  attr_writer :name, :artist, :genre
  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    @@genre_count_hash = {}
    @@genres.each do |genre|
      if @@genre_count_hash == {}
        @@genre_count_hash[genre] = 1
      elsif @@genre_count_hash.has_key?(genre)
        #increment the value of that key by one
        @@genre_count_hash[genre] += 1
      end
    end
    @@genre_count_hash
  end
end
