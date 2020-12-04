class MP3Importer
  def initialize(folder)
    names = Dir.entries(folder)
    names = names.select{|x| x.match(/.*3/) != nil}
    names.each do |file_data|
      data = file_data.split(" - ")
      song_name = data[1]
      artist_name = data[0]
    

  end 
end