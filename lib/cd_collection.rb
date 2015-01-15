class CDCollection

  define_method(:initialize) do |collection|
    @collection = collection
  end

  define_method(:all) do
    @collection
  end

  define_method(:search_by_album) do |album_name|
    # @collection.fetch(album_name)
    artist = @collection[album_name]

    [album_name, artist] unless artist.nil?()

  end

end
