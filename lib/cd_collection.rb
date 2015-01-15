class CDCollection

  define_method(:initialize) do |collection|
    @collection = collection
  end

  define_method(:all) do
    @collection
  end

end
