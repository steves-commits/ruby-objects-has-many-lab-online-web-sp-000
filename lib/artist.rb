class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end
  
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@song_count += 1 
  end 
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song 
    song.artist = self 
    @@song_count += 1 
  end 
  
  def self.song_count
    @@song_count
  end 
end
