class MP3Importer
  def initialize(folder)
    names = Dir.entries(folder)
    names = names.select{|x| x.match(/.*3/) != nil}
    puts names
    

  end 
end