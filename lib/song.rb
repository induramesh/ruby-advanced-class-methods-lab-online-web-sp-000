class Song
  
  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end 
  
  attr_accessor :name, :artist_name
  
  @@all = []
  
  def create
    save
    self 
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
