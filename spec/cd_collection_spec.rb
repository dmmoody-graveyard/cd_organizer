require('rspec')
require('cd_collection')

describe(CDCollection) do
  describe('#all') do
    it('will return all CDs in a newly created collection object') do
      new_cd = CDCollection.new({'Back in Black' => 'ACDC'})
      expect(new_cd.all()).to(eq({'Back in Black' => 'ACDC'}))
    end
  end
end
