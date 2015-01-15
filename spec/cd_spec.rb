require('rspec')
require('cd')

describe CD do

  describe('#album_name') do
    it('will take album name, artist as arguments and return album name') do
      new_cd = CD.new("Back in Black", "ACDC")
      expect(new_cd.album_name()).to(eq("Back in Black"))
    end
  end

  describe('#artist') do
    it('will take album name, artist as arguments and return artist') do
      new_cd = CD.new("Back in Black", "ACDC")
      expect(new_cd.artist()).to(eq("ACDC"))
    end
  end

  describe('#add') do
    it('will take album name, artist as arguments and return in Class instance hash') do
      new_cd = CD.new("Back in Black", "ACDC")
      expect(new_cd.add()).to(eq({new_cd.album_name() => new_cd.artist()}))
    end
  end

  describe('.all') do
    it('will show all CDs in cd_collection with album name and artist') do
      new_cd1 = CD.new("Back in Black", "ACDC")
      new_cd1.add()
      new_cd2 = CD.new('Volcano', 'Jimmy Buffet')
      new_cd2.add()
      expect(CD.all()).to(eq({"Back in Black" => "ACDC", "Volcano" => "Jimmy Buffet"}))
    end
  end

  describe('.fetch_cds_by_album_name') do
    it('will return a CD in the CD class collection if found') do
      new_cd1 = CD.new("Back in Black", "ACDC")
      new_cd1.add()
      new_cd2 = CD.new('Volcano', 'Jimmy Buffet')
      new_cd2.add()
      expect(CD.fetch_cds_by_album_name('Volcano')).to(eq({'Volcano' => 'Jimmy Buffet'}))
    end
  end

  describe('.fetch_cds_by_artist') do
    it('will return all CDs in the CD class collection that has artist value if found') do
      new_cd1 = CD.new("Back in Black", "ACDC")
      new_cd1.add()
      new_cd2 = CD.new('Highway to Hell', 'ACDC')
      new_cd2.add()
      expect(CD.fetch_cds_by_artist('ACDC')).to(eq({"Back in Black" => "ACDC", "Highway to Hell" => "ACDC"}))
    end
  end
end


  # describe('#add') do
    # it('will take album name, artist and save in Class instance variable @@album') do
    #   new_cd = CD.new("Back in Black", "ACDC")
    #   new_cd.add()
    #   expect()
    # end
