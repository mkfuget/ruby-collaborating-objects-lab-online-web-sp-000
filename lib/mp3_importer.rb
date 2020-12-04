class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end
  
  def files
    names = Dir.entries(@path)
    return names.select{|x| x.match(/.*3/) != nil}
  end
  
  def import
    files.each do |file_data|
      data = file_data.split(" - ")
      song_name = data[1]
      artist_name = data[0]
      current_artist = Artist.new(artist_name)
      current_song = Song.new(song_name)
      current_artist.add_song(current_song)
    end
  end 
end