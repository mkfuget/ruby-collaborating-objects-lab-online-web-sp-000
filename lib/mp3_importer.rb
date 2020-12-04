class MP3Importer
  def initialize(folder)
    names = Dir.entries(folder)
    names = names.select{|x| x ~= /.*3/}
    puts names
    

  end 
end