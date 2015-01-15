class CD

  attr_reader :album_name, :artist

  define_method(:initialize) do |album_name, artist|
    @album_name = album_name
    @artist = artist
  end

end
