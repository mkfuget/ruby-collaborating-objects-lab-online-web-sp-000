class MP3Importer
  def initialize(folder)
    names = Dir.entries(folder)
    names = names.select{|x| x.last == "3"} 
    

  end 
end