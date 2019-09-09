class Song
  
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.create
    new_song = Song.new
    new_song.save
    new_song 
  end 
  
  def self.new_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    new_song 
  end 
  
  def self.create_by_name(song_name)
    new_song = Song.new
    new_song.name = song_name
    new_song.save
    new_song
  end 
  
  def self.find_by_name(song_name)
    if (self.all.include?(song.name == song_name)

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
