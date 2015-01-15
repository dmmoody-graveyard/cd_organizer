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
      expect(new_cd.add()).to(eq(new_cd))
    end
  end
end


  # describe('#add') do
    # it('will take album name, artist and save in Class instance variable @@album') do
    #   new_cd = CD.new("Back in Black", "ACDC")
    #   new_cd.add()
    #   expect()
    # end
