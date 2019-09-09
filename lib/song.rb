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
    self.all.select {|song| song.name == song_name}
  end 
  
  def self.find_or_create_by_name(song_name)
    res = find_by_name(song_name) 
    if res == nil 
      self.create_by_name(song_name)
    else
      res 
    end 
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
