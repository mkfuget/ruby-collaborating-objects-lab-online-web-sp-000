class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end
  
  def initialize(folder)
    names = Dir.entries(folder)
    names = names.select{|x| x.match(/.*3/) != nil}
    names.each do |file_data|
      data = file_data.split(" - ")
      song_name = data[1]
      artist_name = data[0]
      current_artist = Artist.new(artist_name)
      current_song = Song.new(song_name)
      current_artist.add_song(current_song)
    end
  end 
end