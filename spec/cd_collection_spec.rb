require('rspec')
require('cd_collection')

describe(CDCollection) do
  describe('#all') do
    it('will return all CDs in a newly created collection object') do
      new_cd = CDCollection.new({'Back in Black' => 'ACDC'})
      expect(new_cd.all()).to(eq({'Back in Black' => 'ACDC'}))
    end
  end

  describe('#search_by_album') do
    it('will return a whole album (name and artist) if found in the collection') do
      new_cd_collection = CDCollection.new({'Back in Black' => 'ACDC', 'Physical Graffiti' => 'Led Zeppelin'})
      expect(new_cd_collection.search_by_album('Back in Black')).to(eq(['Back in Black', 'ACDC']))
    end
  end
end
