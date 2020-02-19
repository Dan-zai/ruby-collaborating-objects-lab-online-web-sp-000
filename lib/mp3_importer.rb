class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  
  
  def self.files
    Dir.entries(self.path)
  end 
  
  def self.import
  end 
  
  