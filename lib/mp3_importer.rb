class MP3Importer
  def initialize(files)
    names = Dir.entries(files).split(" - ")
    puts names
    

  end 
end