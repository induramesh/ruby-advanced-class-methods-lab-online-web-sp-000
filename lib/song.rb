class Song
  
  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end 
  
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def self.create
    new_song = Song.new
    new_song.save
    new_song 
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
