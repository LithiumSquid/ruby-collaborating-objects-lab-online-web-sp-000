class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").collect{|file| file.gsub("#{@path}/", "")}
  end
  
  def import
    self.files.each{|x| Song.new_by_filename(x)}
  end
  
end