class CD

  @@cd_collection = {}
  attr_reader :album_name, :artist

  define_method(:initialize) do |album_name, artist|
    @album_name = album_name
    @artist = artist
  end

  define_method(:add) do
    @@cd_collection[@album_name] = @artist
    @@cd_collection
  end

end
