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
      self.all.select {|song| song.name == song_name}[0]
  end 
  
  def self.find_or_create_by_name(song_name)
    if self.find_by_name(song_name) == false 
      self.create_by_name(song_name)
    else
      self.find_by_name(song_name) 
    end 
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
