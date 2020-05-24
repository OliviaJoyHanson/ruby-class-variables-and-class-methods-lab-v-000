class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist if !@@artists.include?(@artist)
    @@genres << @genre if !@@genres.include?(@genre)
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists
  end

  def self.artist_count
    @@artists.count
  end

  def self.genres
    @@genres
  end

  def self.genre_count
    @@genres.count
  end


end
