class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end
  
  
  
  def self.files
    Dir.entries(self.path).select {|file| file.include?("mp3")}
  end 
  
  def self.import
    files.each.do |filename|
      
  end 
  
  