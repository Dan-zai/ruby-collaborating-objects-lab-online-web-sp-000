class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  
  
  def self.files
    Dir.entries(path)
  end 
  
  def self.import
  end 
  
  