class Song
  
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    
    song = Song.new(filename.split(" - ")[1]) #creates new song from passed filename by splitting input and returning song name from split [1] array eg drake - nonstop now = nonstop
    
    song.artist = Artist.new(filename.split(" - ")[0]) #defines song artist from passed filename by splitting input and returning artist name from split [0] array eg drake - nonstop now = nonstop.drake
    
    song #return it yo
    
  end

  def artist_name=(name)
    find_artists
    
    
    
    
    
    
     find_artists = self.all.select {|artist| artist.name == name}
    if (matching_artists.length == 0)
      self.artist = Artist.new(name)
    else
      self.artist = matching_artists[0]
    end
  end
  
   def self.find_or_create_by_name(name)
    
    find_artists = self.all.select {|artist| artist.name == name}
    if (find_artists.length == 0)
      Artist.new(name)
    else
      return find_artists[0]
    end
  end

end